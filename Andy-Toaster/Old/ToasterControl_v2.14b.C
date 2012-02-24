/*	original code
    4-26-05
    Copyright Spark Fun Electronics© 2005
    Nathan Seidle 
    spark@sparkfun.com

	Version 1.01 of code:
	Copyright Kit Ryan ©2008
	Kit Ryan
	jc.ryan@verizon.net

	Version 2.1 of code:
	Copyright Andy Goss ©2011
	Andy Goss 12/29/2011
	andy@pcindiana.com
*/
/* 
   This version 2.12b of the code starts automatically with Program 1 selected, 
   requiring the user to only press the CS1 button to start the program.
   Program 1 is setup to reflow sn96.5-Ag3-Cu0.5 lead-free solder paste
*/

/*
	This program was essentially completely rewritten by Kit Ryan at version 1.01 
	and greatly expanded from the original Spark Fun model software.
*/
//#pragma CLOCK_FREQ 8000000 - this statement replaced with osccon statement at beginning of Main()  Put back if using boot loader.

//#define Baud_9600

#include <boostc.h>		// misc functions, such as MAKESHORT, etc.  Included via <system.h>
#include <PIC16F88.h> 	// SourceBoost device hardware map

//####need following statement if boot loader is not used. Otherwise, boot loader sets config bits********
#pragma DATA _CONFIG1, _CP_OFF & _INTRC_IO & _CCP1_RB0 & _DEBUG_OFF & _WRT_PROTECT_OFF & _CPD_OFF & _WDT_OFF & _PWRTE_ON & _LVP_OFF & _BODEN_OFF
#pragma DATA _EEPROM, 	0x00,0x78,0x00,0x8C,0x00,0x78,0x00,0xE6,0x00,0x5A,0x00,0xB4,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
						0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
						0x00,0x0F,0x00,0x28,0x00,0x5A,0x00,0x96,0x00,0x5A,0x00,0xB4,0x00,0x1E,0x00,0xD7,0x00,0x3C,0x00,0x96,
						0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
						0x14,0x01,0x01,0x04,0x04,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00;
						//These locations are for Programmed time/temp values.  0-9 (10 total) steps x 2 integers each (2 bytes/int) for time
						//and temp = 40 bytes per program x 2 = 80 bytes (locations 0 - 79).  
						//
						//Program 1 is for Sn96.5Ag3Cu0.5 Solder Paste
						//Program 1 steps 0-4 are third line
						//Step0:120seconds@140C,Step1:120seconds@230C,Step2:90seconds@180C,Step3:0seconds@0C,Step4:0seconds@0C
						//Program 1 steps 5-9 are fourth line
						//Step5:0seconds@0C,Step6:0seconds@0C,Step7:0seconds@0C,Step8:0seconds@0C,Step9:0seconds@0C
						//
						//Program 2 is for Sn63Pb37 or Sn62Pb36Ag02 Solder Paste
						//Program 2 steps 0-4 are first line
						//Step0:240seconds@240C,Step1:90seconds@150C,Step2:90seconds@180C,Step3:30seconds@215C,Step4:60seconds@150C
						//Program 2 steps 5-9 are second line
						//Step5:0seconds@0C,Step6:0seconds@0C,Step7:0seconds@0C,Step8:0seconds@0C,Step9:0seconds@0C
						//	
						//Following that on the fifth line, are the stored 'settings' variables which can be changed using Setup or Calibrate functions:
						//	80 = (1 byte) tc (time constant of the oven heating cycle in seconds.  Default = 20s)
						//  81 = (1 byte) temp_units on display (F or C - default: C = 0x01)
						//  82 = (1 byte) relay_LED  (on or off with relay activation. Default = ON = 0x01)
						//	83 = (1 byte) t_inc (adjusts the step rate for speed_button from 1 to 10 second/degree steps. Default = 5)
						//	84 = (1 byte) clock_cal  (adjust the master INTRC clock around 8MHz +/- 2% (the room temp accuracy range) Default = 5)



#define STATUS_LED      portb.3

#define BUTTON_UP       portb.0
#define BUTTON_DOWN     portb.1
#define BUTTON_SELECT   portb.7

#define RELAY           portb.4
#define go				adcon0.2	//set A/D conversion start bit.
#define OFF 0
#define ON  1
#define TRUE 1
#define FALSE 0

#define D7              porta.3		//Data pin 7 on LCD (write)/ also LCD busy indicator (read).
#define D6              porta.2		//Data pin 6 on LCD
#define D5              porta.1		//Data pin 5 on LCD
#define D4              porta.0		//Data pin 4 on LCD
#define LCD_E               porta.7   //operation enable (read/write) signal (strobe)
#define LCD_R_W             porta.6   //read / write select
#define LCD_RS              portb.6   //register select

#define     CLR_DISP        0b00000001 //Clear display
#define     CUR_HOME        0b00000010    //Move cursor home and clear screen memory
#define     DISP_ON         0b00001100    //Turn visible LCD on.  Also will turn off cursor and blinking.
#define     SET_CURSOR      0b10000000    //SET_CURSOR + X : Sets cursor position to X
#define		CUR_BLNK_ON		0b00001111		//turn on cursor and blinking
#define BR_CONST  51


//Global Variables
//============================

//unsigned char a;	//misc variables
unsigned char m_seconds, eeaddress, err_num=0; //
unsigned int total_seconds, display_seconds, step_seconds, a_temp1=0, a_temp2=0; //total = elapsed time; step = for each step.
signed int tot_err=0, proj_actual=0, proj_temp=0;	//these could be over +/- 128.
signed int  proj_err; //projected temp error at tc/2 seconds in the future (which is based on slope)
unsigned int step_time, step_temp, prev_step_temp, set_temp=0;  
unsigned char W_TEMP;  //need to keep these global so they don't get lost during interrupts
unsigned long actual_temp;	//actual temperature in either C or F units
unsigned char STATUS_TEMP, step_number; 
unsigned char PCLATH_TEMP, temp;  //'temp' is a generic variable used locally but declared just once
unsigned char timer_on = FALSE, temp_on = FALSE, relay_on = FALSE; //Timer and temp updates are off to start
unsigned char eeaddoffset;		//Address offset is set to either 0 (for program 1) or 40 (decimal) for program 2.  This value 
							//is the offset for the stored program data in EEPROM and makes addressing faster.
unsigned char cur_pos;		//cursor position across top row of display.  Selected position to change
unsigned char digit_100, digit_10, digit_1;			//first, second and third digits in either time or temp display
unsigned char choice, e_data, e_address, button_push, button_release, long_push;
unsigned int  two_second_timer=0;
unsigned char update_flag=FALSE, menu_index=0, state, prev_state, step, mode, prev_mode, calmode, set_mode, timer_int = FALSE;
unsigned char temp_units, time_units, relay_LED, t_inc, clock_cal, tc;  //these are Setup-related variables stored in EEPROM. 
											//tc is the time constant for the oven (in secs).  How long it takes the coils to get hot.

//============================
//End Global Variables

//Interrupt Vectors
//============================
//Interrupt register save handler


//============================

//Function definitions
//============================

