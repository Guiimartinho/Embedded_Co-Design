/*************************************************************

This project is intended to be programmed to the master device

**************************************************************/


#include <pic.h>
#include <Master_Hardware.h>
#include <Master_Global.h>
#include <Messages.h>


//***Setup Configuration*******

__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & LVP_OFF);

/*
FOSC_HS tells the PIC that a High Speed Oscillator is to be used i.e 4mhz - 20Mhz
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
void Master_Initialisation(void);
void Send_MS(void);
void Decode_SM(void);
void Clear_LEDs(void);
void High_LEDs(void);

//*********************************Main Function*********************************
 
void main()				
{
  Master_Initialisation();		//Initialises the PIC & Port Expander 
  	
  for(;;)						//infinite loop
  {
 	Send_MS();					//Send a message to the slave device ad display the sent message
  } 	 
}  
                                                                          
 //*********************************Delay Function*********************************
 	
void Delay (double delay_time)					//Return "double" Delay ( Receive "double" )

	{
		int a = 0;
		for ( a = 0; a < delay_time; a ++ )
		{ }	
	}
 
//*********************************Clear LEDs Function*********************************
 
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

//*********************************High LEDs Function*********************************
 
void High_LEDs(void)
{
	MA_LED = 1;
	MB_LED = 1;
	MC_LED = 1;
	MD_LED = 1;
	ME_LED = 1;
	MF_LED = 1;
	MG_LED = 1;
}	
