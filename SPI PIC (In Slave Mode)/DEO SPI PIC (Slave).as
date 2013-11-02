opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 33 "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 33 "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\main.c"
	dw 0xFFFE & 0xFFFB & 0xFFFF & 0xFFFF & 0xFFFF & 0xFFBF & 0xFF7F ;#
	FNCALL	_main,_Slave_Initialisation
	FNCALL	_main,_SPI_Read
	FNCALL	_main,_Decode_MS
	FNCALL	_main,_Send_SM
	FNCALL	_main,_Delay
	FNCALL	_Send_SM,_SPI_Write
	FNCALL	_Send_SM,___awtoft
	FNCALL	_Send_SM,_Delay
	FNCALL	_Send_SM,_Clear_LEDs
	FNCALL	_Decode_MS,___awtoft
	FNCALL	_Decode_MS,_Delay
	FNCALL	_Decode_MS,_Clear_LEDs
	FNCALL	_Delay,___awtoft
	FNCALL	_Delay,___ftge
	FNCALL	___awtoft,___ftpack
	FNROOT	_main
	global	_SPI_Return
	global	_PORTB
psect	text294,local,class=CODE,delta=2
global __ptext294
__ptext294:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_SSPSTATbits
_SSPSTATbits	set	148
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"DEO SPI PIC (Slave).as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_SPI_Return:
       ds      4

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Slave_Initialisation
?_Slave_Initialisation:	; 0 bytes @ 0x0
	global	??_Slave_Initialisation
??_Slave_Initialisation:	; 0 bytes @ 0x0
	global	?_SPI_Read
?_SPI_Read:	; 0 bytes @ 0x0
	global	??_SPI_Read
??_SPI_Read:	; 0 bytes @ 0x0
	global	?_Decode_MS
?_Decode_MS:	; 0 bytes @ 0x0
	global	?_Send_SM
?_Send_SM:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_Clear_LEDs
?_Clear_LEDs:	; 0 bytes @ 0x0
	global	??_Clear_LEDs
??_Clear_LEDs:	; 0 bytes @ 0x0
	global	?_SPI_Write
?_SPI_Write:	; 0 bytes @ 0x0
	global	??_SPI_Write
??_SPI_Write:	; 0 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	SPI_Write@data_1
SPI_Write@data_1:	; 1 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	ds	3
	global	?___ftge
?___ftge:	; 1 bit 
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x8
	ds	3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0xB
	ds	3
	global	??_Decode_MS
??_Decode_MS:	; 0 bytes @ 0xE
	global	??_Send_SM
??_Send_SM:	; 0 bytes @ 0xE
	global	??_Delay
??_Delay:	; 0 bytes @ 0xE
	global	??_main
??_main:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___ftge
??___ftge:	; 0 bytes @ 0x0
	ds	6
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x6
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x6
	ds	3
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x9
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	ds	1
	global	?_Delay
?_Delay:	; 0 bytes @ 0xC
	global	Delay@delay_time
Delay@delay_time:	; 3 bytes @ 0xC
	ds	3
	global	Delay@a
Delay@a:	; 2 bytes @ 0xF
	ds	2
	global	Decode_MS@DT
Decode_MS@DT:	; 2 bytes @ 0x11
	global	Send_SM@DT
