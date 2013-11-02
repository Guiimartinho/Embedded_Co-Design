/********************************************************* 
File Name: Messages.h
Last Date Modified: 20/03/2013
Author: Alex Malcolm

This header file has one function:

1. To store pre-determined packets that can be used to 
   compare with incoming data

**********************************************************/

#include <pic.h>

//MS = Master to Slave message


#define MSA   0xBE //0b00000001 0xDE//
#define MSB   0xEF //0xAD  //0b00000010 0xEA//
#define MSC   0b00000011 //0xBE //0b10000011 0xBE//
#define MSD   0b00000100 //0xEF //0b00000100 0xEF//
#define MSE   0b00000101 //0x00//
#define MSF   0b00000110 //0x00//
#define MSG   0b00000111 //0x00//

//SM = Slave to Master message

#define SMA   0b10000000 //0x00//
#define SMB   0xBE//0b01000000 //0x00//
#define SMC   0xEF//0b11000000 //0x00//
#define SMD   0b00100000 //0xDE//
#define SME   0b10100000 //0xAD//
#define SMF   0b01100000 //0xBE//
#define SMG   0b11100000 //0xEF//