void delay_ms(unsigned int x);
void init_lcd(void);
void LCD_wait(void);
void boot_up(void);
void send_cmd(unsigned char d, unsigned char cmd);	//sends a byte of either command or data to the LCD
void printf_lcd(const char *nate);						//print a string to the display
unsigned char onboard_eeread(unsigned char e_address);				//read byte from eeprom
void onboard_eewrite(unsigned char e_data, unsigned char e_address); //write byte to eeprom
unsigned char mod_digit (unsigned char value, unsigned char direction);
unsigned int get_temp (void);								//read thermocouple
void put_edata (unsigned char e_address, unsigned int value);		//write integer to eeprom
unsigned int get_edata (unsigned char e_address);					//read integer from eeprom
void update_display (unsigned int value, unsigned char location);	//converts and displays a 3-digit number for temp or time display on top row of LCD
unsigned int speed_button (unsigned int value, unsigned char direction, unsigned char disp_pos); //increments/decrements a 3-digit number quickly
unsigned int get_temp(void);
unsigned char bin2hex(char x);
//void send_char (unsigned char n);		//sends two nybbles of data to the lcd.
void init_state (unsigned char timer, unsigned char temp);  //initializes each state with common code
void serial_putchar(unsigned char s_out);		//puts character to the serial port
void convert_int (unsigned int value);		//convert integer into 3 one-digit values for display or transmission
void serial_putnumber (unsigned int value);	//sends a 3 digit ASCII number to the serial port
unsigned int proj_value (signed int x2, signed int x3, signed int y1, signed int y2); //projects a straight line value
void send_tunits (void);  //send the C or F character to the screen for temperature units
//______________________________________________
//Interrupt register save handler
void int_save_registers(void)
{

	asm			//had to use assembly code here because could not get access to the W register in C
	{
		MOVWF	_W_TEMP;	//Copy W to TEMP register (note - '_' means declared in C code section)
		MOVF	_status,0;	//Swap status to be saved into W
		CLRF	_status;	//bank 0, regardless of current bank, clears IPR, RP1, RP0
		MOVWF	_STATUS_TEMP;	//Save STATUS to bank zero STATUS_TEMP register
		MOVF	_pclath,0;	//Copy PCLATH to W
		MOVWF	_PCLATH_TEMP;	//Save PCLATH to PCLATH_TEMP
		CLRF	_pclath;	//Page zero, regardless of current page
	}
	

}

//______________________________________________
//Interrupt register restore handler
void int_restore_registers(void)
{


	asm
	{
		MOVF	_PCLATH_TEMP,0;	//bring old PCLATH into W
		MOVWF	_pclath;		//Restore PCLATH register
		MOVF	_STATUS_TEMP,0;	//Bring old STATUS_TEMP into W (sets bank to original state)
		MOVWF	_status;		//Restore STATUS register
		MOVF	_W_TEMP,0;		//Bring old W_TEMP into W = restore W
		}
}
//______________________________________________
void interrupt(void)
{
		
    int_save_registers();

 //  char sv_FSR = fsr;  // save FSR if required

    if(pir1.0) //Timer1 Overflow Interrupt
    {
        //Setup Timer1 to fire every 100ms
        //1 TMR1 click is 4us (with prescaler of 8). 100ms / .004ms = 25000 clicks
        //but you lose something during the reset process, so reduce clicks by 0.4%(100 clicks)
        //65535 - 25000 = 40535 = 0x9E57
        //65535 - 24900 = 40635 = 0x9EBB
        //####modify to take the clock_cal adjustment into account
        t1con.0 = OFF;  //stop timer1 for a moment
        tmr1h = 0x9E; //set high byte
        tmr1l = 0x57 + (clock_cal * 20); //set low byte.  Clock_cal is limited to a range of 1-10 in Setup.
       
        m_seconds++;
        if(m_seconds == 10)		//10 x 100ms = 1 second!
        {
            m_seconds = 0;
            total_seconds++;
			timer_int = TRUE;	//set 1 second interrupt flag
		}
		if (total_seconds >= 999) 	//restart timer
		{
			total_seconds = 0;
		}
        pir1.0 = 0; //Clear INT Flag
        t1con.0 = ON;  //restart timer1 operation 	
	};

//    fsr = sv_FSR;               // restore FSR if saved
 int_restore_registers(); 
}