Send_SM@DT:	; 2 bytes @ 0x11
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     19      23
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _Delay->___ftge
;;   ___awtoft->___ftge
;;   ___ftge->___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Decode_MS
;;   _main->_Send_SM
;;   _Send_SM->_Delay
;;   _Decode_MS->_Delay
;;   _Delay->___awtoft
;;   ___awtoft->___ftge
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0    2161
;;               _Slave_Initialisation
;;                           _SPI_Read
;;                          _Decode_MS
;;                            _Send_SM
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (1) _Send_SM                                              2     2      0     850
;;                                             17 BANK0      2     2      0
;;                          _SPI_Write
;;                           ___awtoft
;;                              _Delay
;;                         _Clear_LEDs
;; ---------------------------------------------------------------------------------
;; (1) _Decode_MS                                            2     2      0     828
;;                                             17 BANK0      2     2      0
;;                           ___awtoft
;;                              _Delay
;;                         _Clear_LEDs
;; ---------------------------------------------------------------------------------
;; (1) _Delay                                                5     2      3     483
;;                                             12 BANK0      5     2      3
;;                           ___awtoft
;;                             ___ftge
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             6     3      3     300
;;                                              6 BANK0      6     3      3
;;                           ___ftpack
;;                             ___ftge (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftge                                              12     6      6     136
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0      6     6      0
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (2) _SPI_Write                                            1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _Clear_LEDs                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _SPI_Read                                             4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _Slave_Initialisation                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Slave_Initialisation
;;   _SPI_Read
;;   _Decode_MS
;;     ___awtoft
;;       ___ftpack
;;       ___ftge (ARG)
;;         ___ftpack (ARG)
;;     _Delay
;;       ___awtoft
;;         ___ftpack
;;         ___ftge (ARG)
;;           ___ftpack (ARG)
;;       ___ftge
;;         ___ftpack (ARG)
;;     _Clear_LEDs
;;   _Send_SM
;;     _SPI_Write
;;     ___awtoft
;;       ___ftpack
;;       ___ftge (ARG)
;;         ___ftpack (ARG)
;;     _Delay
;;       ___awtoft
;;         ___ftpack
;;         ___ftge (ARG)
;;           ___ftpack (ARG)
;;       ___ftge
;;         ___ftpack (ARG)
;;     _Clear_LEDs
;;   _Delay
;;     ___awtoft
;;       ___ftpack
;;       ___ftge (ARG)
;;         ___ftpack (ARG)
;;     ___ftge
;;       ___ftpack (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      25       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     13      17       5       28.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      29      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 59 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Slave_Initialisation
;;		_SPI_Read
;;		_Decode_MS
;;		_Send_SM
;;		_Delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\main.c"
	line	59
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	60
	
l5299:	
;main.c: 60: Slave_Initialisation();
	fcall	_Slave_Initialisation
	goto	l5301
	line	63
;main.c: 62: for(;;)
	
l697:	
	line	64
	
l5301:	
;main.c: 63: {
;main.c: 64: RB5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	line	65
;main.c: 65: SPI_Read();
	fcall	_SPI_Read
	line	66
;main.c: 66: Decode_MS();
	fcall	_Decode_MS
	line	67
;main.c: 67: Send_SM();
	fcall	_Send_SM
	line	68
;main.c: 68: Delay(200);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	0x48
	movwf	(?_Delay+1)
	movlw	0x43
	movwf	(?_Delay+2)
	fcall	_Delay
	line	69
	
l5303:	
;main.c: 69: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	line	70
;main.c: 70: Delay(200);
	movlw	0x0
	movwf	(?_Delay)
	movlw	0x48
	movwf	(?_Delay+1)
	movlw	0x43
	movwf	(?_Delay+2)
	fcall	_Delay
	line	71
;main.c: 71: }
	goto	l5301
	
l698:	
	line	72
	
l699:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Send_SM
psect	text295,local,class=CODE,delta=2
global __ptext295
__ptext295:

;; *************** function _Send_SM *****************
;; Defined at:
;;		line 68 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\Decode_Create_MSG.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DT              2   17[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SPI_Write
;;		___awtoft
;;		_Delay
;;		_Clear_LEDs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text295
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\Decode_Create_MSG.c"
	line	68
	global	__size_of_Send_SM
	__size_of_Send_SM	equ	__end_of_Send_SM-_Send_SM
	
_Send_SM:	
	opt	stack 4
; Regs used in _Send_SM: [wreg+status,2+status,0+pclath+cstack]
	line	69
	
l5263:	
;Decode_Create_MSG.c: 69: int DT = 1000;
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Send_SM@DT)
	movlw	high(03E8h)
	movwf	((Send_SM@DT))+1
	line	71
	
l5265:	
;Decode_Create_MSG.c: 71: if (RB4 == 1)
	btfss	(52/8),(52)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l5271
u3180:
	line	73
	
l5267:	
;Decode_Create_MSG.c: 72: {
;Decode_Create_MSG.c: 73: SPI_Write(0b10000000);
	movlw	(080h)
	fcall	_SPI_Write
	line	74
	
l5269:	
;Decode_Create_MSG.c: 74: RD6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	l5271
	line	75
	
l2797:	
	line	76
	
l5271:	
;Decode_Create_MSG.c: 75: }
;Decode_Create_MSG.c: 76: if (RB3 == 1)
	btfss	(51/8),(51)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l5277
u3190:
	line	78
	
l5273:	
;Decode_Create_MSG.c: 77: {
;Decode_Create_MSG.c: 78: SPI_Write(0xBE);
	movlw	(0BEh)
	fcall	_SPI_Write
	line	79
	
l5275:	
;Decode_Create_MSG.c: 79: RD5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	l5277
	line	80
	
l2798:	
	line	81
	
l5277:	
;Decode_Create_MSG.c: 80: }
;Decode_Create_MSG.c: 81: if (RB2 == 1)
	btfss	(50/8),(50)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l5283
u3200:
	line	83
	
l5279:	
;Decode_Create_MSG.c: 82: {
;Decode_Create_MSG.c: 83: SPI_Write(0xEF);
	movlw	(0EFh)
	fcall	_SPI_Write
	line	84
	
l5281:	
;Decode_Create_MSG.c: 84: RD4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	l5283
	line	85
	
l2799:	
	line	86
	
l5283:	
;Decode_Create_MSG.c: 85: }
;Decode_Create_MSG.c: 86: if (RB1 == 1)
	btfss	(49/8),(49)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l5289
u3210:
	line	88
	
l5285:	
;Decode_Create_MSG.c: 87: {
;Decode_Create_MSG.c: 88: SPI_Write(0b00100000);
	movlw	(020h)
	fcall	_SPI_Write
	line	89
	
l5287:	
;Decode_Create_MSG.c: 89: RC7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(63/8),(63)&7
	goto	l5289
	line	90
	
l2800:	
	line	91
	
l5289:	
;Decode_Create_MSG.c: 90: }
;Decode_Create_MSG.c: 91: if (RB0 == 1)
	btfss	(48/8),(48)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l2801
u3220:
	line	93
	
l5291:	
;Decode_Create_MSG.c: 92: {
;Decode_Create_MSG.c: 93: SPI_Write(0b10100000);
	movlw	(0A0h)
	fcall	_SPI_Write
	line	94
	
l5293:	
;Decode_Create_MSG.c: 94: RC6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	line	95
	
l2801:	
	line	96
;Decode_Create_MSG.c: 95: }
;Decode_Create_MSG.c: 96: Delay(DT);
	movf	(Send_SM@DT+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(Send_SM@DT),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?_Delay)
	movf	(1+(?___awtoft)),w
	movwf	(?_Delay+1)
	movf	(2+(?___awtoft)),w
	movwf	(?_Delay+2)
	fcall	_Delay
	line	97
	
l5295:	
;Decode_Create_MSG.c: 97: Clear_LEDs();
	fcall	_Clear_LEDs
	line	98
	
l5297:	
;Decode_Create_MSG.c: 98: Delay(DT);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Send_SM@DT+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(Send_SM@DT),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?_Delay)
	movf	(1+(?___awtoft)),w
	movwf	(?_Delay+1)
	movf	(2+(?___awtoft)),w
	movwf	(?_Delay+2)
	fcall	_Delay
	line	99
	
l2802:	
	return
	opt stack 0
GLOBAL	__end_of_Send_SM
	__end_of_Send_SM:
;; =============== function _Send_SM ends ============

	signat	_Send_SM,88
	global	_Decode_MS
psect	text296,local,class=CODE,delta=2
global __ptext296
__ptext296:

;; *************** function _Decode_MS *****************
;; Defined at:
;;		line 27 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\Decode_Create_MSG.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DT              2   17[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awtoft
;;		_Delay
;;		_Clear_LEDs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text296
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\Decode_Create_MSG.c"
	line	27
	global	__size_of_Decode_MS
	__size_of_Decode_MS	equ	__end_of_Decode_MS-_Decode_MS
	
_Decode_MS:	
	opt	stack 4
; Regs used in _Decode_MS: [wreg+status,2+status,0+pclath+cstack]
	line	29
	
l5227:	
;Decode_Create_MSG.c: 29: int DT = 1000;
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Decode_MS@DT)
	movlw	high(03E8h)
	movwf	((Decode_MS@DT))+1
	line	31
;Decode_Create_MSG.c: 31: if (SPI_Return == 0xBE)
	movlw	0
	xorwf	(_SPI_Return+3),w
	skipz
	goto	u3115
	movlw	0
	xorwf	(_SPI_Return+2),w
	skipz
	goto	u3115
	movlw	0
	xorwf	(_SPI_Return+1),w
	skipz
	goto	u3115
	movlw	0BEh
	xorwf	(_SPI_Return),w
u3115:
	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l5231
u3110:
	line	33
	
l5229:	
;Decode_Create_MSG.c: 32: {
;Decode_Create_MSG.c: 33: RD6 = 1;
	bsf	(70/8),(70)&7
	goto	l5231
	line	34
	
l2787:	
	line	35
	
l5231:	
;Decode_Create_MSG.c: 34: }
;Decode_Create_MSG.c: 35: if (SPI_Return == 0xEF)
	movlw	0
	xorwf	(_SPI_Return+3),w
	skipz
	goto	u3125
	movlw	0
	xorwf	(_SPI_Return+2),w
	skipz
	goto	u3125
	movlw	0
	xorwf	(_SPI_Return+1),w
	skipz
	goto	u3125
	movlw	0EFh
	xorwf	(_SPI_Return),w
u3125:
	skipz
	goto	u3121
	goto	u3120
u3121:
	goto	l5235
u3120:
	line	37
	
l5233:	
;Decode_Create_MSG.c: 36: {
;Decode_Create_MSG.c: 37: RD5 = 1;
	bsf	(69/8),(69)&7
	goto	l5235
	line	38
	
l2788:	
	line	39
	
l5235:	
;Decode_Create_MSG.c: 38: }
;Decode_Create_MSG.c: 39: if (SPI_Return == 0b00000011)
	movlw	0
	xorwf	(_SPI_Return+3),w
	skipz
	goto	u3135
	movlw	0
	xorwf	(_SPI_Return+2),w
	skipz
	goto	u3135
	movlw	0
	xorwf	(_SPI_Return+1),w
	skipz
	goto	u3135
	movlw	03h
	xorwf	(_SPI_Return),w
u3135:
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l5239
u3130:
	line	41
	
l5237:	
;Decode_Create_MSG.c: 40: {
;Decode_Create_MSG.c: 41: RD4 = 1;
	bsf	(68/8),(68)&7
	goto	l5239
	line	42
	
l2789:	
	line	43
	
l5239:	
;Decode_Create_MSG.c: 42: }
;Decode_Create_MSG.c: 43: if (SPI_Return == 0b00000100)
	movlw	0
	xorwf	(_SPI_Return+3),w
	skipz
	goto	u3145
	movlw	0
	xorwf	(_SPI_Return+2),w
	skipz
	goto	u3145
	movlw	0
	xorwf	(_SPI_Return+1),w
	skipz
	goto	u3145
	movlw	04h
	xorwf	(_SPI_Return),w
u3145:
	skipz
	goto	u3141
	goto	u3140
u3141:
	goto	l5243
u3140:
	line	45
	
l5241:	
;Decode_Create_MSG.c: 44: {
;Decode_Create_MSG.c: 45: RC7 = 1;
	bsf	(63/8),(63)&7
	goto	l5243
	line	46
	
l2790:	
	line	47
	
l5243:	
;Decode_Create_MSG.c: 46: }
;Decode_Create_MSG.c: 47: if (SPI_Return == 0b00000101)
	movlw	0
	xorwf	(_SPI_Return+3),w
	skipz
	goto	u3155
	movlw	0
	xorwf	(_SPI_Return+2),w
	skipz
	goto	u3155
	movlw	0
	xorwf	(_SPI_Return+1),w
	skipz
	goto	u3155
	movlw	05h
	xorwf	(_SPI_Return),w
u3155:
	skipz
	goto	u3151
	goto	u3150
u3151:
	goto	l5247
u3150:
	line	49
	
l5245:	
;Decode_Create_MSG.c: 48: {
;Decode_Create_MSG.c: 49: RC6 = 1;
	bsf	(62/8),(62)&7
	goto	l5247
	line	50
	
l2791:	
	line	51
	
l5247:	
;Decode_Create_MSG.c: 50: }
;Decode_Create_MSG.c: 51: if (SPI_Return == 0b00000110)
	movlw	0
	xorwf	(_SPI_Return+3),w
	skipz
	goto	u3165
	movlw	0
	xorwf	(_SPI_Return+2),w
	skipz
	goto	u3165
	movlw	0
	xorwf	(_SPI_Return+1),w
	skipz
	goto	u3165
	movlw	06h
	xorwf	(_SPI_Return),w
u3165:
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l5251
u3160:
	line	53
	
l5249:	
;Decode_Create_MSG.c: 52: {
;Decode_Create_MSG.c: 53: RD3 = 1;
	bsf	(67/8),(67)&7
	goto	l5251
	line	54
	
l2792:	
	line	55
	
l5251:	
;Decode_Create_MSG.c: 54: }
;Decode_Create_MSG.c: 55: if (SPI_Return == 0b00000111)
	movlw	0
	xorwf	(_SPI_Return+3),w
	skipz
	goto	u3175
	movlw	0
	xorwf	(_SPI_Return+2),w
	skipz
	goto	u3175
	movlw	0
	xorwf	(_SPI_Return+1),w
	skipz
	goto	u3175
	movlw	07h
	xorwf	(_SPI_Return),w
u3175:
	skipz
	goto	u3171
	goto	u3170
u3171:
	goto	l5255
u3170:
	line	57
	
l5253:	
;Decode_Create_MSG.c: 56: {
;Decode_Create_MSG.c: 57: RD2 = 1;
	bsf	(66/8),(66)&7
	goto	l5255
	line	58
	
l2793:	
	line	59
	
l5255:	
;Decode_Create_MSG.c: 58: }
;Decode_Create_MSG.c: 59: Delay(DT);
	movf	(Decode_MS@DT+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(Decode_MS@DT),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?_Delay)
	movf	(1+(?___awtoft)),w
	movwf	(?_Delay+1)
	movf	(2+(?___awtoft)),w
	movwf	(?_Delay+2)
	fcall	_Delay
	line	60
	
l5257:	
;Decode_Create_MSG.c: 60: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	line	61
	
l5259:	
;Decode_Create_MSG.c: 61: Clear_LEDs();
	fcall	_Clear_LEDs
	line	62
	
l5261:	
;Decode_Create_MSG.c: 62: Delay(DT);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Decode_MS@DT+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(Decode_MS@DT),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?_Delay)
	movf	(1+(?___awtoft)),w
	movwf	(?_Delay+1)
	movf	(2+(?___awtoft)),w
	movwf	(?_Delay+2)
	fcall	_Delay
	line	63
	
