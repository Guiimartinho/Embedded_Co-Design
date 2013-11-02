
#include <pic.h>
#include <Master_Hardware.h>
#include <Master_Global.h>
extern void Delay (double);

//*********************************SPI_Write************************************

void SPI_Write(unsigned char data_1)
{ 
  SSPBUF = data_1;							//Write data to SSPBUF
  while(!SSPSTATbits.BF);  					//Wait for SSP buffer to stop sending data    	  		
}		

//*********************************SPI_Read************************************

void SPI_Read(void)
{
		SPI_Return = 0;
 		SSPBUF = 0b00000000;  				// initiate bus 
	  	while(!SSPSTATbits.BF);   			// Wait for SSP buffer to stop sending data
  		SPI_Return = SSPBUF;				
}