//______________________________________________
//==============================================
void main ()
{

 //Mode options: 
//***the following lines are for info only.  There are too many characters to store these strings in data memory so they are implemented 
//as literal string constants in program memory in the body of the code below****
/*		//these are display screens for the lower lcd line
		Illegal state			//state (20)  - used for resetting the prev_state value to force 1st time through restarts
		"MM x   x  Nx/Sel", 	//state (0)
	    "MA R/R R-On  /Ex",		//state (1)		
	    "MA S/R R-Off /Ex",		//state (1)
	    "SA U/U D/D   /Ex",		//state (2)
	    "P1 R/R Jmp Ed/Ex",		//state (3)
	    "P1 S/R Jmp Ed/Ex",		//state (3)
	    "E1 U/U D/D Nx/Ex",		//state (13)
	  	"P2 R/R Jmp Ed/Ex",		//state (4)
	    "P2 S/R Jmp Ed/Ex",		//state (4)
	    "E2 U/U D/D Nx/Ex",		//state (14)
	    "SU Up  Dn  Nx/Ex" 	};	//state (5) 
*/

	//****Need the following osccon statement if boot loader is not used****
	//set INTRC oscillator for 8 MHz
   	osccon = 0b01110000; //Setup internal oscillator for 8MHz
  
	boot_up();

  	
        //Setup Timer1 to fire every 100ms for interrupts
        //1 TMR1 click is 4us (with prescaler of 8). 100ms / .004ms = 25000 clicks
        //65535 - 25000 = 40535 = 0x9E57.  First time only.  Make shorter after that.


    t1con.4 = 1;	//set prescaler to divide by 8
    t1con.5 = 1; 
  
    intcon.7=1;		//enable global interrupts
    intcon.6=1;		//enable peripheral interrupts

    pie1 = 0b00000001;		 //enable timer1 interrupt only
    t1con.1 = 0;	//use internal oscillator/4 clock
    tmr1h = 0x9E; //set high byte
    tmr1l = 0x57; //set low byte but save code space - will be tweaked during the interrupt routine with clock_cal.
        
  	send_cmd(CLR_DISP, TRUE);
    trisb = 0b10000011;			//set portb pins for inputting button pushes
    t1con.0 = ON;  //start timer1 operation.  Uses interrupt handler after this.
    //Andy modified state to equal 3 to auto enter Program1 so that all the user needs to do is push CS1 to start the reflow process
	state = 3; 			//Default is 0, This selects the Case number to enter after the splash screen is displayed. 0="Main Menu", 3="Program1"
    prev_state = 20;	//default starting condition is the main menu state. Set prev_state to a non-existent number to force initialization
//	cur_pos = 0;		//
	//Andy modified the prev_mode to equal 3 to set the initial Main Menu selection to Program1
	prev_mode = 3;			//initialize menu location to initial selection - default is "Manual" = 1, "Program1" = 3
	button_release = FALSE;
	choice = 'n';	//select a non-existent button choice to start off.

while(1)	//MAIN LOOP: loop while waiting for timer interrupts or button pushes
	{
        //Scan for button pushes.  Short pushes are less than 2 seconds.  Long pushes are over 2 seconds and can have a different effect.
        //==================================================== 		
			button_push = FALSE;  //clear this indicator or you may get extra, false button push actions
			long_push = FALSE;
			update_flag = FALSE;	//start each loop with this setting
			two_second_timer = total_seconds;
		if (BUTTON_SELECT == 1 && BUTTON_UP == 1 && BUTTON_DOWN ==1)
		{			//This test (all three buttons are released simultaneously) will reset all the button indicators.
			button_release = TRUE;  //don't record a new button push until the previous one has been released.
					//do not automatically reset this variable each loop or you may miss button pushes due to the short loop time.
					//that is a button could only be pushed between this statement and one of the following if tests!
			choice = 'n';     //reset choice to none to avoid some weird problems
			delay_ms(50); 		//delay slightly to avoid button bounce
		};			

        if (BUTTON_UP == 0 && button_release == TRUE)  //if Up button pushed and no other button is already pushed.  
       				//This test avoids the problem of conflicts if multiple buttons are pushed at once.  Only the first one
       				//pushed will be acted upon and the other pushes ignored until all the buttons have been released.
        {
	        choice = 'u';
			button_release = FALSE;
   			while (BUTTON_UP ==0 && (two_second_timer + 2 > total_seconds));   //wait for button release or 2s
            button_push = TRUE;			//in either case, set button push indicator
        };
        
        if(BUTTON_DOWN == 0 && button_release == TRUE)  //if Down button pushed and no other button is already pushed.  
       				//This test avoids the problem of conflicts if multiple buttons are pushed at once.  Only the first one
       				//pushed will be acted upon and the other pushes ignored until all the buttons have been released.
        {
	        choice = 'd';
			button_release = FALSE;
   			while (BUTTON_DOWN ==0 && (two_second_timer + 2 > total_seconds));   //wait for button release or 2s
            button_push = TRUE;			//in either case, set button push indicator
         };
         
        if(BUTTON_SELECT == 0 && button_release == TRUE)  //if Select button pushed and no other button is already pushed.  
       				//This test avoids the problem of conflicts if multiple buttons are pushed at once.  Only the first one
       				//pushed will be acted upon and the other pushes ignored until all the buttons have been released.  
        {  
	        choice = 's';
			button_release = FALSE;
   			while (BUTTON_SELECT ==0 && (two_second_timer + 2 > total_seconds));   //wait for button release or 2s
            button_push = TRUE;		//in either case, set button push indicator
         };
        
			//for any case where button was pushed, check 2s timer    
		if(two_second_timer + 2 <= total_seconds)	//was it a long push?
				long_push = TRUE; 			//set indicator for long button pushes


		//execute the buttons and lcd updates associated with the particular state the program is in
		//if no button push, then just do lcd updates per state and/or 1 second timer
		//if button push, take action and/or change state immediately - don't wait for 1 second timer
		if (timer_int == TRUE)		//update lcd only once per second - makes for smoother temp readings.
		{
			timer_int = FALSE;		//reset 1 second timer
					//send time and temp to serial port every second
				serial_putnumber(total_seconds);  //
				serial_putnumber(set_temp);     //send desired temp
				serial_putnumber(get_temp());	//send actual temp
//				a_temp3 = a_temp2;				
				a_temp2 = a_temp1;				//save last temp difference reading. Need for temp projection algorithm.
				a_temp1 = get_temp();			//note that get_temp read at other places in the program may not be exactly 1 second later.
				if (relay_on)
					serial_putchar ('1');		//if relay is on, send a 1
				else
					serial_putchar ('0');		//else relay is off, send a 0

				serial_putchar (13);		//CR, LF after each time/temp pair
				serial_putchar (10);
			if (temp_on == TRUE) 
			{
				update_display (get_temp(), 12);	//Display current temp reading
			}
			if (timer_on == TRUE)
			{	update_display (total_seconds,2);	//Update timer display if on
				step_seconds++;		//also increment the time within each step in program mode
			}
			else if (timer_on == FALSE)								//timer is OFF to get to here
				total_seconds = display_seconds;	//keep timer in hold mode
			if (relay_on == TRUE)		//turn on relay.  Do this here so relay only changes 1/sec max.
			{
				portb.4 = 1;
				if (relay_LED == TRUE)
					portb.3 = 1;			//turn on LED (if selected)
			}
			else			//relay_on must be FALSE, so turn relay off.
			{
				portb.4 = 0;
				portb.3 = 0;
			}	
		};

		switch (state)
		{

		//---------------Main Menu-----------------------
			case 0:

				if (prev_state != 0)		//first time through, set up display.
				{
					send_cmd(CLR_DISP, TRUE);	//Clear screen and put cursor to 1st position on top line
					printf_lcd ("Mode:");		//Display top LCD line of display
					send_cmd(SET_CURSOR + 64, TRUE);			//setup lower line of display
					printf_lcd ("MM  x  x  Nx/Sel");	//button functions (x means no function)
					prev_state = 0;			// This returns to the Main Menu --This case #
					mode = prev_mode-1;		//this will put the correct top line screen on even coming back from other mode state.
					button_push = TRUE;		//keep track of previous mode number in Main Menu
					choice = 's';
					long_push = FALSE;
					init_state (FALSE, FALSE);

				};
				if (button_push == TRUE && choice == 's')	
				{
										//if Select button has been pushed.
										//ignore 'u' or 'd' button pushes in this mode


							if (long_push == TRUE)		//for a long push, this is a selection of that mode as the new state
						    	state = mode;
							else 	//else, must be a short push, just go to the next menu selection possibility
							{
								++mode;
								prev_mode = mode;
								send_cmd(SET_CURSOR + 7, TRUE);		//save variable space by sending only the unique parts of the string to the LCD
								if (mode == 6)
									mode = 1;					//cycle back to the beginning if there are no more modes
								switch (mode)	//mode is used only in the main menu. State becomes the mode value after selection
								{
									case 1:							//can't use a variable here - too big for the memory
										printf_lcd ("   Manual");	
										break;
									case 2:
										printf_lcd ("Semi-Auto");
										break;
									case 3:
										printf_lcd ("Program 1");
										break;
									case 4:
										printf_lcd ("Program 2");
										break;
									case 5:
										printf_lcd ("    Setup");
										break;
								};
							};
	  							
												//no action to be taken on Main Menu screen for update_flag = true.
				};
				break;	//end Case 0

		//------------------Manual Mode---------------------------------
			case 1:		//Manual Mode - initially in timer-stop/relay-off condition
						//Manual, separate control of the timer and the relay.

				if (prev_state != 1)		//first time through, set up display
				{
					send_cmd(SET_CURSOR, TRUE);
					printf_lcd ("    0s      000");
					send_tunits();
					send_cmd(SET_CURSOR + 64, TRUE);
					printf_lcd ("MA R/R R-on  /Ex");
					prev_state = 1;
					init_state (FALSE, TRUE);	//initialize common code
					set_temp = 0;  //needed to clear the variable value if coming into Manual mode from another mode.

				};

				if (button_push == TRUE)  
				{
					switch (choice)
					{
						case 'u':		//if Up button short or long push								

							if (long_push == TRUE)				//Up button, long push - reset timer to zero
							{
								prev_state = 20;		//force restart of this state to reset timer.  Turns off relay, too.
							}
							else 							//Up button, short push - start (or restart) or stop timer (toggle each time)
							{
								if (timer_on == FALSE) 
								{
									total_seconds = display_seconds;	//start or restart timer at the current display value
									send_cmd (SET_CURSOR + 67, TRUE);			//change run to stop option
									printf_lcd ("S");
									timer_on = TRUE;
								}
								else						//timer_on must = TRUE to get here
								{
									display_seconds = total_seconds;	//save current timer value for future restart
									send_cmd (SET_CURSOR + 67, TRUE);			//change stop to run option
									printf_lcd ("R");
									timer_on = FALSE;
								};
							};
							break;

						case 'd':		//if Down button short or long push - toggle relay 						

							if (relay_on == FALSE) 	//if relay was OFF, turn it ON
							{
								relay_on = TRUE;
								send_cmd (SET_CURSOR + 73, TRUE);		
								printf_lcd ("off");		//set 'd' button option to turn relay OFF if pushed
								send_cmd (SET_CURSOR + 7, TRUE);	//send warning to screen that relay is on
								printf_lcd ("RELAY");
							}
							else					//relay must have been ON to get to here
							{
								relay_on = FALSE;	//turn relay and LED OFF here
								send_cmd (SET_CURSOR + 73, TRUE);		
								printf_lcd ("on ");
								send_cmd (SET_CURSOR + 7, TRUE);	//turn off relay warning note
								printf_lcd ("     ");
							};	
							break;

						case 's':		//if Select button has been pushed.							
							if (long_push == TRUE)				//Select button, long push - Exit back to main menu
							{
								state = 0;				//return to main menu
							};
							break;
		   
					};	//end Switch
				};		//end If
				break;	//end Case 1

		//-------------Semi-Automatic Mode---------------


			case 2:		//semi-auto mode - stop condition **add timer function if code length permits**
						//works same as Manual mode except it will hold the set temperature.
				if (prev_state != 2)		//first time through, set up display
				{
					send_cmd(SET_CURSOR, TRUE);
					printf_lcd ("       000");
					send_tunits();

					printf_lcd (" 000");
					send_tunits();

					send_cmd(SET_CURSOR + 64, TRUE);
					printf_lcd ("SA U/U D/D   /Ex");
					update_display (get_temp(), 12);	//update actual temp only, not time, in the stop condition
					prev_state = 2;
					init_state (FALSE, TRUE);	//initialize common code
					set_temp = 0;			//initial temperature setting for semi-automatic mode. (in Celsius)


				}
				
			 
				if (button_push == TRUE)  
				{
					switch (choice)		//delete everything except returning to main menu - too much code for memory!!!!
					{
						case 'u': case 'd':	//if Up or Down button has been pushed, increment desired temp setting.
	
								set_temp = speed_button (set_temp, choice,7);
							break;

						case 's':		//if Select button has been pushed.							
							if (long_push == TRUE)				//Select button, long push - Exit back to main menu
								state = 0;				//return to main menu
	   						break;

					}	//end Switch
				}		//end If
						//in any event, update the relay setting based on difference between set and actual temps.
						
				update_display (set_temp, 7);
//		        actual_temp = get_temp();

				if (get_temp() < set_temp)
					relay_on = TRUE;			//if oven temp is too low, turn on relay
				else
					relay_on = FALSE;			//if oven temp is too high, turn off relay (and LED)

				break;	//end Case 2




		//--------------Programmed Mode------------------

			case 3: case 4:		//Program 1 or 2 - stop condition

				if (prev_state != 3 && prev_state != 4)		//first time through, set up displays
				{
					send_cmd(SET_CURSOR, TRUE);
					printf_lcd ("0 000s 000");		//step --- elapsed time --- desired temp@end of this step --- actual temp
					send_tunits();

					printf_lcd (" 000");
					send_tunits();

					send_cmd(SET_CURSOR + 64, TRUE);
					printf_lcd ("P1 R/R Jmp Ed/Ex");		//run/stop/reset  --- Jump to step --- Edit mode/Exit back to Main Menu
					if (state == 3)
					{
						printf_lcd ("P1 R/R Jmp Ed/Ex");		//run/stop/reset  --- Jump to step --- Edit mode/Exit back to Main Menu
						prev_state = 3;
						eeaddoffset = 0;
					};
					if (state == 4)
					{
						send_cmd(SET_CURSOR + 65, TRUE);
						printf_lcd ("2");		//identify this as running Program2
						prev_state = 4;
						eeaddoffset = 40;
					};

					init_state (FALSE, TRUE);	//initialize common code

					step_number = 0;		//initialize the current data with step 0 data to prepare to run the program.
					eeaddress = (0 + eeaddoffset);  //Get step 0 data address.  Program1 data starts @ 0, Program2 data starts @ 40.
					step_time = get_edata (eeaddress);  //get first step_time from memory
					step_seconds = 0;
				    step_temp = get_edata (eeaddress+2);  //first step_temp data is 2 bytes past time data
					update_display (step_time, 2);		//show step 0 values for time and temp on the display
					update_display (step_temp, 7);
//				//initialize time and temp values for calculation of temp ramp setting below.
					prev_step_temp = 25;		//starting point for warm up in Celsius, was 38
					if (temp_units == FALSE)
						prev_step_temp = 78;	//in F, was 100


				};  //end initialization if group


				 	if (timer_on == TRUE) 
					{
						if (step_seconds > step_time)	//if we hit the end of one of the current step periods

						{				//load next step time and temp from memory
											//if time step = 000, that is taken as the end of the program - reset and stop
							step_number++  ;	//increment step number
							step_seconds = 0;	//reset timer for the new step (each step is timed starting from 0)
							eeaddress = (4*step_number)+ eeaddoffset;
						    step_time = get_edata (eeaddress);  //get next step_time from memory
							prev_step_temp = step_temp;		//save for temp change calcs
						    step_temp = get_edata (eeaddress+2);  //next step_temp data is 2 bytes past time data
							send_cmd (SET_CURSOR, TRUE);		//update step number on display
							send_cmd (bin2hex (step_number), FALSE);
							if (step_time == 0)		//indicator that program has completed.  Stop timer and relay, return to program start condition.
							{
								timer_on = FALSE;
								relay_on = FALSE;
								prev_state = 20;	//pretend we just came in from the main menu again to reset the program.
							}
						}

								//Algorithm is to put linear temp slope between the previous temp and the new desired temp. Compare 
								//desired temp with actual and turn relay on/off accordingly.  Check once/second max. Will eventually
								//add a ramp up/down function to reduce overshoot problems on the specific oven.

							//calculate what the current set temperature should be.  This is the displayed value.
								//Algorithm puts a linear temp slope between the previous step temp and the current step temp.	
						set_temp = proj_value (step_time, step_seconds, prev_step_temp, step_temp);

								//units are always C in program memory
								//must update the program temp display, too.

						update_display (set_temp, 7);

						if ((step_seconds + tc/2) <= step_time)	//if tc/2 seconds ahead of current time in still in this step, use current slope
							proj_temp = proj_value (step_time, step_seconds+tc/2, prev_step_temp, step_temp);
					
						else		//tc/2 seconds ahead of current time is in the next step so get that data.
							proj_temp = proj_value (get_edata (eeaddress + 4), tc/2-(step_time - step_seconds), step_temp, get_edata (eeaddress + 6));
						
							//now project actual temp ahead tc seconds and compare.  Slope is done over 2 points.  
							//Since the slope is a derivative function, it is subject to a lot of noise. Need to include absolute difference, too.

						proj_actual = get_temp() + ((tc/6)*(a_temp1-a_temp2));	//

						proj_err = (get_temp()- set_temp) + (proj_actual - proj_temp); //P and I factors for PID control.If error is negative, relay should be turned on.

						if (proj_err <= 0)
							relay_on = TRUE;			//if oven temp is too low, turn on relay (and LED if selected)
						else
							relay_on = FALSE;			//if oven temp is too high, turn off relay (and LED)

					}
					else 
						total_seconds = display_seconds;	//otherwise, just keep resetting the timer to previous reading

			
				if (button_push == TRUE)
				{				
					switch (choice)
					{
						case 'u':		//if Up button short or long push								

							if (long_push == TRUE)				//Up button, long push - reset timer to zero
							{
								prev_state = 20;		//force restart of this state to reset timer.  Turns off relay, too.
							}
							else 							//Up button, short push - start (or restart) or stop timer (toggle each time)
							{
								if (timer_on == FALSE) 
								{
									total_seconds = display_seconds;	//start or restart timer at the current display value
									send_cmd (SET_CURSOR + 67, TRUE);			//change run to stop option
									printf_lcd ("S");
									timer_on = TRUE;
								}
								else						//timer_on must = TRUE to get here
								{
									display_seconds = total_seconds;	//save current timer value for future restart
									send_cmd (SET_CURSOR + 67, TRUE);			//change stop to run option
									printf_lcd ("R");
									timer_on = FALSE;
									relay_on = FALSE;			//always turn off oven if timer is stopped

								};
							};
							break;

						case 'd':		// Down button, short push - jump to next step						
										//Always put the relay and timer into off condition when using jump.
										//Also, reset the timer back to zero
							
									//for long or short Jump button pushes, take the Jump action
							display_seconds = 0;	//
							total_seconds = 0;
							send_cmd (SET_CURSOR + 67, TRUE);			//change stop to run option
							printf_lcd ("R");
							relay_on = FALSE;				//turn off relay and LED (even if LED wasn't on -avoid another if test).
							timer_on = FALSE;
								//load next step time and temp from memory
								//if time step = 000, that is taken as the end of the program - cycle back to step 0.
							step_number++  ;	//increment step number

							eeaddress = (4*step_number)+ eeaddoffset;
						    step_time = get_edata (eeaddress);  //get next step_time from memory
							if (step_time == 0)		//indicator for end of program.  Cycle through to step 0 and keep going.
							{
								prev_state = 20;	//start this mode again.  Least code method.

							};
							prev_step_temp = step_temp;		//save for temp change calcs
						    step_temp = get_edata (eeaddress+2);  //next step_temp data is 2 bytes past time data

							update_display (step_time, 2);		//send step time to the display
							update_display (step_temp, 7);		//send step temp to the display
							send_cmd (SET_CURSOR, TRUE);			//update display for step, time and temp changes
							send_cmd (bin2hex(step_number), FALSE);
							
							break;

						case 's':		//if Select button has been pushed.
							 
							prev_state = state;							
							if (long_push == TRUE)				//Select button, long push - Exit back to Main Menu
								state = 0;		
							else		//Select button, short push - go to program editing mode
								state += 10;		//shift current state to program mode.  13 for Program 1, 14 for Program 2.
							break;
		  
					};	//end Switch
				};		//end If
				break;	//end of Cases 3 and 4


		//------------------Edit Program Mode -------------------------
			case 13: case 14:		//Program - edit mode. State 13 for Program1, state 14 for Program2.
//Remember that each program step time is for that step only, not the whole elapsed time.  Had to do that to save program space.


				if (prev_state != 13 && prev_state !=14)		//first time through, set up displays
				{
//always get here from Program mode with display so don't need to update the top line here again
					send_cmd(SET_CURSOR + 64, TRUE);
					printf_lcd ("E1 U/U D/D Nx/Ex");
					if (state == 13)
					{
//						printf_lcd ("E1 U/U D/D Nx/Ex");		//increase value --- decrease value --- Next cursor position/Exit back to Program Mode
						prev_state = 13;
						eeaddoffset = 0;			//use first 40 EEPROM memory locations for Program1 data
					};
					if (state == 14)
					{	
						send_cmd(SET_CURSOR + 65, TRUE);
						printf_lcd ("2 ");		//identify this as program 2
						prev_state = 14;
						eeaddoffset = 40;			//use locations 40-80 for Program2 data
					};

					init_state (FALSE, FALSE);	//initialize common code

					step_number = 0;		//initialize the current data with step 0 data to prepare for editing.
					eeaddress = (0 + eeaddoffset);  //Get step 0 data address.  It's 40 locations past the beginning for Program 2. 
					step_time = get_edata (eeaddress);  //get first step_time from memory
				    step_temp = get_edata (eeaddress+2);  //first step_temp data is 2 bytes past time data
					send_cmd(SET_CURSOR, TRUE);	//reposition cursor to beginning of top line to print step number
					send_cmd(bin2hex(step_number), FALSE);
					update_display (step_time, 2);	//top line numbers get updated here
					update_display (step_temp, 7);	//units are the same as for Program mode.
					send_cmd (SET_CURSOR, TRUE);	//start with cursor at the "step" position = 0 of 16 total positions in the top LCD row.
					send_cmd (CUR_BLNK_ON, TRUE);		//turn on cursor and blinking
					cur_pos = 0;
				};
			
				if (button_push == TRUE)

				{        
					switch (cur_pos)		//it's more efficient to sort through cursor position first for this mode.
											//Note: ignore cursor positions (cases) which are not either step, time or temp
					
					{
						case 0:		//cursor is at 0 = "step number" position
						
							step_number = mod_digit (step_number, choice);  //choice is 'u' or 'd'. 's' button push is ignored by mod_digit()
							eeaddress = (step_number*4 + eeaddoffset);  //Get step data address.  Program2 is 40 bytes past the step data for Prgm 1 
							step_time = get_edata (eeaddress);  //get step_time from memory
							if (step_time == 0)
							{
								step_number = 0;	//step_num = 0 is the signal for end of program, so cycle back to beginning of the program.
							}								

					    	step_temp = get_edata (eeaddress+2);  //step_temp data is 2 bytes past time data
							update_display (step_time, 2);		//update the whole display to show the data for the current step number
							update_display (step_temp, 7);
							send_cmd(SET_CURSOR, TRUE);		//put cursor back to the step_number position (0)		
							send_cmd(bin2hex(step_number), FALSE);		//note:cursor automatically shifts right one character after writing!!
							send_cmd (SET_CURSOR, TRUE);		//shift it back!
							send_cmd (CUR_BLNK_ON, TRUE);		//turn on cursor and blinking						
							break;	//end Case 0


						case 5:	// Cursor is in the time position						
							if (choice == 'u' || choice == 'd')		//if Up or Down button has been pushed, increment desired time setting.
								step_time = speed_button (step_time, choice,2);
							eeaddress = (step_number*4 + eeaddoffset);  //Calc step_time data address.  Program 2 is 40 bytes past the same data for Prgm 1 
							put_edata (eeaddress, step_time);  //Save new step_time value to programmed memory
							break;	//end Case 5

						case 10:		// Cursor is in the temp position
							if (choice == 'u' || choice == 'd')		//if Up or Down button has been pushed, increment desired temp setting.
								step_temp = speed_button (step_temp, choice,7);
							eeaddress = (step_number*4 + eeaddoffset + 2);  //Calc step_temp data address. Temp is 2 bytes past time data location.
							put_edata (eeaddress, step_temp);  //Save new step_temp value to programmed memory
							break;	//end Case 10


					};	//end Switch



		
					if (choice == 's')		//if Select button has been pushed.  **don't forget to turn off cursor/blinking upon exit
					{
							
						if (long_push == TRUE)				//Select button, long push - Exit back to Program Run Mode
						{					
							prev_state = state;
							state -= 10;			//either 3 or 4 for Program1 or Program2.
							send_cmd (DISP_ON, TRUE);		//turns off cursor blinking		
						}	
						else		//Select button, short push - mover cursor to time or temp position
						{
							if (cur_pos == 5)
								cur_pos = 10;	//move to "temp" position
							else if (cur_pos == 0)	//if cursor at "step" position,
								 	cur_pos = 5;	//move to "time" position
									else
										cur_pos = 0;	//else reset to "step" position
							send_cmd (SET_CURSOR + cur_pos, TRUE);	//tell LCD where cursor is
							send_cmd (CUR_BLNK_ON, TRUE);		//turn on cursor and blinking
						};
					};


				};		//end if
				break;	//end of Cases 13 and 14	



		//--------------Setup Mode--------------------

			case 5:		//Setup Mode - for temp_units (C/F), time_units (SSSs/M:SS), relay_LED (O/O), data logging (O/O), start temp (0,30C)
						//will save data to EEPROM starting at address 80.  Data is stored as either 1 (TRUE) or 0 (FALSE) since all options have only
						//2 choices.
				unsigned char value;
			
				if (prev_state != 5)		//first time through, set up display
				{

					send_cmd(SET_CURSOR + 64, TRUE);	//write lower line of lcd					
					printf_lcd ("SU Up  Dn  Nx/Ex");
					prev_state = 5;
					init_state (FALSE, FALSE);	//initialize common code
					set_mode = 1;
					button_push = TRUE;		//force one time through the lcd top line screen display section below
					choice = 'n';			//no real button was pushed for this first time through so take no specific action
				};

				if (button_push == TRUE)  
				{
					switch (choice)
					{
						case 's':		//if Select button has been pushed.							
							if (long_push == TRUE)				//Select button, long push - Exit back to main menu
								state = 0;				//return to main menu
							else		//select button, short push - goto next variable
							{
								set_mode++;
								if (set_mode == 6)
									set_mode = 1;					//cycle back to the beginning	
							}
							break;

						case 'd': case 'u':			//modify variable.  
							eeaddress = (79 + set_mode);  //calc EEPROM address of data.  Use simple method to save space
							value = onboard_eeread(eeaddress);  //get current temp_unit value from EEPROM memory
							if (set_mode == 1)
							{
								if (choice == 'u')
									value += 1;


								if (choice == 'd')
									value -= 1;

								update_display (value, 12);
							}
							if (set_mode == 2 || set_mode ==3) 
							{
								if (value == TRUE)
									value = FALSE;
								 else if (value == FALSE)
									value = TRUE;
							}
							if (set_mode == 4 || set_mode == 5)
								value = mod_digit (value, choice);	//keep the speed_button increment range between 1 and 10
							onboard_eewrite (value,eeaddress); //save current value in EEPROM
							break;
  
					};   //end switch

							//update the Setup display for any changes from button pushes
					eeaddress = (79 + set_mode);  //calc EEPROM address of data.  Use simple method to save space
					value = onboard_eeread(eeaddress);  //get current variable value from EEPROM memory

					send_cmd(SET_CURSOR, TRUE);	//go to beginning of top line of display	
					switch (set_mode)	//update printout for the correct setup variable
					{
						case 1:		//tc = time constant (warm up delay lag)
							tc = value;	//update current time units					
							printf_lcd ("Time Const =   s"); //use string constants - not enough memory for variable storage
							update_display (value, 12);
							break;

						case 2:
							temp_units = value;	//update current temp units
							printf_lcd ("Temp Units  =  ");
							send_cmd (SET_CURSOR + 15, TRUE);
							send_tunits();
							break;
						case 3:
							relay_LED = value;
							printf_lcd ("Relay LED  =");
							send_cmd (SET_CURSOR + 12, TRUE);
							if (value == TRUE)
								printf_lcd (" ON ");
							else printf_lcd (" OFF");
							break;
						case 4:
							t_inc = value;		//stored values range from 0 - 9.  Displayed and used values are 1 - 10.
							printf_lcd ("Tm/tmp Incr =   ");
							send_cmd (SET_CURSOR + 14, TRUE);
							if (value == 9)		
							{
								send_cmd ('1', FALSE);
								send_cmd ('0', FALSE);   //display a hex 10 value since we're only using 1 space
							}							
							else 
								send_cmd (bin2hex (value+1), FALSE); //t_inc range from 1 to 10
							break;
						case 5:
							clock_cal = value;
							printf_lcd ("Clock cal  =    ");
							send_cmd (SET_CURSOR + 14, TRUE);
							if (value == 9)
							{
								send_cmd ('1', FALSE);
								send_cmd ('0', FALSE);   //display a hex 10 value since we're only using 1 space
							}
							else 
								send_cmd (bin2hex (value+1), FALSE);
							break;
					};	//end Switch
				}; //end if
				break;	//end of case 5
				
			default:		//if we get an erroneous state, do nothing.
				break;

		};
								//##if there's been a state change from a button push - do we  need to cycle through again???
			//		}; end if - may not need
	};
}			//end main

