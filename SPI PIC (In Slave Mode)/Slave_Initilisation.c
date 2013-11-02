/************************************************************ 
File Name: Slave_Initilisation.c
Last Date Modified: 20/03/2013
Author: Alex Malcolm

This C file has two functions:

1. To initialise the polarity of required ports.
2. Setting the initial port states. 
3. To initialise the SPI buffer.
*************************************************************/

#include <pic.h>
#include <Slave_Hardware.h>
#include <Slave_Global.h>

//*****************Initialisation Function*******************

void Slave_Initialisation(void)
{
	
  TRISA = 0b00011111;       //Set the polarity of each pin 
  							//in PORTA up as an input, only 5 
  							//bits in this register,the 1st 2 
  							//0's are N/C, 1= Input 0 = Output 
  TRISB = 0b00011111;		//Set the polarity of PORTB's pins
  TRISC = 0b00011111;       //Set the majority of PORTC's pins 
  							//to inputs - used for SPI (SCK, 
  							//SDI pin) SDO is set as an output
  
  TRISD = 0b00000000; 	 	//Set Polarity of the LED pins
  
  PORTB = 0b00000000;		//Initialise Port B as low
  PORTC = 0b00000000;		//Initialise Port B as low
  PORTD = 0b00000000;		//Initialise Port B as low
	
  //-----Initialise the PIC's SPI Peripheral-----------
  
  SDO = 0;  				//Serial data out pin as low
  SSPSTAT = 0b01000000;     //Set SMP=0 and CKE=1 CKE = 0 
  							//Transmit occurs on transition 
  							//from active to Idle clock state
  SSPCON =  0b01100101;     //Clock = SCK pin.  SS pin control 
  							//disabled,Idle state for clock is 
  							//low, SSPSEN enabled,SSPOV: 
  							//Receive Overflow Indicator enabled
  								
  	//bit 4 CKP: Clock Polarity Select bit
	//1 = Idle state for clock is a high level
	 //0 = Idle state for clock is a low level
	//bit 3-0 SSPM3:SSPM0: Synchronous Serial Port Mo
  
	//If the last 4 bits are 0101 then SPI Slave mode, clock =
	//SCK pin. SS pin control disabled. SS can be used as I/O pin.
	//if the last 4 bits are 0100 then SPI Slave mode, clock =
	//SCK pin. SS pin control enabled.
  
  SSPBUF = 0;					//Clear the SSPBUFFER
}	