
/************************************************************ 
File Name: Decode_Create_MSG.c
Last Date Modified: 20/03/2013
Author: Alex Malcolm

This C file has two functions:

1. To decode messages sent from the Master device to the 
   Slave device and then display a response.
2. To decide which if any messages need to be sent to the 
   SPI Write function, which will then be forwarded over to 
   the master device.
**********************************************************/

#include <pic.h>
#include <Slave_Hardware.h>
#include <Slave_Global.h>
#include <Messages.h>
extern void Delay (double);
extern void Clear_LEDs(void);
extern void SPI_Write(unsigned char data_1);

//*******Decode_MS function (Master to Slave)***********

void Decode_MS(void)
{

	int DT = 1000; 			//This is the delay time

	    if (SPI_Return == MSA)
	    {
		    MA_LED = 1;
		} 	
		if (SPI_Return == MSB)
	    {
		    MB_LED = 1;
		} 	
		if (SPI_Return == MSC)
	    {
		    MC_LED = 1;
		} 	
		if (SPI_Return == MSD)
		{
		    MD_LED = 1;
		} 	
		if (SPI_Return == MSE)
	    {
		    ME_LED = 1;
		} 	
		if (SPI_Return == MSF)
	    {
		    MF_LED = 1;
		} 	
		if (SPI_Return == MSG)
	    {
		    MG_LED = 1;
		} 	 
		Delay(DT);
		LED = 0;
		Clear_LEDs();
		Delay(DT);
}		

//********Send_SM Function (Slave to Master)*****
 
 void Send_SM(void)
 {
	 int DT = 1000; 	//This is the delay time
	 
	 if (PTM1 == 1)
	 {
		SPI_Write(SMA);
		MA_LED = 1; 
	 } 
	 if (PTM2 == 1)
	 {
		SPI_Write(SMB);
		MB_LED = 1;
	 } 
	 if (PTM3 == 1)
	 {
		SPI_Write(SMC);
		MC_LED = 1; 
	 } 
	 if (PTM4 == 1)
	 {
		SPI_Write(SMD);
		MD_LED = 1;
	 } 
	 if (PTM5 == 1)
	 {
		SPI_Write(SME);
		ME_LED = 1; 
	 } 
	 Delay(DT);
	 Clear_LEDs();
	 Delay(DT);
 }