//====================================================
//Project Value takes in point and slope information and projects or interpolates an intermediate value
//assumes that x2 is always greater than x1 and both are positive.  y2 may or may not be greater than y1 but is always a positive number.
//It also assumes that x1 is always zero since each step_time restarts the clock.  Also, x3 is between zero and x2 along the x axis.
unsigned int proj_value (signed int x2, signed int x3, signed int y1, signed int y2)
{
	signed int value;
		value = y1 + (x3*(y2 - y1))/x2;
	return value;
}
//______________________________________________________________________________
	
//converts an integer into 3 ASCII digits and sends them out the serial port followed by a tab.
//The tab seems to be the preferred separation character for reading a file into Excel.
void serial_putnumber (unsigned int value)
{

	convert_int (value);					//put ASCII values into the digit_ series of variables
	serial_putchar(bin2hex(digit_100));		//send 3 digits to the serial port
	serial_putchar(bin2hex (digit_10));
	serial_putchar(bin2hex (digit_1));
	serial_putchar (9);					//separate values with tabs, the default Excel separator.
}

//_____________________________________________________
//Sends the temperature units character to the screen. Done to reduce code size. temp_units is TRUE for Celsius.
void send_tunits (void)
{
	if (temp_units == TRUE)
		send_cmd ('C',FALSE);
	else
		send_cmd ('F', FALSE);
}
//______________________________________________
//Sends a byte to the LCD in two nybbles
void send_cmd(unsigned char c, unsigned char cmd)  //if cmd is TRUE, this is a command, else it is an ASCII data char to be displayed
{
	LCD_wait();
    LCD_R_W = 0; //set LCD to write
	LCD_E = 0;	//start with strobe at low setting
	if (cmd == TRUE)		//for a command, set RS=0,  for data, set RS=1.
    LCD_RS = 0; //set LCD to command input mode
	else LCD_RS = 1;   //else set to data mode
//    send_char (c);  //high nybble first
    D7 = c.7;
    D6 = c.6;
    D5 = c.5;
    D4 = c.4;
    LCD_E = 1; delay_ms(1);  LCD_E = 0; //Toggle the Enable Pin

    D7 = c.3;		//now low nybble
    D6 = c.2;
    D5 = c.1;
    D4 = c.0;
    LCD_E = 1; 
	delay_ms(1); 
	LCD_E = 0;
}	
//____________________________________________________
//mod_digit (unsigned char value, unsigned char direction) - Increments or decrements a single digit by 1, up or down as selected
//direction is either 'u' or 'd' for up or down.  Will wrap around 9 to 0 and vice-versa.
unsigned char mod_digit (unsigned char value, unsigned char direction)
	{
		if (direction == 'u')
		{
			value++;
			if (value >= 10)
				value = 0;
		};
		if (direction == 'd')
		{
			if (value <= 0)
				value = 9;
			else
				value--;
		};
		return value;
	}

