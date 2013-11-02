#include <pic.h>

//***********************Definitions***********************

#define MA_LED RD6
#define MB_LED RD5
#define MC_LED RD4
#define MD_LED RC7
#define ME_LED RC6
#define MF_LED RD3
#define MG_LED RD2

#define PTM1 RB4
#define PTM2 RB3
#define PTM3 RB2
#define PTM4 RB1
#define PTM5 RB0

#define RoverFlow SSPOV  			//Receive Overflow bit = 1 if new byte is received while the SSPBUF register is still holding the previous data.

//-----------------------

#define CK_FREQ 20000000;  	//Defines the 20Mhz Oscillator
#define LED RB5			//Renames LED output pin

//------------SPI PIN Definitions----------

#define SS RA5
#define SCK RC3
#define SDI RC4
#define SDO RC5

/*-----------SPI Register Bit definitions----------

#define SSPSTAT.SMP SMP 	//Sample bit -- in slave mode must be cleared

#define SSPSTAT.CKE CKE		//SPI clock select bit -- 1 = transmit on active to idle 
							//					   -- 0 = transmit on idle to active
							
#define SSPSTAT.BF BF		//Buffer full status -- 1 = full -- 0 = receive  not complete

#define SSPCON.WCOL WCOL 	//Write Collision Detect bit -- 1 = error/collision -- 0 = no collision

#define SSPCON.SSPOV SSPOV	//Receive Overflow Indicator -- 1 = error/overflow -- 0 = no overflow

#define SSPCON.SSPEN SSPEN	//Serial Port Enable -- 1 = Enables serial port and configures SCK, SDO, SDI, and SS as serial port pins 					
							//					 -- 0 Disables serial port and configures pins as I/O pins
							
#define SSPCON.CKP			//Clock Polarity Select bit -- 1 = Idle state for clock is a high level
							//							-- 0 = Idle state for clock is a low level
							
#define SSPCON.SSPM3:SSPM0 SSPM		// Synchronous Serial Port Mode Select bits		
									//0101 = SPI Slave mode, clock = SCK pin. SS pin control disabled. SS can be used as I/O pin.
									//0100 = SPI Slave mode, clock = SCK pin. SS pin control enabled.
									//0011 = SPI Master mode, clock = TMR2 output/2
									//0010 = SPI Master mode, clock = FOSC/64
									//0001 = SPI Master mode, clock = FOSC/16
									//0000 = SPI Master mode, clock = FOSC/4					
*///----------------

//#define PTM RB4			//Renames RB4 to PTM (The PICS push to make switch)

