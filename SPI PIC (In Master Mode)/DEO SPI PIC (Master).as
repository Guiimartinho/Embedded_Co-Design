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
# 16 "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 16 "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\main.c"
	dw 0xFFFE & 0xFFFB & 0xFFFF & 0xFFFF & 0xFFFF & 0xFFBF & 0xFF7F ;#
	FNCALL	_main,_Master_Initialisation
	FNCALL	_main,_Send_MS
	FNCALL	_Send_MS,_SPI_Write
	FNCALL	_Send_MS,_SPI_Read
	FNCALL	_Send_MS,_Decode_SM
	FNCALL	_Send_MS,___awtoft
	FNCALL	_Send_MS,_Delay
	FNCALL	_Send_MS,_Clear_LEDs
	FNCALL	_Decode_SM,___awtoft
	FNCALL	_Decode_SM,_Delay
	FNCALL	_Decode_SM,_Clear_LEDs
	FNCALL	_Delay,___awtoft
	FNCALL	_Delay,___ftge
	FNCALL	___awtoft,___ftpack
	FNROOT	_main
	global	_SPI_Return
	global	_left_joy_h
	global	_left_joy_v
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
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
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
	file	"DEO SPI PIC (Master).as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_SPI_Return:
       ds      4

_left_joy_h:
       ds      4

_left_joy_v:
       ds      4

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Master_Initialisation
?_Master_Initialisation:	; 0 bytes @ 0x0
	global	??_Master_Initialisation
??_Master_Initialisation:	; 0 bytes @ 0x0
	global	?_Send_MS
?_Send_MS:	; 0 bytes @ 0x0
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
	global	?_SPI_Read
?_SPI_Read:	; 0 bytes @ 0x0
	global	??_SPI_Read
??_SPI_Read:	; 0 bytes @ 0x0
	global	?_Decode_SM
?_Decode_SM:	; 0 bytes @ 0x0
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
	global	??_Send_MS
??_Send_MS:	; 0 bytes @ 0xE
	global	??_main
??_main:	; 0 bytes @ 0xE
	global	??_Delay
??_Delay:	; 0 bytes @ 0xE
	global	??_Decode_SM
??_Decode_SM:	; 0 bytes @ 0xE
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
	global	Decode_SM@DT
Decode_SM@DT:	; 2 bytes @ 0x11
	ds	2
	global	Send_MS@DT
