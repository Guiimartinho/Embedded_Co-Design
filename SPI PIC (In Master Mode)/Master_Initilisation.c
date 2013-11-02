#include <pic.h>
#include <Master_Hardware.h>
#include <Master_Global.h>

//*****************Initialisation of the Pic and Port Expander******************

void Master_Initialisation(void)

{	
  //-----Initialise the PIC Ports--------
  
  TRISA = 0b00011111;        	//Set each pin in PORTA up as an input - apart from the SS pin - only 5 bits in this register, the 1st two 0's are N/A, 1= Input 0 = Output  
  TRISB = 0b00011111;			//Sets RB5 as an output for the flashing LED, everything else in Port B remains as an input	
  TRISC = 0b00010000;        	//Set all of PORTC up as an output - used for SPI (SCK, SDO, SDI pi	
  TRISD = 0b00000000;  
  
  PORTB = 0b00000000;			//Initialise Port B as low
  PORTC = 0b00000000;			//Initialise Port B as low
  PORTD = 0b00000000;			//Initialise Port B as low
	
  //-----Initiaise the PIC's SPI Peripheral-----------
  

  SDO = 0;  					// Serial Data Out
  SDI = 1;   					// Serial Data In
  SCK = 0;   					// Output Clock
  SSPSTAT = 0b01000000;      	// Set SMP=0 and CKE=1   CKE = 0 Transmit occurs on transition 	from active to Idle clock state 
  SSPCON = 0b00100000;        	// Enable SPI Master  clock = FOSC/16, Idle state for clock is a low level,  fosc = 20Mhz 
  
  /*bit 3-0 SSPM3:SSPM0: Synchronous Serial Port Mode Select bits
	0011 = SPI Master mode, clock = TMR2 output/2
	0010 = SPI Master mode, clock = FOSC/64
	0001 = SPI Master mode, clock = FOSC/16
	0000 = SPI Master mode, clock = FOSC/4*/
}	