l2794:	
	return
	opt stack 0
GLOBAL	__end_of_Decode_MS
	__end_of_Decode_MS:
;; =============== function _Decode_MS ends ============

	signat	_Decode_MS,88
	global	_Delay
psect	text297,local,class=CODE,delta=2
global __ptext297
__ptext297:

;; *************** function _Delay *****************
;; Defined at:
;;		line 77 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\main.c"
;; Parameters:    Size  Location     Type
;;  delay_time      3   12[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  a               2   15[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awtoft
;;		___ftge
;; This function is called by:
;;		_main
;;		_Decode_MS
;;		_Send_SM
;; This function uses a non-reentrant model
;;
psect	text297
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\main.c"
	line	77
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 5
; Regs used in _Delay: [wreg+status,2+status,0+pclath+cstack]
	line	78
	
l5221:	
;main.c: 78: int a = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Delay@a)
	clrf	(Delay@a+1)
	line	79
;main.c: 79: for ( a = 0; a < delay_time; a ++ )
	clrf	(Delay@a)
	clrf	(Delay@a+1)
	goto	l5225
	line	80
	
l703:	
	line	79
	
l5223:	
;main.c: 80: { }
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(Delay@a),f
	skipnc
	incf	(Delay@a+1),f
	movlw	high(01h)
	addwf	(Delay@a+1),f
	goto	l5225
	
l702:	
	
l5225:	
	movf	(Delay@a+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(Delay@a),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftge)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftge+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftge+2)
	movf	(Delay@delay_time),w
	movwf	0+(?___ftge)+03h
	movf	(Delay@delay_time+1),w
	movwf	1+(?___ftge)+03h
	movf	(Delay@delay_time+2),w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3101
	goto	u3100