//____________________________________________________
//Speed_button - increments or decrements a value either singly or repeatedly.  Returns the final value.
unsigned int speed_button (unsigned int value, unsigned char direction, unsigned char disp_pos)
{
						if (direction == 'u')		//if Up button has been pushed, increment desired time/temp setting.
						{ 
				
									//for short push, just go 1 increment. For long push, keep incrementing until button release. 								
							value += (t_inc+1);				//increment time or temp by 1 to 10  seconds/degrees at a time
							if (value > 999)	//put a 3-digit limit on temp setting to fit display width
								value = t_inc+1;		//wrap around zero to save time in setting high values
							update_display (value, disp_pos);
							while (BUTTON_UP == 0)
							{
								value += (t_inc+1);				//increment repeatedly as long as button stays pushed
							if (value > 999)	//put a 3-digit limit on time/temp setting to fit display width
								value = t_inc+1;	//
							update_display (value, disp_pos);
							delay_ms(100); 			//10 numbers per second increment
//							if (BUTTON_UP == 1)
//								long_push = FALSE;	//need to detect when the button is stopped being pushed inside this loop!
							};

						}

						if (direction == 'd')		//if Down button has been pushed, decrement desired time/temp setting.
						{ 
									//for short push, just decrement once. For long push, keep decrementing until button release. 
							if (value <= 0)
								value = 999;		//do wrap around zero to save time in getting to high values								
							else value -= (t_inc+1);				//decrement 1 to 10 seconds/degrees at a time
							update_display (value, disp_pos);
							while (BUTTON_DOWN == 0)
							{
							if (value <= 0)
								value = 999;		//wrap around zero								
							else value -= (t_inc+1);				//decrement repeatedly while button stays pushed
							update_display (value, disp_pos);
							delay_ms(100); 			//10 numbers per second increment
							};
						}
	return value;
}
	
 //___________________________________________________ 
 //Convert a binary integer value into 3 one-digit characters for either serial port transmit or LCD display
 //Answers are returned via the global variables digit_100, etc
