/************************************************************
File Name: main.c
Last Date Modified: 20/03/2013
Author: Alex Malcolm

This project is intended to be programmed to a slave PIC16F877A 
device and it requires four header files and four C files:

pic.h					Decode_Create_MSG.c
Slave_Hardware.h		main.c
Slave_Global.h			Slave_Initilisiation.c
Messages.h				SPI.c

This C file has multiple functions:

1. To set all of the required configuration bits.
2. To prototype all of the functions used within the project.
3. To start the PICs initialisation procedure.
4. To initiate the unending loop of reading from the SPI buffer,
   decoding received data packets, and forwarding return packets
   to the connected master device.
5. A delay subroutine.
6. LED subroutines.
*************************************************************/

#include <pic.h>
#include <Slave_Hardware.h>
#include <Slave_Global.h>
#include <Messages.h>

//****************Setup Configuration**************

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & LVP_OFF);

/*
FOSC_HS tells the PIC that a High Speed Oscillator is to be 
used i.e 4mhz - 20Mhz
WDTE_OFF disables the internal watch dog timer
PWRT_OFF disables Power Up Timer
CP_OFF disables Code Protection
BOREN_OFF disables Brown Out Reset 
LVP_OFF disables Low Voltage Programming
*/

//****************Prototype Functions**************
 
void Delay(double);	 
void SPI_Write(unsigned char data_1);
void SPI_Read(void);
void Decode_MS(void);
void Send_SM(void);
void Slave_Initialisation(void);
void Clear_LEDs(void);
void Set_LEDs(void);

//****************************Main Function**************************
 
void main()				
{
  Slave_Initialisation();			//Initialises the PIC & Port Expander 	

  for(;;)							//infinite loop
    {
	    LED = 1;
	    SPI_Read();	 				//Read the received data packet			
	 	Decode_MS();				//Decode the message from master 
  		Send_SM();					//Send a return message to the master
  		Delay(200);
  		LED = 0;
  		Delay(200);
	}                                                                           
}
 //*********************************Delay Function*****************
 	
void Delay(double delay_time)				

	{
		int a = 0;
		for ( a = 0; a < delay_time; a ++ )
		{ }	
	}
 
//*********************************Clear LEDs Function*************
 
void Clear_LEDs(void)		
{
	MA_LED = 0;
	MB_LED = 0;
	MC_LED = 0;
	MD_LED = 0;
	ME_LED = 0;
	MF_LED = 0;
	MG_LED = 0;
}	

//*********************************Set LEDs Function**************
 
void Set_LEDs(void)
{
	MA_LED = 1;
	MB_LED = 1;
	MC_LED = 1;
	MD_LED = 1;
	ME_LED = 1;
	MF_LED = 1;
	MG_LED = 1;
}	

