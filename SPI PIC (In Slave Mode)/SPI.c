
/************************************************************ 
File Name: SPI.c
Last Date Modified: 20/03/2013
Author: Alex Malcolm

This C file has two functions:

1. To send data packets through the SSPBUFFER to the 
   connected Master Device.
2. To read received data packets from the SSPBUFFER and 
   add them to a global buffer
*************************************************************/

#include <pic.h>
#include <Slave_Hardware.h>
#include <Slave_Global.h>
extern void Delay (double);
extern void Set_LEDs(void);
extern void Clear_LEDs(void);

//*********************************SPI_Write******************

void SPI_Write(unsigned char data_1)
{
  SSPBUF = data_1;			//Write data to SSPBUF
  while(!SSPSTATbits.BF);  	//Wait for SSP buffer to stop sending data
}		

//*********************************SPI_Read*******************

void SPI_Read(void)
{
		SPI_Return = 0;					//Clean buffer
 		SSPBUF = 0b00000000;  			//Initiate bus 
	  	while(!SSPSTATbits.BF);   		//Wait for SSP buffer
  		SPI_Return = SSPBUF;			//Add data packet to buffer
 
   	
 /*  	if (RoverFlow == 1)				//Receive Over Flow Warning
   	{
		Set_LEDs();						//Flash all the LED's
		Delay(1000);
		Set_LEDs();
		Delay(1000);	
		RoverFlow = 0;					//Reset Return Over Flow
	}*/	
}
