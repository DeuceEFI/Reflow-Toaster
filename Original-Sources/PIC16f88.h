// Definitions from P16F88.INC
// Converted using inc2h v1.0, by John Nagle (http://www.jobie.com)

//=============================================
// PART = PIC 16F88


#define	W	0x0000
#define	F	0x0001

//=============================================
// Registers

char indf@0x0000;
char tmr0@0x0001;
char pcl@0x0002;
char status@0x0003;
char fsr@0x0004;
char porta@0x0005;
char portb@0x0006;
char pclath@0x000A;
char intcon@0x000B;
char pir1@0x000C;
char pir2@0x000D;
char tmr1l@0x000E;
char tmr1h@0x000F;
char t1con@0x0010;
char tmr2@0x0011;
char t2con@0x0012;
char sspbuf@0x0013;
char sspcon@0x0014;
char ccpr1l@0x0015;
char ccpr1h@0x0016;
char ccp1con@0x0017;
char rcsta@0x0018;
char txreg@0x0019;
char rcreg@0x001A;
char adresh@0x001E;
char adcon0@0x001F;
char option_reg@0x0081;
char trisa@0x0085;
char trisb@0x0086;
char pie1@0x008C;
char pie2@0x008D;
char pcon@0x008E;
char osccon@0x008F;
char osctune@0x0090;
char pr2@0x0092;
char sspadd@0x0093;
char sspstat@0x0094;
char txsta@0x0098;
char spbrg@0x0099;
char ansel@0x009B;
char cmcon@0x009C;
char cvrcon@0x009D;
char adresl@0x009E;
char adcon1@0x009F;
char wdtcon@0x0105;
char eedata@0x010C;
char eeadr@0x010D;
char eedath@0x010E;
char eeadrh@0x010F;
char eecon1@0x018C;
char eecon2@0x018D;

//=============================================
// STATUS Bits

#define	IRP	0x0007
#define	RP1	0x0006
#define	RP0	0x0005
#define	NOT_TO	0x0004
#define	NOT_PD	0x0003
#define	Z	0x0002
#define	DC	0x0001
#define	C	0x0000

//=============================================
// INTCON Bits

#define	GIE	0x0007
#define	PEIE	0x0006
#define	TMR0IE	0x0005
#define	T0IE	0x0005
#define	INTE	0x0004
#define	RBIE	0x0003
#define	TMR0IF	0x0002
#define	T0IF	0x0002
#define	INTF	0x0001
#define	RBIF	0x0000

//=============================================
// PIR1 Bits

#define	ADIF	0x0006
#define	RCIF	0x0005
#define	TXIF	0x0004
#define	SSPIF	0x0003
#define	CCP1IF	0x0002
#define	TMR2IF	0x0001
#define	TMR1IF	0x0000

//=============================================
// PIR2 Bits

#define	OSFIF	0x0007
#define	CMIF	0x0006
#define	EEIF	0x0004

//=============================================
// T1CON Bits

#define	T1CKPS1	0x0005
#define	T1CKPS0	0x0004
#define	T1OSCEN	0x0003
#define	NOT_T1SYNC	0x0002
#define	T1INSYNC	0x0002
#define	TMR1CS	0x0001
#define	TMR1ON	0x0000

//=============================================
// T2CON Bits

#define	TOUTPS3	0x0006
#define	TOUTPS2	0x0005
#define	TOUTPS1	0x0004
#define	TOUTPS0	0x0003
#define	TMR2ON	0x0002
#define	T2CKPS1	0x0001
#define	T2CKPS0	0x0000

//=============================================
// SSPCON Bits

#define	WCOL	0x0007
#define	SSPOV	0x0006
#define	SSPEN	0x0005
#define	CKP	0x0004
#define	SSPM3	0x0003
#define	SSPM2	0x0002
#define	SSPM1	0x0001
#define	SSPM0	0x0000

//=============================================
// CCP1CON Bits

#define	CCP1X	0x0005
#define	CCP1Y	0x0004
#define	CCP1M3	0x0003
#define	CCP1M2	0x0002
#define	CCP1M1	0x0001
#define	CCP1M0	0x0000

//=============================================
// ADCON0 Bits

#define	ADCS1	0x0007
#define	ADCS0	0x0006
#define	CHS2	0x0005
#define	CHS1	0x0004
#define	CHS0	0x0003
#define	GO	0x0002
#define	NOT_DONE	0x0002
#define	GO_DONE	0x0002
#define	ADON	0x0000

//=============================================
// OPTION_REG Bits

#define	NOT_RBPU	0x0007
#define	INTEDG	0x0006
#define	T0CS	0x0005
#define	T0SE	0x0004
#define	PSA	0x0003
#define	PS2	0x0002
#define	PS1	0x0001
#define	PS0	0x0000

//=============================================
// PIE1 Bits

