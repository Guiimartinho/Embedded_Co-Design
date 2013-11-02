
/*************************************************************************************** 

This C file has two functions:

1. To decode messages sent from the Master device to the Slave device and then display a response.
2. To create a message and send that message to the SPI Write function to be sent to the master device.

***************************************************************************************/

#include <pic.h>
#include <Master_Hardware.h>
#include <Master_Global.h>
#include <Messages.h>
extern void Delay (double);
extern void Clear_LEDs(void);
extern void SPI_Write(unsigned char data_1);
extern void SPI_Read(void);

//*******Decode the message from the Slave device and display confirmation*************

void Decode_SM(void)
{

	int DT = 1000; 					//This is the delay time

	    if (SPI_Return == SMA)
	    {
		    LED = 1;
		    MA_LED = 1;
		} 	
		if (SPI_Return == SMB)
	    {
		   	LED = 1;
		    MB_LED = 1;
		} 	
		if (SPI_Return == SMC)
	    {
		    LED = 1;
		    MC_LED = 1;
		} 	
		if (SPI_Return == SMD)
	    {
		    LED = 1;
		    MD_LED = 1;
		} 	
		if (SPI_Return == SME)
	    {
		   	LED = 1;
		    ME_LED = 1;
		} 	
		if (SPI_Return == SMF)
	    {
		    LED = 1;
		    MF_LED = 1;
		} 	
		if (SPI_Return == SMG)
	    {
		    LED = 1;
		    MG_LED = 1;
		} 	 
		Delay(DT);
		LED = 0;
		Clear_LEDs();
		Delay(DT);
}		

//*****Send a Message to the SPI_Write function to be sent onto the Slave Device******
 
 void Send_MS(void)
 {
	 int DT = 1000; 
	 
	 if (PTM1 == 1)
	 {
		LED = 1;
		MA_LED = 1; 
		SPI_Write(MSA);
		SPI_Read();
		Decode_SM();
	 } 
	 if (PTM2 == 1)
	 {
		LED = 1;
		MB_LED = 1;
		SPI_Write(MSB);
		SPI_Read();
		Decode_SM();
	 } 
	 if (PTM3 == 1)
	 {
		LED = 1;
		MC_LED = 1; 
		SPI_Write(MSC);
		SPI_Read();
		Decode_SM();
	 } 
	 if (PTM4 == 1)
	 {
		LED = 1;
		MD_LED = 1;
		SPI_Write(MSD);
		SPI_Read();
		Decode_SM();
	 } 
	 if (PTM5 == 1)
	 {
		LED = 1;
		ME_LED = 1; 
		SPI_Write(MSE);
		SPI_Read();
		Decode_SM();
	 } 
	 Delay(DT);
	 LED = 0;
	 Clear_LEDs();
	 Delay(DT);
 }