Send_MS@DT:	; 2 bytes @ 0x13
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 12, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     21      33
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
;;   _main->_Send_MS
;;   _Send_MS->_Decode_SM
;;   _Decode_SM->_Delay
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
;; (0) _main                                                 0     0      0    1678
;;              _Master_Initialisation
;;                            _Send_MS
;; ---------------------------------------------------------------------------------
;; (1) _Send_MS                                              2     2      0    1678
;;                                             19 BANK0      2     2      0
;;                          _SPI_Write
;;                           _SPI_Read
;;                          _Decode_SM
;;                           ___awtoft
;;                              _Delay
;;                         _Clear_LEDs
;; ---------------------------------------------------------------------------------
;; (2) _Decode_SM                                            2     2      0     828
;;                                             17 BANK0      2     2      0
;;                           ___awtoft
;;                              _Delay
;;                         _Clear_LEDs
;; ---------------------------------------------------------------------------------
;; (2) _Delay                                                5     2      3     483
;;                                             12 BANK0      5     2      3
;;                           ___awtoft
;;                             ___ftge
;; ---------------------------------------------------------------------------------
;; (3) ___awtoft                                             6     3      3     300
;;                                              6 BANK0      6     3      3
;;                           ___ftpack
;;                             ___ftge (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftge                                              12     6      6     136
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0      6     6      0
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (2) _SPI_Read                                             4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (2) _SPI_Write                                            1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _Clear_LEDs                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Master_Initialisation                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Master_Initialisation
;;   _Send_MS
;;     _SPI_Write
;;     _SPI_Read
;;     _Decode_SM
;;       ___awtoft
;;         ___ftpack
;;         ___ftge (ARG)
;;           ___ftpack (ARG)
;;       _Delay
;;         ___awtoft
;;           ___ftpack
;;           ___ftge (ARG)
;;             ___ftpack (ARG)
;;         ___ftge
;;           ___ftpack (ARG)
;;       _Clear_LEDs
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
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      2F       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     15      21       5       41.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      34      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 41 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\main.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Master_Initialisation
;;		_Send_MS
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\main.c"
	line	41
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	42
	
l5313:	
;main.c: 42: Master_Initialisation();
	fcall	_Master_Initialisation
	line	45
;main.c: 44: for(;;)
	
l695:	
	line	46
;main.c: 45: {
;main.c: 46: Send_MS();
	fcall	_Send_MS
	line	47
;main.c: 47: }
	goto	l695
	
l696:	
	line	48
	
l697:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Send_MS
psect	text295,local,class=CODE,delta=2
global __ptext295
__ptext295:

;; *************** function _Send_MS *****************
;; Defined at:
;;		line 71 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\Read_Create_MSG.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DT              2   19[BANK0 ] int 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SPI_Write
;;		_SPI_Read
;;		_Decode_SM
;;		___awtoft
;;		_Delay
;;		_Clear_LEDs
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text295
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\Read_Create_MSG.c"
	line	71
	global	__size_of_Send_MS
	__size_of_Send_MS	equ	__end_of_Send_MS-_Send_MS
	
_Send_MS:	
	opt	stack 3
; Regs used in _Send_MS: [wreg+status,2+status,0+pclath+cstack]
	line	72
	
l5275:	
;Read_Create_MSG.c: 72: int DT = 1000;
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Send_MS@DT)
	movlw	high(03E8h)
	movwf	((Send_MS@DT))+1
	line	74
	
l5277:	
;Read_Create_MSG.c: 74: if (RB4 == 1)
	btfss	(52/8),(52)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l5283
u3180:
	line	76
	
