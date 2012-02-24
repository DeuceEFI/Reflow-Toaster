/**********************************
4-Bit LCD Interface Routines for BoostC Compiler
Evan Dudzik, 2006
This is written for 2-line HD44780-compatible character LCD display, in 4-bit interface mode (6 I/O pins)
DB4, DB5, DB6, DB7, E, and RS need to be mapped to output pins prior to #including this file.
Run init() to initialize the LCD prior to use.  
**********************************/

void setout(char data)
{
    D4=data.0;
    D5=data.1;
    D6=data.2;
    D7=data.3;
}

void nybble(char inst)
{
    setout(inst);
    LCD_E=1;
    delay_100us(1);
    LCD_E=0;    
    delay_ms(5);
}

//Send an instruction to the LCD.  See HD44780 technical documents for information on these.
void instruction(char inst)
{
    LCD_RS=0;
    nybble(inst >> 4);
    nybble(inst);
}

//Print a single character.
//example: print('A');
void print(char character)
{
    LCD_RS=1;
    nybble(character >> 4);       //send high nybble
    nybble(character);  //send low nybble
}

//Print an array of characters - typical use is to use a string as an argument
//example: printf("hello world");
void printf(const char * s)
{
    while(*s)
        print(*s++);
}

//Initialize the LCD
void init_lcd()
{
    LCD_RS=0;
    LCD_R_W=0;
    delay_ms(20);
    nybble(0x03);
    delay_ms(5);
    nybble(0x03);
    delay_us(200);
    nybble(0x03);
    delay_us(200);
    nybble(0x02); //enable 4 bit mode
    delay_ms(5);
    instruction(00101000b); //set interface length
    instruction(00001000b); //turn display off
    instruction(00000001b); //clear display
    instruction(00000110b); //cursor moves L to R (no display shift)
    instruction(00001100b); //display on, cursor on, cursor blinking on*/
}

//Move Cursor:  Row (1 or 2) and column
void MC(char row, char column)
{
    if(row==2)
        column += 0x40; //first address of 2nd row      
    instruction(10000000b + column);
}