void convert_int (unsigned int value)
{
	digit_100 = value / 100;
    value %= 100; //Mod operator to cut off the 100s 
    digit_10 = value / 10;
    value %= 10;
    digit_1 = value;	 
}

//_____________________________________________________	

//Update display - updates 3-digit time or temp given an integer value for the number and an LCD position in the top row to place the first number. 
//the units measure must be added by the calling routine afterward. 
//assumes 3 digit value is in the range 0 - 999, otherwise you get strange characters on the screen 
void update_display (unsigned int value, unsigned char location)
{

	convert_int (value);		//convert integer into 3 separate digits
    send_cmd(SET_CURSOR + location, TRUE);		//note: cursor is automatically shifted to the right after each char write
	if (digit_100 == 0) send_cmd (' ', FALSE);  //suppress leading zeros
	else send_cmd (bin2hex(digit_100), FALSE);
	if (digit_100 == 0 && digit_10 == 0) send_cmd (' ', FALSE);
	else send_cmd (bin2hex(digit_10), FALSE);
	send_cmd (bin2hex(digit_1), FALSE);
}	


//______________________________________________

//Returns the current temperature in Celsius or Farenheit as selected in Setup
#define AVG_AMT 4		//sets # readings to average was 16, Andy changed to 4
unsigned int get_temp(void)
{
    unsigned char x;
    unsigned long temperature = 0;
    unsigned int total = 0;

    //Read Channel 4
    adcon1 = 0b11000000; //extra divide by 2 for clock (bit 6). Right justified (bit 7)    
    adcon0 = 0b01100001; //Select Fosc/16 for 8mhz, and channel RA4/AN4, A/D on


    for(x = 0 ; x < AVG_AMT ; x++)
    {
        delay_ms(1);
        go = 1; //Convert RA4 to digital
        while(go == 1);	//wait for A/D conversion to complete.  Resets "go" to 0 when done.   
 		MAKESHORT(temperature, adresl, adresh);		//joins the two bytes into one integer result
        total += temperature; //Add on to the total
    }
    temperature = total / AVG_AMT;	//these convert the reading from millivolts into degrees Celsius
	temperature = temperature * 6000; 	//example:if ADC output is 75, then * 5000 (supply mV) = 375000
    //Andy changed the above from 5000 to 6000
    temperature /= 1024; 			//10 bits = 1024 steps.  375000 / 1024 = 366mV
  	if (temp_units == FALSE)	//FALSE is for Farenheit units
	{
 		temperature *=9;               //this preserves the accuracy for 1 degree F changes
		temperature /= 50;						//convert to Farenheit
		temperature +=32;
	}
	else temperature /= 6;		//TRUE is for Celsius. This was 10 Andy changed it to 6

    return temperature;
}