u3101:
	goto	l5223
u3100:
	goto	l705
	
l704:	
	line	81
	
l705:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
;; =============== function _Delay ends ============

	signat	_Delay,4216
	global	___awtoft
psect	text298,local,class=CODE,delta=2
global __ptext298
__ptext298:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    6[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    6[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Delay
;;		_Decode_MS
;;		_Send_SM
;; This function uses a non-reentrant model
;;
psect	text298
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l5213:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u3091
	goto	u3090
u3091:
	goto	l5217
u3090:
	line	38
	
l5215:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l5217
	line	40
	
l3621:	
	line	41
	
l5217:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l3622
	
l5219:	
	line	42
	
l3622:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftge
psect	text299,local,class=CODE,delta=2
global __ptext299
__ptext299:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    8[COMMON] float 
;;  ff2             3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         6       6       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Delay
;; This function uses a non-reentrant model
;;
psect	text299
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 6
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l5147:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l5151
u2980:
	line	7
	
l5149:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u2991
	goto	u2992
u2991:
	addwf	(??___ftge+0)+1,f
	
u2992:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2993
	goto	u2994
u2993:
	addwf	(??___ftge+0)+2,f
	
u2994:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l5151
	
l3652:	
	line	8
	
l5151:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l5155
u3000:
	line	9
	
l5153:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u3011
	goto	u3012
u3011:
	addwf	(??___ftge+0)+1,f
	
u3012:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3013
	goto	u3014
u3013:
	addwf	(??___ftge+0)+2,f
	
u3014:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l5155
	
l3653:	
	line	10
	
l5155:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l5157:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l5159:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3025
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3025
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3025:
	skipnc
	goto	u3021
	goto	u3020
u3021:
	goto	l5163
u3020:
	
l5161:	
	clrc
	
	goto	l3654
	
l4931:	
	
l5163:	
	setc
	
	goto	l3654
	
l4933:	
	goto	l3654
	
l5165:	
	line	13
	
l3654:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftpack
psect	text300,local,class=CODE,delta=2
global __ptext300
__ptext300:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text300
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l5015:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2640
	goto	l5019
u2640:
	
l5017:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2651
	goto	u2650
u2651:
	goto	l5025
u2650:
	goto	l5019
	
l3819:	
	line	65
	
l5019:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l3820
	
l5021:	
	goto	l3820
	
l3817:	
	line	66
	goto	l5025
	
l3822:	
	line	67
	
l5023:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2665:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2665

	goto	l5025
	line	69
	
l3821:	
	line	66
	
l5025:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l5023
u2670:
	goto	l3824
	
l3823:	
	line	70
	goto	l3824
	
l3825:	
	line	71
	
l5027:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l5029:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l5031:	
	movlw	01h
u2685:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2685

	line	74
	
l3824:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l5027
u2690:
	goto	l5035
	
l3826:	
	line	75
	goto	l5035
	
l3828:	
	line	76
	
l5033:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2705:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2705
	goto	l5035
	line	78
	
l3827:	
	line	75
	
l5035:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l5033
u2710:
	
l3829:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l3830
u2720:
	line	80
	
l5037:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l3830:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l5039:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2735:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2730:
	addlw	-1
	skipz
	goto	u2735
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l5041:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2740
	goto	l3831
u2740:
	line	84
	
l5043:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3831:	
	line	85
	line	86
	
l3820:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_SPI_Write
psect	text301,local,class=CODE,delta=2
global __ptext301
__ptext301:

;; *************** function _SPI_Write *****************
;; Defined at:
;;		line 25 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\SPI.c"
;; Parameters:    Size  Location     Type
;;  data_1          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data_1          1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Send_SM
;; This function uses a non-reentrant model
;;
psect	text301
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\SPI.c"
	line	25
	global	__size_of_SPI_Write
	__size_of_SPI_Write	equ	__end_of_SPI_Write-_SPI_Write
	
_SPI_Write:	
	opt	stack 6
; Regs used in _SPI_Write: [wreg]
;SPI_Write@data_1 stored from wreg
	movwf	(SPI_Write@data_1)
	line	26
	
l4943:	
;SPI.c: 26: SSPBUF = data_1;
	movf	(SPI_Write@data_1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	27
;SPI.c: 27: while(!SSPSTATbits.BF);
	goto	l2085
	
l2086:	
	
l2085:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(148)^080h,0	;volatile
	goto	u2391
	goto	u2390
u2391:
	goto	l2085
u2390:
	goto	l2088
	
l2087:	
	line	28
	
l2088:	
	return
	opt stack 0
GLOBAL	__end_of_SPI_Write
	__end_of_SPI_Write:
;; =============== function _SPI_Write ends ============

	signat	_SPI_Write,4216
	global	_Clear_LEDs
psect	text302,local,class=CODE,delta=2
global __ptext302
__ptext302:

;; *************** function _Clear_LEDs *****************
;; Defined at:
;;		line 86 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Decode_MS
;;		_Send_SM
;; This function uses a non-reentrant model
;;
psect	text302
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\main.c"
	line	86
	global	__size_of_Clear_LEDs
	__size_of_Clear_LEDs	equ	__end_of_Clear_LEDs-_Clear_LEDs
	
_Clear_LEDs:	
	opt	stack 6
; Regs used in _Clear_LEDs: []
	line	87
	
l4941:	
;main.c: 87: RD6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
	line	88
;main.c: 88: RD5 = 0;
	bcf	(69/8),(69)&7
	line	89
;main.c: 89: RD4 = 0;
	bcf	(68/8),(68)&7
	line	90
;main.c: 90: RC7 = 0;
	bcf	(63/8),(63)&7
	line	91
;main.c: 91: RC6 = 0;
	bcf	(62/8),(62)&7
	line	92
;main.c: 92: RD3 = 0;
	bcf	(67/8),(67)&7
	line	93
;main.c: 93: RD2 = 0;
	bcf	(66/8),(66)&7
	line	94
	
l708:	
	return
	opt stack 0
GLOBAL	__end_of_Clear_LEDs
	__end_of_Clear_LEDs:
;; =============== function _Clear_LEDs ends ============

	signat	_Clear_LEDs,88
	global	_SPI_Read
psect	text303,local,class=CODE,delta=2
global __ptext303
__ptext303:

;; *************** function _SPI_Read *****************
;; Defined at:
;;		line 33 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\SPI.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text303
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\SPI.c"
	line	33
	global	__size_of_SPI_Read
	__size_of_SPI_Read	equ	__end_of_SPI_Read-_SPI_Read
	
_SPI_Read:	
	opt	stack 7
; Regs used in _SPI_Read: [wreg+status,2]
	line	34
	
l4935:	
;SPI.c: 34: SPI_Return = 0;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_SPI_Return+3)
	movlw	0
	movwf	(_SPI_Return+2)
	movlw	0
	movwf	(_SPI_Return+1)
	movlw	0
	movwf	(_SPI_Return)

	line	35
	
l4937:	
;SPI.c: 35: SSPBUF = 0b00000000;
	clrf	(19)	;volatile
	line	36
;SPI.c: 36: while(!SSPSTATbits.BF);
	goto	l2091
	
l2092:	
	
l2091:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(148)^080h,0	;volatile
	goto	u2381
	goto	u2380
u2381:
	goto	l2091
u2380:
	goto	l4939
	
l2093:	
	line	37
	
l4939:	
;SPI.c: 37: SPI_Return = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_SPI_Read+0)+0
	clrf	((??_SPI_Read+0)+0+1)
	clrf	((??_SPI_Read+0)+0+2)
	clrf	((??_SPI_Read+0)+0+3)
	movf	3+(??_SPI_Read+0)+0,w
	movwf	(_SPI_Return+3)
	movf	2+(??_SPI_Read+0)+0,w
	movwf	(_SPI_Return+2)
	movf	1+(??_SPI_Read+0)+0,w
	movwf	(_SPI_Return+1)
	movf	0+(??_SPI_Read+0)+0,w
	movwf	(_SPI_Return)

	line	48
	
l2094:	
	return
	opt stack 0
GLOBAL	__end_of_SPI_Read
	__end_of_SPI_Read:
;; =============== function _SPI_Read ends ============

	signat	_SPI_Read,88
	global	_Slave_Initialisation
psect	text304,local,class=CODE,delta=2
global __ptext304
__ptext304:

;; *************** function _Slave_Initialisation *****************
;; Defined at:
;;		line 20 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\Slave_Initilisation.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text304
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14a - Deo SPI PIC (Slave)\Slave_Initilisation.c"
	line	20
	global	__size_of_Slave_Initialisation
	__size_of_Slave_Initialisation	equ	__end_of_Slave_Initialisation-_Slave_Initialisation
	
_Slave_Initialisation:	
	opt	stack 7
; Regs used in _Slave_Initialisation: [wreg+status,2]
	line	22
	
l3945:	
;Slave_Initilisation.c: 22: TRISA = 0b00011111;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	26
;Slave_Initilisation.c: 26: TRISB = 0b00011111;
	movlw	(01Fh)
	movwf	(134)^080h	;volatile
	line	27
;Slave_Initilisation.c: 27: TRISC = 0b00011111;
	movlw	(01Fh)
	movwf	(135)^080h	;volatile
	line	31
	
l3947:	
;Slave_Initilisation.c: 31: TRISD = 0b00000000;
	clrf	(136)^080h	;volatile
	line	33
	
l3949:	
;Slave_Initilisation.c: 33: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	34
	
l3951:	
;Slave_Initilisation.c: 34: PORTC = 0b00000000;
	clrf	(7)	;volatile
	line	35
	
l3953:	
;Slave_Initilisation.c: 35: PORTD = 0b00000000;
	clrf	(8)	;volatile
	line	39
	
l3955:	
;Slave_Initilisation.c: 39: RC5 = 0;
	bcf	(61/8),(61)&7
	line	40
;Slave_Initilisation.c: 40: SSPSTAT = 0b01000000;
	movlw	(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	line	43
;Slave_Initilisation.c: 43: SSPCON = 0b01100101;
	movlw	(065h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	58
	
l3957:	
;Slave_Initilisation.c: 58: SSPBUF = 0;
	clrf	(19)	;volatile
	line	59
	
l1398:	
	return
	opt stack 0
GLOBAL	__end_of_Slave_Initialisation
	__end_of_Slave_Initialisation:
;; =============== function _Slave_Initialisation ends ============

	signat	_Slave_Initialisation,88
psect	text305,local,class=CODE,delta=2
global __ptext305
__ptext305:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