#define	ADIE	0x0006
#define	RCIE	0x0005
#define	TXIE	0x0004
#define	SSPIE	0x0003
#define	CCP1IE	0x0002
#define	TMR2IE	0x0001
#define	TMR1IE	0x0000

//=============================================
// PIE2 Bits

#define	OSFIE	0x0007
#define	CMIE	0x0006
#define	EEIE	0x0004

//=============================================
// PCON Bits

#define	NOT_POR	0x0001
#define	NOT_BO	0x0000
#define	NOT_BOR	0x0000

//=============================================
// OSCCON Bits

#define	IRCF2	0x0006
#define	IRCF1	0x0005
#define	IRCF0	0x0004
#define	OSTS	0x0003
#define	IOFS	0x0002
#define	SCS1	0x0001
#define	SCS0	0x0000

//=============================================
// OSCTUNE Bits

#define	TUN5	0x0005
#define	TUN4	0x0004
#define	TUN3	0x0003
#define	TUN2	0x0002
#define	TUN1	0x0001
#define	TUN0	0x0000

//=============================================
// SSPSTAT Bits

#define	SMP	0x0007
#define	CKE	0x0006
#define	D	0x0005
#define	I2C_DATA	0x0005
#define	NOT_A	0x0005
#define	NOT_ADDRESS	0x0005
#define	D_A	0x0005
#define	DATA_ADDRESS	0x0005
#define	P	0x0004
#define	I2C_STOP	0x0004
#define	S	0x0003
#define	I2C_START	0x0003
#define	R	0x0002
#define	I2C_READ	0x0002
#define	NOT_W	0x0002
#define	NOT_WRITE	0x0002
#define	R_W	0x0002
#define	READ_WRITE	0x0002
#define	UA	0x0001
#define	BF	0x0000

//=============================================
// ADCON1 Bits

#define	ADFM	0x0007
#define	ADCS2	0x0006
#define	VCFG1	0x0005
#define	VCFG0	0x0004

//=============================================
// WDTCON Bits

#define	WDTPS3	0x0004
#define	WDTPS2	0x0003
#define	WDTPS1	0x0002
#define	WDTPS0	0x0001
#define	SWDTEN	0x0000
#define	SWDTE	0x0000

//=============================================
// CMCON Bits

#define	C2OUT	0x0007
#define	C1OUT	0x0006
#define	C2INV	0x0005
#define	C1INV	0x0004
#define	CIS	0x0003
#define	CM2	0x0002
#define	CM1	0x0001
#define	CM0	0x0000

//=============================================
// CVRCON Bits

#define	CVREN	0x0007
#define	CVROE	0x0006
#define	CVRR	0x0005
#define	CVR3	0x0003
#define	CVR2	0x0002
#define	CVR1	0x0001
#define	CVR0	0x0000

//=============================================
// EECON1 Bits

#define	EEPGD	0x0007
#define	FREE	0x0004
#define	WRERR	0x0003
#define	WREN	0x0002
#define	WR	0x0001
#define	RD	0x0000

//=============================================
// Configuration Bits

#define	_CONFIG1	0x2007
#define	_CONFIG2	0x2008
#define	_CP_ALL	0x1FFF
#define	_CP_OFF	0x3FFF
#define	_CCP1_RB2	0x3FFF
#define	_CCP1_RB3	0x2FFF
#define	_DEBUG_OFF	0x3FFF
#define	_DEBUG_ON	0x37FF
#define	_WRT_ENABLE_OFF	0x3FFF
#define	_WRT_ENABLE_512	0x3DFF
#define	_WRT_ENABLE_1024	0x3BFF
#define	_CPD_ON	0x3EFF
#define	_CPD_OFF	0x3FFF
#define	_LVP_ON	0x3FFF
#define	_LVP_OFF	0x3F7F
#define	_BODEN_ON	0x3FFF
#define	_BODEN_OFF	0x3FBF
#define	_MCLR_ON	0x3FFF
#define	_MCLR_OFF	0x3FDF
#define	_PWRTE_OFF	0x3FFF
#define	_PWRTE_ON	0x3FF7
#define	_WDT_ON	0x3FFF
#define	_WDT_OFF	0x3FFB
#define	_EXTRC_CLKOUT	0x3FFF
#define	_EXTRC_IO	0x3FFE
#define	_INTRC_CLKOUT	0x3FFD
#define	_INTRC_IO	0x3FFC
#define	_EXTCLK	0x3FEF
#define	_HS_OSC	0x3FEE
#define	_XT_OSC	0x3FED
#define	_LP_OSC	0x3FEC
#define	_IESO_ON	0x3FFF
#define	_IESO_OFF	0x3FFD
#define	_FCMEN_ON	0x3FFF
#define	_FCMEN_OFF	0x3FFE

//=============================================
// Configuration Bits