//________________________________________
//Init vars and ports
void boot_up(void)
{

    ansel = 0b00010000; //Turn RA4/AN4 to Analog
    
    porta = 0b00000000;  //clear PORT A latch
    trisa = 0b00010000;  //set PORT A pin direction: 0 = Output, 1 = Input (Temp on RA4)
	//initialize globabl variables
    m_seconds = 0;
    total_seconds =0;
	step_seconds =0;

    trisb = 0b10000011; //RB3(LED)is output. RB6(RS)is output. RB4 (relay) is output. Pins 0, 1, & 7 are input from buttons.
    option_reg.7 = 0; //RBPU = 0 - Enable PORTB Internal weak Pull-ups (to drive LED)- needed for sensing button pushes!!!!
    portb = 0b00000000;	// output 0 Volts on RB3 for start of flashing the LED  
     	
	init_lcd();		//set up LCD for nibble interface, 2 x 16 lines display.

	send_cmd(SET_CURSOR, TRUE);	//set to beginning of 1st line on LCD	
    printf_lcd(" Andrew Goss    ");
    
    send_cmd(SET_CURSOR + 64, TRUE);	//64 = 40H is the beginning of the 2nd line on LCD
    printf_lcd("Reflow Oven v2.1");
  
		portb = 0b00001000;	//turn on LED on pin RB3
		delay_ms(2000); //wait to show initial display
		portb = 0b00000000;  //turn off LED on pin RB3
//### serial port init code here
	//Initialize Serial Port
	txsta = 0x24;		//Enable Tx, BRGH=1
	rcsta = 0x90;		//Enable SPort, Enable Rx
	spbrg = BR_CONST;	//9600 Baud with 8MHz INTRC clock and BR_CONST = 51
//load memory resident constants
	tc = onboard_eeread(80); 
	temp_units = onboard_eeread(81);
	relay_LED = onboard_eeread(82);
	t_inc = onboard_eeread(83);
	clock_cal = onboard_eeread(84);

}
//______________________________________________
//Intializes a few things first time through each change in state.  Saves a few instructions overall.
void init_state (unsigned char timer, unsigned char temp)
{
	timer_on = timer;		//Back to Main Menu, make sure relay and stop watch timer are off
	temp_on = temp;			//keep temp reading up to date
	display_seconds = 0;	//save or reset initial time value of 000s for stop watch function.
	relay_on = FALSE;			//make sure relay and LED are off from any previous mode operation
	total_seconds = 0;		//reset timer to 0.
	step_seconds = 0;		
	
}
//_____________________________________
//Initializes the 4-bit parallel interface to the HD44780
void init_lcd(void)
{
    //Wait for LCD busy bit to clear
    //LCD_wait();
    
    LCD_RS = 0;   //(0 = instruction input; 1 = data input)            
    LCD_R_W = 0;  //(0 = Write to LCD;  1 = read from LCD)
    LCD_E = 0;	  //start with strobe at low setting

    //Tell the LCD we are using 4bit data communication
    //===============================================================
   // wait at least 0.1 secs after power up to insure LCD is ready for input
   //the following sequence of 4 instructions will put the LCD into 4 bit mode.
   //note that only the lower 4 bits in the port are connected to the LCD.
   //The first 3 instructions with delays are actually a manual reset of the entire LCD which
   //duplicates the normal power-up reset function - just in case.  The 4th instruction
   //0x02 actually puts the LCD into 4 bit mode.
    
       
    delay_ms(100);    //wait at least 40 ms per data sheet
    porta = 0b00000011;		//0x3 at bits D4 and D5 on LCD panel
    LCD_E = 1;   LCD_E = 0;
    
    delay_ms(10);	//wait at least 4 ms per data sheet
    porta = 0b00000011;		//0x3
    LCD_E = 1;  LCD_E = 0;

    delay_ms(1);	//wait at least 100 us per data sheet
	send_cmd (0b00110010, TRUE); //send 0x3 a third time (like a reset function) then 0x2 to put lcd in 4 bit mode
	send_cmd(0b00101000, TRUE);	//2-line display, 5x7 matrix
	send_cmd(DISP_ON, TRUE);  	//turn on display but not cursor or blinking
    send_cmd(CLR_DISP, TRUE);	//start with a blank display in case of boot up anomalies on screen

} 

