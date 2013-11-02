#ifndef _ASPIC_H_
#warning Header file as16f877a.h included directly. Including <aspic.h> instead
#include <aspic.h>
#else
#ifndef _AS16F877A_H_
#define _AS16F877A_H_

INDF                                   equ 0000h
TMR0                                   equ 0001h
PCL                                    equ 0002h
STATUS                                 equ 0003h
#define CARRY                          BANKMASK(STATUS), 0
#define DC                             BANKMASK(STATUS), 1
#define ZERO                           BANKMASK(STATUS), 2
#define nPD                            BANKMASK(STATUS), 3
#define nTO                            BANKMASK(STATUS), 4
#define IRP                            BANKMASK(STATUS), 7
#define RP0                            BANKMASK(STATUS), 5
#define RP1                            BANKMASK(STATUS), 6
#ifndef _LIB_BUILD
#endif
FSR                                    equ 0004h
PORTA                                  equ 0005h
#define RA0                            BANKMASK(PORTA), 0
#define RA1                            BANKMASK(PORTA), 1
#define RA2                            BANKMASK(PORTA), 2
#define RA3                            BANKMASK(PORTA), 3
#define RA4                            BANKMASK(PORTA), 4
#define RA5                            BANKMASK(PORTA), 5
#ifndef _LIB_BUILD
#endif
PORTB                                  equ 0006h
#define RB0                            BANKMASK(PORTB), 0
#define RB1                            BANKMASK(PORTB), 1
#define RB2                            BANKMASK(PORTB), 2
#define RB3                            BANKMASK(PORTB), 3
#define RB4                            BANKMASK(PORTB), 4
#define RB5                            BANKMASK(PORTB), 5
#define RB6                            BANKMASK(PORTB), 6
#define RB7                            BANKMASK(PORTB), 7
#ifndef _LIB_BUILD
#endif
PORTC                                  equ 0007h
#define RC0                            BANKMASK(PORTC), 0
#define RC1                            BANKMASK(PORTC), 1
#define RC2                            BANKMASK(PORTC), 2
#define RC3                            BANKMASK(PORTC), 3
#define RC4                            BANKMASK(PORTC), 4
#define RC5                            BANKMASK(PORTC), 5
#define RC6                            BANKMASK(PORTC), 6
#define RC7                            BANKMASK(PORTC), 7
#ifndef _LIB_BUILD
#endif
PORTD                                  equ 0008h
#define RD0                            BANKMASK(PORTD), 0
#define RD1                            BANKMASK(PORTD), 1
#define RD2                            BANKMASK(PORTD), 2
#define RD3                            BANKMASK(PORTD), 3
#define RD4                            BANKMASK(PORTD), 4
#define RD5                            BANKMASK(PORTD), 5
#define RD6                            BANKMASK(PORTD), 6
#define RD7                            BANKMASK(PORTD), 7
#ifndef _LIB_BUILD
#endif
PORTE                                  equ 0009h
#define RE0                            BANKMASK(PORTE), 0
#define RE1                            BANKMASK(PORTE), 1
#define RE2                            BANKMASK(PORTE), 2
#ifndef _LIB_BUILD
#endif
PCLATH                                 equ 000Ah
#ifndef _LIB_BUILD
#endif
INTCON                                 equ 000Bh
#define RBIF                           BANKMASK(INTCON), 0
#define INTF                           BANKMASK(INTCON), 1
#define TMR0IF                         BANKMASK(INTCON), 2
#define RBIE                           BANKMASK(INTCON), 3
#define INTE                           BANKMASK(INTCON), 4
#define TMR0IE                         BANKMASK(INTCON), 5
#define PEIE                           BANKMASK(INTCON), 6
#define GIE                            BANKMASK(INTCON), 7
#define T0IF                           BANKMASK(INTCON), 2
#define T0IE                           BANKMASK(INTCON), 5
#ifndef _LIB_BUILD
#endif
PIR1                                   equ 000Ch
#define TMR1IF                         BANKMASK(PIR1), 0
#define TMR2IF                         BANKMASK(PIR1), 1
#define CCP1IF                         BANKMASK(PIR1), 2
#define SSPIF                          BANKMASK(PIR1), 3
#define TXIF                           BANKMASK(PIR1), 4
#define RCIF                           BANKMASK(PIR1), 5
#define ADIF                           BANKMASK(PIR1), 6
#define PSPIF                          BANKMASK(PIR1), 7
#ifndef _LIB_BUILD
#endif
PIR2                                   equ 000Dh
#define CCP2IF                         BANKMASK(PIR2), 0
#define BCLIF                          BANKMASK(PIR2), 3
#define EEIF                           BANKMASK(PIR2), 4
#define CMIF                           BANKMASK(PIR2), 6
#ifndef _LIB_BUILD
#endif
TMR1L                                  equ 000Eh
TMR1H                                  equ 000Fh
T1CON                                  equ 0010h
#define TMR1ON                         BANKMASK(T1CON), 0
#define TMR1CS                         BANKMASK(T1CON), 1
#define nT1SYNC                        BANKMASK(T1CON), 2
#define T1OSCEN                        BANKMASK(T1CON), 3
#define T1SYNC                         BANKMASK(T1CON), 2
#define T1CKPS0                        BANKMASK(T1CON), 4
#define T1CKPS1                        BANKMASK(T1CON), 5
#define T1INSYNC                       BANKMASK(T1CON), 2
#ifndef _LIB_BUILD
#endif
TMR2                                   equ 0011h
T2CON                                  equ 0012h
#define TMR2ON                         BANKMASK(T2CON), 2
#define T2CKPS0                        BANKMASK(T2CON), 0
#define T2CKPS1                        BANKMASK(T2CON), 1
#define TOUTPS0                        BANKMASK(T2CON), 3
#define TOUTPS1                        BANKMASK(T2CON), 4
#define TOUTPS2                        BANKMASK(T2CON), 5
#define TOUTPS3                        BANKMASK(T2CON), 6
#ifndef _LIB_BUILD
#endif
SSPBUF                                 equ 0013h
SSPCON                                 equ 0014h
#define CKP                            BANKMASK(SSPCON), 4
#define SSPEN                          BANKMASK(SSPCON), 5
#define SSPOV                          BANKMASK(SSPCON), 6
#define WCOL                           BANKMASK(SSPCON), 7
#define SSPM0                          BANKMASK(SSPCON), 0
#define SSPM1                          BANKMASK(SSPCON), 1
#define SSPM2                          BANKMASK(SSPCON), 2
#define SSPM3                          BANKMASK(SSPCON), 3
#ifndef _LIB_BUILD
#endif
CCPR1L                                 equ 0015h
CCPR1H                                 equ 0016h
CCP1CON                                equ 0017h
#define CCP1Y                          BANKMASK(CCP1CON), 4
#define CCP1X                          BANKMASK(CCP1CON), 5
#define CCP1M0                         BANKMASK(CCP1CON), 0
#define CCP1M1                         BANKMASK(CCP1CON), 1
#define CCP1M2                         BANKMASK(CCP1CON), 2
#define CCP1M3                         BANKMASK(CCP1CON), 3
#ifndef _LIB_BUILD
#endif
RCSTA                                  equ 0018h
#define RX9D                           BANKMASK(RCSTA), 0
#define OERR                           BANKMASK(RCSTA), 1
#define FERR                           BANKMASK(RCSTA), 2
#define ADDEN                          BANKMASK(RCSTA), 3
#define CREN                           BANKMASK(RCSTA), 4
#define SREN                           BANKMASK(RCSTA), 5
#define RX9                            BANKMASK(RCSTA), 6
#define SPEN                           BANKMASK(RCSTA), 7
#define RCD8                           BANKMASK(RCSTA), 0
#define RC9                            BANKMASK(RCSTA), 6
#define nRC8                           BANKMASK(RCSTA), 6
#define RC8_9                          BANKMASK(RCSTA), 6
#ifndef _LIB_BUILD
#endif
TXREG                                  equ 0019h
RCREG                                  equ 001Ah
CCPR2L                                 equ 001Bh
CCPR2H                                 equ 001Ch
CCP2CON                                equ 001Dh
#define CCP2Y                          BANKMASK(CCP2CON), 4
#define CCP2X                          BANKMASK(CCP2CON), 5
#define CCP2M0                         BANKMASK(CCP2CON), 0
#define CCP2M1                         BANKMASK(CCP2CON), 1
#define CCP2M2                         BANKMASK(CCP2CON), 2
#define CCP2M3                         BANKMASK(CCP2CON), 3
#ifndef _LIB_BUILD
#endif
ADRESH                                 equ 001Eh
ADCON0                                 equ 001Fh
#define ADON                           BANKMASK(ADCON0), 0
#define GO_nDONE                       BANKMASK(ADCON0), 2
#define GO                             BANKMASK(ADCON0), 2
#define CHS0                           BANKMASK(ADCON0), 3
#define CHS1                           BANKMASK(ADCON0), 4
#define CHS2                           BANKMASK(ADCON0), 5
#define ADCS0                          BANKMASK(ADCON0), 6
#define ADCS1                          BANKMASK(ADCON0), 7
#define nDONE                          BANKMASK(ADCON0), 2
#define GO_DONE                        BANKMASK(ADCON0), 2
#ifndef _LIB_BUILD
#endif
OPTION_REG                             equ 0081h
#define PSA                            BANKMASK(OPTION_REG), 3
#define T0SE                           BANKMASK(OPTION_REG), 4
#define T0CS                           BANKMASK(OPTION_REG), 5
#define INTEDG                         BANKMASK(OPTION_REG), 6
#define nRBPU                          BANKMASK(OPTION_REG), 7
#define PS0                            BANKMASK(OPTION_REG), 0
#define PS1                            BANKMASK(OPTION_REG), 1
#define PS2                            BANKMASK(OPTION_REG), 2
#ifndef _LIB_BUILD
#endif
TRISA                                  equ 0085h
#define TRISA0                         BANKMASK(TRISA), 0
#define TRISA1                         BANKMASK(TRISA), 1
#define TRISA2                         BANKMASK(TRISA), 2
#define TRISA3                         BANKMASK(TRISA), 3
#define TRISA4                         BANKMASK(TRISA), 4
#define TRISA5                         BANKMASK(TRISA), 5
#ifndef _LIB_BUILD
#endif
TRISB                                  equ 0086h
#define TRISB0                         BANKMASK(TRISB), 0
#define TRISB1                         BANKMASK(TRISB), 1
#define TRISB2                         BANKMASK(TRISB), 2
#define TRISB3                         BANKMASK(TRISB), 3
#define TRISB4                         BANKMASK(TRISB), 4
#define TRISB5                         BANKMASK(TRISB), 5
#define TRISB6                         BANKMASK(TRISB), 6
#define TRISB7                         BANKMASK(TRISB), 7
#ifndef _LIB_BUILD
#endif
TRISC                                  equ 0087h
#define TRISC0                         BANKMASK(TRISC), 0
#define TRISC1                         BANKMASK(TRISC), 1
#define TRISC2                         BANKMASK(TRISC), 2
#define TRISC3                         BANKMASK(TRISC), 3
#define TRISC4                         BANKMASK(TRISC), 4
#define TRISC5                         BANKMASK(TRISC), 5
#define TRISC6                         BANKMASK(TRISC), 6
#define TRISC7                         BANKMASK(TRISC), 7
#ifndef _LIB_BUILD
#endif
TRISD                                  equ 0088h
#define TRISD0                         BANKMASK(TRISD), 0
#define TRISD1                         BANKMASK(TRISD), 1
#define TRISD2                         BANKMASK(TRISD), 2
#define TRISD3                         BANKMASK(TRISD), 3
#define TRISD4                         BANKMASK(TRISD), 4
#define TRISD5                         BANKMASK(TRISD), 5
#define TRISD6                         BANKMASK(TRISD), 6
#define TRISD7                         BANKMASK(TRISD), 7
#ifndef _LIB_BUILD
#endif
TRISE                                  equ 0089h
#define TRISE0                         BANKMASK(TRISE), 0
#define TRISE1                         BANKMASK(TRISE), 1
#define TRISE2                         BANKMASK(TRISE), 2
#define PSPMODE                        BANKMASK(TRISE), 4
#define IBOV                           BANKMASK(TRISE), 5
#define OBF                            BANKMASK(TRISE), 6
#define IBF                            BANKMASK(TRISE), 7
#ifndef _LIB_BUILD
#endif
PIE1                                   equ 008Ch
#define TMR1IE                         BANKMASK(PIE1), 0
#define TMR2IE                         BANKMASK(PIE1), 1
#define CCP1IE                         BANKMASK(PIE1), 2
#define SSPIE                          BANKMASK(PIE1), 3
#define TXIE                           BANKMASK(PIE1), 4
#define RCIE                           BANKMASK(PIE1), 5
#define ADIE                           BANKMASK(PIE1), 6
#define PSPIE                          BANKMASK(PIE1), 7
#ifndef _LIB_BUILD
#endif
PIE2                                   equ 008Dh
#define CCP2IE                         BANKMASK(PIE2), 0
#define BCLIE                          BANKMASK(PIE2), 3
#define EEIE                           BANKMASK(PIE2), 4
#define CMIE                           BANKMASK(PIE2), 6
#ifndef _LIB_BUILD
#endif
PCON                                   equ 008Eh
#define nBOR                           BANKMASK(PCON), 0
#define nPOR                           BANKMASK(PCON), 1
#define nBO                            BANKMASK(PCON), 0
#ifndef _LIB_BUILD
#endif
SSPCON2                                equ 0091h
#define SEN                            BANKMASK(SSPCON2), 0
#define RSEN                           BANKMASK(SSPCON2), 1
#define PEN                            BANKMASK(SSPCON2), 2
#define RCEN                           BANKMASK(SSPCON2), 3
#define ACKEN                          BANKMASK(SSPCON2), 4
#define ACKDT                          BANKMASK(SSPCON2), 5
#define ACKSTAT                        BANKMASK(SSPCON2), 6
#define GCEN                           BANKMASK(SSPCON2), 7
#ifndef _LIB_BUILD
#endif
PR2                                    equ 0092h
SSPADD                                 equ 0093h
SSPSTAT                                equ 0094h
#define BF                             BANKMASK(SSPSTAT), 0
#define UA                             BANKMASK(SSPSTAT), 1
#define R_nW                           BANKMASK(SSPSTAT), 2
#define S                              BANKMASK(SSPSTAT), 3
#define P                              BANKMASK(SSPSTAT), 4
#define D_nA                           BANKMASK(SSPSTAT), 5
#define CKE                            BANKMASK(SSPSTAT), 6
#define SMP                            BANKMASK(SSPSTAT), 7
#define R                              BANKMASK(SSPSTAT), 2
#define D                              BANKMASK(SSPSTAT), 5
#define I2C_READ                       BANKMASK(SSPSTAT), 2
#define I2C_START                      BANKMASK(SSPSTAT), 3
#define I2C_STOP                       BANKMASK(SSPSTAT), 4
#define I2C_DATA                       BANKMASK(SSPSTAT), 5
#define nW                             BANKMASK(SSPSTAT), 2
#define nA                             BANKMASK(SSPSTAT), 5
#define nWRITE                         BANKMASK(SSPSTAT), 2
#define nADDRESS                       BANKMASK(SSPSTAT), 5
#define R_W                            BANKMASK(SSPSTAT), 2
#define D_A                            BANKMASK(SSPSTAT), 5
#define READ_WRITE                     BANKMASK(SSPSTAT), 2
#define DATA_ADDRESS                   BANKMASK(SSPSTAT), 5
#ifndef _LIB_BUILD
#endif
TXSTA                                  equ 0098h
#define TX9D                           BANKMASK(TXSTA), 0
#define TRMT                           BANKMASK(TXSTA), 1
#define BRGH                           BANKMASK(TXSTA), 2
#define SYNC                           BANKMASK(TXSTA), 4
#define TXEN                           BANKMASK(TXSTA), 5
#define TX9                            BANKMASK(TXSTA), 6
#define CSRC                           BANKMASK(TXSTA), 7
#define TXD8                           BANKMASK(TXSTA), 0
#define nTX8                           BANKMASK(TXSTA), 6
#define TX8_9                          BANKMASK(TXSTA), 6
#ifndef _LIB_BUILD
#endif
SPBRG                                  equ 0099h
CMCON                                  equ 009Ch
#define CIS                            BANKMASK(CMCON), 3
#define C1INV                          BANKMASK(CMCON), 4
#define C2INV                          BANKMASK(CMCON), 5
#define C1OUT                          BANKMASK(CMCON), 6
#define C2OUT                          BANKMASK(CMCON), 7
#define CM0                            BANKMASK(CMCON), 0
#define CM1                            BANKMASK(CMCON), 1
#define CM2                            BANKMASK(CMCON), 2
#ifndef _LIB_BUILD
#endif
CVRCON                                 equ 009Dh
#define CVRR                           BANKMASK(CVRCON), 5
#define CVROE                          BANKMASK(CVRCON), 6
#define CVREN                          BANKMASK(CVRCON), 7
#define CVR0                           BANKMASK(CVRCON), 0
#define CVR1                           BANKMASK(CVRCON), 1
#define CVR2                           BANKMASK(CVRCON), 2
#define CVR3                           BANKMASK(CVRCON), 3
#ifndef _LIB_BUILD
#endif
ADRESL                                 equ 009Eh
ADCON1                                 equ 009Fh
#define ADCS2                          BANKMASK(ADCON1), 6
#define ADFM                           BANKMASK(ADCON1), 7
#define PCFG0                          BANKMASK(ADCON1), 0
#define PCFG1                          BANKMASK(ADCON1), 1
#define PCFG2                          BANKMASK(ADCON1), 2
#define PCFG3                          BANKMASK(ADCON1), 3
#ifndef _LIB_BUILD
#endif
EEDATA                                 equ 010Ch
EEADR                                  equ 010Dh
EEDATH                                 equ 010Eh
#ifndef _LIB_BUILD
#endif
EEADRH                                 equ 010Fh
#ifndef _LIB_BUILD
#endif
EECON1                                 equ 018Ch
#define RD                             BANKMASK(EECON1), 0
#define WR                             BANKMASK(EECON1), 1
#define WREN                           BANKMASK(EECON1), 2
#define WRERR                          BANKMASK(EECON1), 3
#define EEPGD                          BANKMASK(EECON1), 7
#ifndef _LIB_BUILD
#endif
EECON2                                 equ 018Dh

#endif
#endif