l5279:	
;Read_Create_MSG.c: 75: {
;Read_Create_MSG.c: 76: RB5 = 1;
	bsf	(53/8),(53)&7
	line	77
;Read_Create_MSG.c: 77: RD6 = 1;
	bsf	(70/8),(70)&7
	line	78
	
l5281:	
;Read_Create_MSG.c: 78: SPI_Write(0b00000001);
	movlw	(01h)
	fcall	_SPI_Write
	line	79
;Read_Create_MSG.c: 79: SPI_Read();
	fcall	_SPI_Read
	line	80
;Read_Create_MSG.c: 80: Decode_SM();
	fcall	_Decode_SM
	goto	l5283
	line	81
	
l2809:	
	line	82
	
l5283:	
;Read_Create_MSG.c: 81: }
;Read_Create_MSG.c: 82: if (RB3 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(51/8),(51)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l5289
u3190:
	line	84
	
l5285:	
;Read_Create_MSG.c: 83: {
;Read_Create_MSG.c: 84: RB5 = 1;
	bsf	(53/8),(53)&7
	line	85
;Read_Create_MSG.c: 85: RD5 = 1;
	bsf	(69/8),(69)&7
	line	86
	
l5287:	
;Read_Create_MSG.c: 86: SPI_Write(0b00000010);
	movlw	(02h)
	fcall	_SPI_Write
	line	87
;Read_Create_MSG.c: 87: SPI_Read();
	fcall	_SPI_Read
	line	88
;Read_Create_MSG.c: 88: Decode_SM();
	fcall	_Decode_SM
	goto	l5289
	line	89
	
l2810:	
	line	90
	
l5289:	
;Read_Create_MSG.c: 89: }
;Read_Create_MSG.c: 90: if (RB2 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l5295
u3200:
	line	92
	
l5291:	
;Read_Create_MSG.c: 91: {
;Read_Create_MSG.c: 92: RB5 = 1;
	bsf	(53/8),(53)&7
	line	93
;Read_Create_MSG.c: 93: RD4 = 1;
	bsf	(68/8),(68)&7
	line	94
	
l5293:	
;Read_Create_MSG.c: 94: SPI_Write(0b00000011);
	movlw	(03h)
	fcall	_SPI_Write
	line	95
;Read_Create_MSG.c: 95: SPI_Read();
	fcall	_SPI_Read
	line	96
;Read_Create_MSG.c: 96: Decode_SM();
	fcall	_Decode_SM
	goto	l5295
	line	97
	
l2811:	
	line	98
	
l5295:	
;Read_Create_MSG.c: 97: }
;Read_Create_MSG.c: 98: if (RB1 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l5301
u3210:
	line	100
	
l5297:	
;Read_Create_MSG.c: 99: {
;Read_Create_MSG.c: 100: RB5 = 1;
	bsf	(53/8),(53)&7
	line	101
;Read_Create_MSG.c: 101: RC7 = 1;
	bsf	(63/8),(63)&7
	line	102
	
l5299:	
;Read_Create_MSG.c: 102: SPI_Write(0b00000100);
	movlw	(04h)
	fcall	_SPI_Write
	line	103
;Read_Create_MSG.c: 103: SPI_Read();
	fcall	_SPI_Read
	line	104
;Read_Create_MSG.c: 104: Decode_SM();
	fcall	_Decode_SM
	goto	l5301
	line	105
	
l2812:	
	line	106
	
l5301:	
;Read_Create_MSG.c: 105: }
;Read_Create_MSG.c: 106: if (RB0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l2813
u3220:
	line	108
	
l5303:	
;Read_Create_MSG.c: 107: {
;Read_Create_MSG.c: 108: RB5 = 1;
	bsf	(53/8),(53)&7
	line	109
;Read_Create_MSG.c: 109: RC6 = 1;
	bsf	(62/8),(62)&7
	line	110
	
l5305:	
;Read_Create_MSG.c: 110: SPI_Write(0b00000101);
	movlw	(05h)
	fcall	_SPI_Write
	line	111
;Read_Create_MSG.c: 111: SPI_Read();
	fcall	_SPI_Read
	line	112
;Read_Create_MSG.c: 112: Decode_SM();
	fcall	_Decode_SM
	line	113
	
l2813:	
	line	114
;Read_Create_MSG.c: 113: }
;Read_Create_MSG.c: 114: Delay(DT);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Send_MS@DT+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(Send_MS@DT),w
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
	line	115
	
l5307:	
;Read_Create_MSG.c: 115: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	line	116
	
l5309:	
;Read_Create_MSG.c: 116: Clear_LEDs();
	fcall	_Clear_LEDs
	line	117
	
l5311:	
;Read_Create_MSG.c: 117: Delay(DT);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Send_MS@DT+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(Send_MS@DT),w
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
	line	118
	
l2814:	
	return
	opt stack 0
GLOBAL	__end_of_Send_MS
	__end_of_Send_MS:
;; =============== function _Send_MS ends ============

	signat	_Send_MS,88
	global	_Decode_SM
psect	text296,local,class=CODE,delta=2
global __ptext296
__ptext296:

;; *************** function _Decode_SM *****************
;; Defined at:
;;		line 23 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\Read_Create_MSG.c"
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
;;		_Send_MS
;; This function uses a non-reentrant model
;;
psect	text296
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\Read_Create_MSG.c"
	line	23
	global	__size_of_Decode_SM
	__size_of_Decode_SM	equ	__end_of_Decode_SM-_Decode_SM
	
_Decode_SM:	
	opt	stack 3
; Regs used in _Decode_SM: [wreg+status,2+status,0+pclath+cstack]
	line	25
	
l5239:	
;Read_Create_MSG.c: 25: int DT = 1000;
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Decode_SM@DT)
	movlw	high(03E8h)
	movwf	((Decode_SM@DT))+1
	line	27
;Read_Create_MSG.c: 27: if (SPI_Return == 0b10000000)
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
	movlw	080h
	xorwf	(_SPI_Return),w
u3115:
	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l5243
u3110:
	line	29
	
l5241:	
;Read_Create_MSG.c: 28: {
;Read_Create_MSG.c: 29: RB5 = 1;
	bsf	(53/8),(53)&7
	line	30
;Read_Create_MSG.c: 30: RD6 = 1;
	bsf	(70/8),(70)&7
	goto	l5243
	line	31
	
l2799:	
	line	32
	
l5243:	
;Read_Create_MSG.c: 31: }
;Read_Create_MSG.c: 32: if (SPI_Return == 0b01000000)
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
	movlw	040h
	xorwf	(_SPI_Return),w
u3125:
	skipz
	goto	u3121
	goto	u3120
u3121:
	goto	l5247
u3120:
	line	34
	
l5245:	
;Read_Create_MSG.c: 33: {
;Read_Create_MSG.c: 34: RB5 = 1;
	bsf	(53/8),(53)&7
	line	35
;Read_Create_MSG.c: 35: RD5 = 1;
	bsf	(69/8),(69)&7
	goto	l5247
	line	36
	
l2800:	
	line	37
	
l5247:	
;Read_Create_MSG.c: 36: }
;Read_Create_MSG.c: 37: if (SPI_Return == 0b11000000)
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
	movlw	0C0h
	xorwf	(_SPI_Return),w
u3135:
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l5251
u3130:
	line	39
	
l5249:	
;Read_Create_MSG.c: 38: {
;Read_Create_MSG.c: 39: RB5 = 1;
	bsf	(53/8),(53)&7
	line	40
;Read_Create_MSG.c: 40: RD4 = 1;
	bsf	(68/8),(68)&7
	goto	l5251
	line	41
	
l2801:	
	line	42
	
l5251:	
;Read_Create_MSG.c: 41: }
;Read_Create_MSG.c: 42: if (SPI_Return == 0b00100000)
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
	movlw	020h
	xorwf	(_SPI_Return),w
u3145:
	skipz
	goto	u3141
	goto	u3140
u3141:
	goto	l5255
u3140:
	line	44
	
l5253:	
;Read_Create_MSG.c: 43: {
;Read_Create_MSG.c: 44: RB5 = 1;
	bsf	(53/8),(53)&7
	line	45
;Read_Create_MSG.c: 45: RC7 = 1;
	bsf	(63/8),(63)&7
	goto	l5255
	line	46
	
l2802:	
	line	47
	
l5255:	
;Read_Create_MSG.c: 46: }
;Read_Create_MSG.c: 47: if (SPI_Return == 0b10100000)
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
	movlw	0A0h
	xorwf	(_SPI_Return),w
u3155:
	skipz
	goto	u3151
	goto	u3150
u3151:
	goto	l5259
u3150:
	line	49
	
l5257:	
;Read_Create_MSG.c: 48: {
;Read_Create_MSG.c: 49: RB5 = 1;
	bsf	(53/8),(53)&7
	line	50
;Read_Create_MSG.c: 50: RC6 = 1;
	bsf	(62/8),(62)&7
	goto	l5259
	line	51
	
l2803:	
	line	52
	
l5259:	
;Read_Create_MSG.c: 51: }
;Read_Create_MSG.c: 52: if (SPI_Return == 0b01100000)
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
	movlw	060h
	xorwf	(_SPI_Return),w
u3165:
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l5263
u3160:
	line	54
	
l5261:	
;Read_Create_MSG.c: 53: {
;Read_Create_MSG.c: 54: RB5 = 1;
	bsf	(53/8),(53)&7
	line	55
;Read_Create_MSG.c: 55: RD3 = 1;
	bsf	(67/8),(67)&7
	goto	l5263
	line	56
	
l2804:	
	line	57
	
l5263:	
;Read_Create_MSG.c: 56: }
;Read_Create_MSG.c: 57: if (SPI_Return == 0b11100000)
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
	movlw	0E0h
	xorwf	(_SPI_Return),w
u3175:
	skipz
	goto	u3171
	goto	u3170
u3171:
	goto	l5267
u3170:
	line	59
	
l5265:	
;Read_Create_MSG.c: 58: {
;Read_Create_MSG.c: 59: RB5 = 1;
	bsf	(53/8),(53)&7
	line	60
;Read_Create_MSG.c: 60: RD2 = 1;
	bsf	(66/8),(66)&7
	goto	l5267
	line	61
	
l2805:	
	line	62
	
l5267:	
;Read_Create_MSG.c: 61: }
;Read_Create_MSG.c: 62: Delay(DT);
	movf	(Decode_SM@DT+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(Decode_SM@DT),w
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
	
l5269:	
;Read_Create_MSG.c: 63: RB5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	line	64
	
l5271:	
;Read_Create_MSG.c: 64: Clear_LEDs();
	fcall	_Clear_LEDs
	line	65
	
l5273:	
;Read_Create_MSG.c: 65: Delay(DT);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Decode_SM@DT+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(Decode_SM@DT),w
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
	line	66
	
l2806:	
	return
	opt stack 0
GLOBAL	__end_of_Decode_SM
	__end_of_Decode_SM:
;; =============== function _Decode_SM ends ============

	signat	_Decode_SM,88
	global	_Delay
psect	text297,local,class=CODE,delta=2
global __ptext297
__ptext297:

;; *************** function _Delay *****************
;; Defined at:
;;		line 54 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\main.c"
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
;;		_Decode_SM
;;		_Send_MS
;; This function uses a non-reentrant model
;;
psect	text297
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\main.c"
	line	54
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 4
; Regs used in _Delay: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l5233:	
;main.c: 55: int a = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Delay@a)
	clrf	(Delay@a+1)
	line	56
;main.c: 56: for ( a = 0; a < delay_time; a ++ )
	clrf	(Delay@a)
	clrf	(Delay@a+1)
	goto	l5237
	line	57
	
l701:	
	line	56
	
l5235:	
;main.c: 57: { }
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(Delay@a),f
	skipnc
	incf	(Delay@a+1),f
	movlw	high(01h)
	addwf	(Delay@a+1),f
	goto	l5237
	
l700:	
	
l5237:	
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
	goto	l5235
u3100:
	goto	l703
	
l702:	
	line	58
	
l703:	
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
;;		_Decode_SM
;;		_Send_MS
;; This function uses a non-reentrant model
;;
psect	text298
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.83\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 4
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l5225:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u3091
	goto	u3090
u3091:
	goto	l5229
u3090:
	line	38
	
l5227:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l5229
	line	40
	
l3633:	
	line	41
	
l5229:	
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
	goto	l3634
	
l5231:	
	line	42
	
l3634:	
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
	opt	stack 5
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l5159:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l5163
u2980:
	line	7
	
l5161:	
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
	goto	l5163
	
l3664:	
	line	8
	
l5163:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l5167
u3000:
	line	9
	
l5165:	
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
	goto	l5167
	
l3665:	
	line	10
	
l5167:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l5169:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l5171:	
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
	goto	l5175
u3020:
	
l5173:	
	clrc
	
	goto	l3666
	
l4943:	
	
l5175:	
	setc
	
	goto	l3666
	
l4945:	
	goto	l3666
	
l5177:	
	line	13
	
l3666:	
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
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l5027:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2640
	goto	l5031
u2640:
	
l5029:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2651
	goto	u2650
u2651:
	goto	l5037
u2650:
	goto	l5031
	
l3831:	
	line	65
	
l5031:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l3832
	
l5033:	
	goto	l3832
	
l3829:	
	line	66
	goto	l5037
	
l3834:	
	line	67
	
l5035:	
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

	goto	l5037
	line	69
	
l3833:	
	line	66
	
l5037:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2671
	goto	u2670
u2671:
	goto	l5035
u2670:
	goto	l3836
	
l3835:	
	line	70
	goto	l3836
	
l3837:	
	line	71
	
l5039:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l5041:	
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
	
l5043:	
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
	
l3836:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2691
	goto	u2690
u2691:
	goto	l5039
u2690:
	goto	l5047
	
l3838:	
	line	75
	goto	l5047
	
l3840:	
	line	76
	
l5045:	
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
	goto	l5047
	line	78
	
l3839:	
	line	75
	
l5047:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l5045
u2710:
	
l3841:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l3842
u2720:
	line	80
	
l5049:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l3842:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l5051:	
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
	
l5053:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2740
	goto	l3843
u2740:
	line	84
	
l5055:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l3843:	
	line	85
	line	86
	
l3832:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_SPI_Read
psect	text301,local,class=CODE,delta=2
global __ptext301
__ptext301:

;; *************** function _SPI_Read *****************
;; Defined at:
;;		line 18 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\SPI.c"
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
;;		_Send_MS
;; This function uses a non-reentrant model
;;
psect	text301
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\SPI.c"
	line	18
	global	__size_of_SPI_Read
	__size_of_SPI_Read	equ	__end_of_SPI_Read-_SPI_Read
	
_SPI_Read:	
	opt	stack 6
; Regs used in _SPI_Read: [wreg+status,2]
	line	19
	
l4951:	
;SPI.c: 19: SPI_Return = 0;
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

	line	20
	
l4953:	
;SPI.c: 20: SSPBUF = 0b00000000;
	clrf	(19)	;volatile
	line	21
;SPI.c: 21: while(!SSPSTATbits.BF);
	goto	l1406
	
l1407:	
	
l1406:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(148)^080h,0	;volatile
	goto	u2391
	goto	u2390
u2391:
	goto	l1406
u2390:
	goto	l4955
	
l1408:	
	line	22
	
l4955:	
;SPI.c: 22: SPI_Return = SSPBUF;
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

	line	23
	
l1409:	
	return
	opt stack 0
GLOBAL	__end_of_SPI_Read
	__end_of_SPI_Read:
;; =============== function _SPI_Read ends ============

	signat	_SPI_Read,88
	global	_SPI_Write
psect	text302,local,class=CODE,delta=2
global __ptext302
__ptext302:

;; *************** function _SPI_Write *****************
;; Defined at:
;;		line 10 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\SPI.c"
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
;;		_Send_MS
;; This function uses a non-reentrant model
;;
psect	text302
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\SPI.c"
	line	10
	global	__size_of_SPI_Write
	__size_of_SPI_Write	equ	__end_of_SPI_Write-_SPI_Write
	
_SPI_Write:	
	opt	stack 6
; Regs used in _SPI_Write: [wreg]
;SPI_Write@data_1 stored from wreg
	movwf	(SPI_Write@data_1)
	line	11
	
l4949:	
;SPI.c: 11: SSPBUF = data_1;
	movf	(SPI_Write@data_1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	12
;SPI.c: 12: while(!SSPSTATbits.BF);
	goto	l1400
	
l1401:	
	
l1400:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(148)^080h,0	;volatile
	goto	u2381
	goto	u2380
u2381:
	goto	l1400
u2380:
	goto	l1403
	
l1402:	
	line	13
	
l1403:	
	return
	opt stack 0
GLOBAL	__end_of_SPI_Write
	__end_of_SPI_Write:
;; =============== function _SPI_Write ends ============

	signat	_SPI_Write,4216
	global	_Clear_LEDs
psect	text303,local,class=CODE,delta=2
global __ptext303
__ptext303:

;; *************** function _Clear_LEDs *****************
;; Defined at:
;;		line 63 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\main.c"
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
;;		_Decode_SM
;;		_Send_MS
;; This function uses a non-reentrant model
;;
psect	text303
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\main.c"
	line	63
	global	__size_of_Clear_LEDs
	__size_of_Clear_LEDs	equ	__end_of_Clear_LEDs-_Clear_LEDs
	
_Clear_LEDs:	
	opt	stack 6
; Regs used in _Clear_LEDs: []
	line	64
	
l4947:	
;main.c: 64: RD6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
	line	65
;main.c: 65: RD5 = 0;
	bcf	(69/8),(69)&7
	line	66
;main.c: 66: RD4 = 0;
	bcf	(68/8),(68)&7
	line	67
;main.c: 67: RC7 = 0;
	bcf	(63/8),(63)&7
	line	68
;main.c: 68: RC6 = 0;
	bcf	(62/8),(62)&7
	line	69
;main.c: 69: RD3 = 0;
	bcf	(67/8),(67)&7
	line	70
;main.c: 70: RD2 = 0;
	bcf	(66/8),(66)&7
	line	71
	
l706:	
	return
	opt stack 0
GLOBAL	__end_of_Clear_LEDs
	__end_of_Clear_LEDs:
;; =============== function _Clear_LEDs ends ============

	signat	_Clear_LEDs,88
	global	_Master_Initialisation
psect	text304,local,class=CODE,delta=2
global __ptext304
__ptext304:

;; *************** function _Master_Initialisation *****************
;; Defined at:
;;		line 9 in file "C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\Master_Initilisation.c"
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
	file	"C:\Users\Alex\Dropbox\UWE\UWE Final Year\co-design VHDL\Code\14b - Deo SPI PIC (Master)\Master_Initilisation.c"
	line	9
	global	__size_of_Master_Initialisation
	__size_of_Master_Initialisation	equ	__end_of_Master_Initialisation-_Master_Initialisation
	
_Master_Initialisation:	
	opt	stack 7
; Regs used in _Master_Initialisation: [wreg+status,2]
	line	12
	
l3957:	
;Master_Initilisation.c: 12: TRISA = 0b00011111;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	13
;Master_Initilisation.c: 13: TRISB = 0b00011111;
	movlw	(01Fh)
	movwf	(134)^080h	;volatile
	line	14
;Master_Initilisation.c: 14: TRISC = 0b00010000;
	movlw	(010h)
	movwf	(135)^080h	;volatile
	line	15
	
l3959:	
;Master_Initilisation.c: 15: TRISD = 0b00000000;
	clrf	(136)^080h	;volatile
	line	17
	
l3961:	
;Master_Initilisation.c: 17: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	18
	
l3963:	
;Master_Initilisation.c: 18: PORTC = 0b00000000;
	clrf	(7)	;volatile
	line	19
	
l3965:	
;Master_Initilisation.c: 19: PORTD = 0b00000000;
	clrf	(8)	;volatile
	line	24
	
l3967:	
;Master_Initilisation.c: 24: RC5 = 0;
	bcf	(61/8),(61)&7
	line	25
	
l3969:	
;Master_Initilisation.c: 25: RC4 = 1;
	bsf	(60/8),(60)&7
	line	26
	
l3971:	
;Master_Initilisation.c: 26: RC3 = 0;
	bcf	(59/8),(59)&7
	line	27
;Master_Initilisation.c: 27: SSPSTAT = 0b01000000;
	movlw	(040h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	line	28
;Master_Initilisation.c: 28: SSPCON = 0b00100000;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	35
	
l2100:	
	return
	opt stack 0
GLOBAL	__end_of_Master_Initialisation
	__end_of_Master_Initialisation:
;; =============== function _Master_Initialisation ends ============

	signat	_Master_Initialisation,88
psect	text305,local,class=CODE,delta=2
global __ptext305
__ptext305:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