//______________________________________________
//Checks the busy flag and waits until LCD is ready for next command
void LCD_wait(void)
{
    bit i = 1;
    
    trisa = 0b00011111;

    LCD_R_W = 1; //Tell LCD to output status
    LCD_RS = 0;               

    while(i == 1)
    {
        LCD_E = 1; delay_ms(1);
        i = D7; //Read data bit 7 - Busy Flag
        LCD_E = 0;
    
        LCD_E = 1; delay_ms(1); LCD_E = 0; //Toggle E to get the second four bits of the status byte - but we don't care
    }
    
    trisa = 0b00010000; //reset pins to output except RA4; 0 = Output, 1 = Input (TEMP on RA4)
}
  

//______________________________________________
//Returns an integer(2-byte time or temp) from the onboard eeprom starting at e_address (hi - lo byte order)
unsigned int get_edata (unsigned char e_address)
{
	unsigned char x,y;
	unsigned int value;
	x = onboard_eeread(e_address+1);		//get lo byte first
	y = onboard_eeread(e_address);			//get hi byte
    MAKESHORT (value,x,y);					//converts lo/hi bytes into a 2-byte integer
	return value;
}
//_________________________________________________
//Writes an integer(2-byte time or temp) to the onboard eeprom starting at e_address (hi - lo byte order)
void put_edata (unsigned char e_address, unsigned int value)
{
	unsigned char e_data=0;
	LOBYTE (e_data, value); 
    onboard_eewrite(e_data, e_address+1);
	HIBYTE (e_data, value); 
    onboard_eewrite(e_data, e_address);
}
//________________________________________________
//Reads one byte from the onboard eeprom at e_address up to 256
 unsigned char onboard_eeread(unsigned char e_address)

	{
    eecon1.7 = 0; //Point to EEPROM Memory

    //Do a read
    eeadr = e_address; //Set the address to read
    eecon1.0 = 1; //Read it
    
    return eedata; //Read that EEPROM value
	}    

//______________________________________________
//Write e_data byte to the onboard eeprom at e_address up to 256
//Can write EEPROM in single bytes. No pre-erasure required.
void onboard_eewrite(unsigned char e_data, unsigned char e_address)
{
    bit temp_intcon = intcon.7;
    
    eecon1.7 = 0; //Point to EEPROM data block
     eecon1.4 = 0; //Preform write only  

    pir2.4 = 0; //Clear the write completion intr flag
    eeadr = e_address; //Set the address
    eedata = e_data; //Give it the data
    eecon1.2 = 1; //Enable EE Writes
    intcon.7 = 0; //Disable Intrs
    
    //Specific EEPROM write steps
    
    eecon2 = 0x55;
    eecon2 = 0xAA;
    eecon1.1 = 1;
    //Specific EEPROM write steps

    while(pir2.4 == 0); //Wait for write to complete
    pir2.4 = 0; //Clear the write completion intr flag

    eecon1.2 = 0; //Disable EEPROM Writes

    intcon.7 = temp_intcon; //Set GIE to its original state
}


//______________________________________________
//Returns ASCII Conversion of Decimal/Hex Single Char values (0 - F)

unsigned char bin2hex(char x)
{	
    //return ASCII character equal to x in binary/decimal for printing)	
		if (0 <= x <= 9) return (x + '0');
		if (10 <= x <= 15) return (x-10 + 'A');
		return '?';

}


//______________________________________________
//Prints an ASCII string to the LCD including variables
void printf_lcd(const char *nate) //*nate is input string (already in ASCII) to be printed
{
  
    unsigned char i, k;
    
    for(i = 0 ; ; i++)
    {

 //       k = nate[i];
        if (nate[i] == '\0') 		//all strings end with a hidden '\0' character
          
        	return;

        send_cmd(nate[i], FALSE);
    }    
}




//______________________________________________
//General short delay   *********may be able to delete the library delay function (which has a lot of nops in it).
void delay_ms(unsigned int x)
{
    //Clocks out at 1006us per 1ms
    unsigned char y, z;
    for ( ; x > 0 ; x--)
        for ( y = 0 ; y < 4 ; y++)
            for ( z = 0 ; z < 69 ; z++);
}
//________________________________________________


//Writes Character to Serial Port. 
void serial_putchar(unsigned char s_out)
{
wait:					//pir1.4 is the TXIF flag to indicate that the TXREG transmit buffer register is empty.
	if ( pir1.4 == 0 ) //While transmit buffer register (TXREG) in not empty wait to load next char.
	goto wait;
			//##must break this up into hi and low bytes for sending ##//
	txreg = s_out;		//transmit buffer register is now empty and can be loaded with char "s_out" for transmission.

				//note that transmission occurs immediately from loading the TXREG register.
}