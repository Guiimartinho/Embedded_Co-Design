/************************************************************ 
File Name: Slave_Hardware.h
Last Date Modified: 20/03/2013
Author: Alex Malcolm

This header file has one function:

1. To define all of the hardware elements used in the project
   i.e. pins, registers etc.
*************************************************************/

#include <pic.h>

//***********************Definitions***********************

#define MA_LED RD6				//LED pin definitions
#define MB_LED RD5
#define MC_LED RD4
#define MD_LED RC7
#define ME_LED RC6
#define MF_LED RD3
#define MG_LED RD2

//------------PTM Pins-----------

#define PTM1 RB4			
#define PTM2 RB3
#define PTM3 RB2
#define PTM4 RB1
#define PTM5 RB0

//------------SPI PINs-----------

#define SS RA5
#define SCK RC3
#define SDI RC4
#define SDO RC5

//-------------------------------

#define CK_FREQ 20000000;  		//Defines the 20Mhz Oscillator
#define LED RB5					//Fixed board LED

#define RoverFlow SSPOV  		//Recieve Overflow bit = 1 if 
								//new byte is received while the 
								//SSPBUF register is still holding 
								//the previous data.