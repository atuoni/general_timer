# 1 "main_timer.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "main_timer.c" 2
# 12 "main_timer.c"
# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/xc.h" 1 3
# 18 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "/opt/microchip/xc8/v2.20/pic/include/c90/xc8debug.h" 1 3
# 13 "/opt/microchip/xc8/v2.20/pic/include/c90/xc8debug.h" 3
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/xc.h" 2 3



# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic.h" 1 3




# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/htc.h" 1 3



# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/xc.h" 1 3
# 5 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/htc.h" 2 3
# 6 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic.h" 2 3



extern unsigned char __osccal_val(void);




# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic_chip_select.h" 1 3
# 223 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic_chip_select.h" 3
# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 1 3
# 44 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/__at.h" 1 3
# 45 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 2 3







extern volatile unsigned char INDF __attribute__((address(0x000)));

__asm("INDF equ 00h");


typedef union {
    struct {
        unsigned INDF :8;
    };
} INDFbits_t;
extern volatile INDFbits_t INDFbits __attribute__((address(0x000)));
# 72 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char TMR0 __attribute__((address(0x001)));

__asm("TMR0 equ 01h");


typedef union {
    struct {
        unsigned TMR0 :8;
    };
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __attribute__((address(0x001)));
# 92 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");


typedef union {
    struct {
        unsigned PCL :8;
    };
} PCLbits_t;
extern volatile PCLbits_t PCLbits __attribute__((address(0x002)));
# 112 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned RP :2;
        unsigned IRP :1;
    };
    struct {
        unsigned :5;
        unsigned RP0 :1;
        unsigned RP1 :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 198 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char FSR __attribute__((address(0x004)));

__asm("FSR equ 04h");


typedef union {
    struct {
        unsigned FSR :8;
    };
} FSRbits_t;
extern volatile FSRbits_t FSRbits __attribute__((address(0x004)));
# 218 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char GPIO __attribute__((address(0x005)));

__asm("GPIO equ 05h");


typedef union {
    struct {
        unsigned GP0 :1;
        unsigned GP1 :1;
        unsigned GP2 :1;
        unsigned GP3 :1;
        unsigned GP4 :1;
        unsigned GP5 :1;
    };
    struct {
        unsigned GPIO0 :1;
        unsigned GPIO1 :1;
        unsigned GPIO2 :1;
        unsigned GPIO3 :1;
        unsigned GPIO4 :1;
        unsigned GPIO5 :1;
    };
} GPIObits_t;
extern volatile GPIObits_t GPIObits __attribute__((address(0x005)));
# 306 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");


typedef union {
    struct {
        unsigned PCLATH :5;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
# 326 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned GPIF :1;
        unsigned INTF :1;
        unsigned T0IF :1;
        unsigned GPIE :1;
        unsigned INTE :1;
        unsigned T0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :2;
        unsigned TMR0IF :1;
        unsigned :2;
        unsigned TMR0IE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 404 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x00C)));

__asm("PIR1 equ 0Ch");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned :2;
        unsigned CMIF :1;
        unsigned :2;
        unsigned ADIF :1;
        unsigned EEIF :1;
    };
    struct {
        unsigned T1IF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x00C)));
# 452 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x00E)));

__asm("TMR1 equ 0Eh");




extern volatile unsigned char TMR1L __attribute__((address(0x00E)));

__asm("TMR1L equ 0Eh");


typedef union {
    struct {
        unsigned TMR1L :8;
    };
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __attribute__((address(0x00E)));
# 479 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char TMR1H __attribute__((address(0x00F)));

__asm("TMR1H equ 0Fh");


typedef union {
    struct {
        unsigned TMR1H :8;
    };
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __attribute__((address(0x00F)));
# 499 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char T1CON __attribute__((address(0x010)));

__asm("T1CON equ 010h");


typedef union {
    struct {
        unsigned TMR1ON :1;
        unsigned TMR1CS :1;
        unsigned nT1SYNC :1;
        unsigned T1OSCEN :1;
        unsigned T1CKPS :2;
        unsigned TMR1GE :1;
    };
    struct {
        unsigned :4;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x010)));
# 564 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char CMCON __attribute__((address(0x019)));

__asm("CMCON equ 019h");


typedef union {
    struct {
        unsigned CM :3;
        unsigned CIS :1;
        unsigned CINV :1;
        unsigned :1;
        unsigned COUT :1;
    };
    struct {
        unsigned CM0 :1;
        unsigned CM1 :1;
        unsigned CM2 :1;
    };
} CMCONbits_t;
extern volatile CMCONbits_t CMCONbits __attribute__((address(0x019)));
# 623 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char ADRESH __attribute__((address(0x01E)));

__asm("ADRESH equ 01Eh");


typedef union {
    struct {
        unsigned ADRESH :8;
    };
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __attribute__((address(0x01E)));
# 643 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0x01F)));

__asm("ADCON0 equ 01Fh");


typedef union {
    struct {
        unsigned ADON :1;
        unsigned GO_nDONE :1;
        unsigned CHS :2;
        unsigned :2;
        unsigned VCFG :1;
        unsigned ADFM :1;
    };
    struct {
        unsigned :1;
        unsigned GO_DONE :1;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
    };
    struct {
        unsigned :1;
        unsigned nDONE :1;
    };
    struct {
        unsigned :1;
        unsigned GO :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x01F)));
# 727 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char OPTION_REG __attribute__((address(0x081)));

__asm("OPTION_REG equ 081h");


typedef union {
    struct {
        unsigned PS :3;
        unsigned PSA :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
        unsigned INTEDG :1;
        unsigned nGPPU :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
    };
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __attribute__((address(0x081)));
# 797 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char TRISIO __attribute__((address(0x085)));

__asm("TRISIO equ 085h");


typedef union {
    struct {
        unsigned TRISIO0 :1;
        unsigned TRISIO1 :1;
        unsigned TRISIO2 :1;
        unsigned TRISIO3 :1;
        unsigned TRISIO4 :1;
        unsigned TRISIO5 :1;
    };
} TRISIObits_t;
extern volatile TRISIObits_t TRISIObits __attribute__((address(0x085)));
# 847 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x08C)));

__asm("PIE1 equ 08Ch");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned :2;
        unsigned CMIE :1;
        unsigned :2;
        unsigned ADIE :1;
        unsigned EEIE :1;
    };
    struct {
        unsigned T1IE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x08C)));
# 895 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char PCON __attribute__((address(0x08E)));

__asm("PCON equ 08Eh");


typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
    };
    struct {
        unsigned nBOD :1;
    };
} PCONbits_t;
extern volatile PCONbits_t PCONbits __attribute__((address(0x08E)));
# 929 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char OSCCAL __attribute__((address(0x090)));

__asm("OSCCAL equ 090h");


typedef union {
    struct {
        unsigned :2;
        unsigned CAL :6;
    };
    struct {
        unsigned :2;
        unsigned CAL0 :1;
        unsigned CAL1 :1;
        unsigned CAL2 :1;
        unsigned CAL3 :1;
        unsigned CAL4 :1;
        unsigned CAL5 :1;
    };
} OSCCALbits_t;
extern volatile OSCCALbits_t OSCCALbits __attribute__((address(0x090)));
# 989 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char WPU __attribute__((address(0x095)));

__asm("WPU equ 095h");


typedef union {
    struct {
        unsigned WPU0 :1;
        unsigned WPU1 :1;
        unsigned WPU2 :1;
        unsigned :1;
        unsigned WPU4 :1;
        unsigned WPU5 :1;
    };
} WPUbits_t;
extern volatile WPUbits_t WPUbits __attribute__((address(0x095)));
# 1034 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char IOC __attribute__((address(0x096)));

__asm("IOC equ 096h");


extern volatile unsigned char IOCB __attribute__((address(0x096)));

__asm("IOCB equ 096h");


typedef union {
    struct {
        unsigned IOC0 :1;
        unsigned IOC1 :1;
        unsigned IOC2 :1;
        unsigned IOC3 :1;
        unsigned IOC4 :1;
        unsigned IOC5 :1;
    };
    struct {
        unsigned IOCB0 :1;
        unsigned IOCB1 :1;
        unsigned IOCB2 :1;
        unsigned IOCB3 :1;
        unsigned IOCB4 :1;
        unsigned IOCB5 :1;
    };
} IOCbits_t;
extern volatile IOCbits_t IOCbits __attribute__((address(0x096)));
# 1125 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
typedef union {
    struct {
        unsigned IOC0 :1;
        unsigned IOC1 :1;
        unsigned IOC2 :1;
        unsigned IOC3 :1;
        unsigned IOC4 :1;
        unsigned IOC5 :1;
    };
    struct {
        unsigned IOCB0 :1;
        unsigned IOCB1 :1;
        unsigned IOCB2 :1;
        unsigned IOCB3 :1;
        unsigned IOCB4 :1;
        unsigned IOCB5 :1;
    };
} IOCBbits_t;
extern volatile IOCBbits_t IOCBbits __attribute__((address(0x096)));
# 1208 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char VRCON __attribute__((address(0x099)));

__asm("VRCON equ 099h");


typedef union {
    struct {
        unsigned VR :4;
        unsigned :1;
        unsigned VRR :1;
        unsigned :1;
        unsigned VREN :1;
    };
    struct {
        unsigned VR0 :1;
        unsigned VR1 :1;
        unsigned VR2 :1;
        unsigned VR3 :1;
    };
} VRCONbits_t;
extern volatile VRCONbits_t VRCONbits __attribute__((address(0x099)));
# 1268 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char EEDATA __attribute__((address(0x09A)));

__asm("EEDATA equ 09Ah");


extern volatile unsigned char EEDAT __attribute__((address(0x09A)));

__asm("EEDAT equ 09Ah");


typedef union {
    struct {
        unsigned EEDATA :8;
    };
} EEDATAbits_t;
extern volatile EEDATAbits_t EEDATAbits __attribute__((address(0x09A)));







typedef union {
    struct {
        unsigned EEDATA :8;
    };
} EEDATbits_t;
extern volatile EEDATbits_t EEDATbits __attribute__((address(0x09A)));
# 1306 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char EEADR __attribute__((address(0x09B)));

__asm("EEADR equ 09Bh");


typedef union {
    struct {
        unsigned EEADR :7;
    };
} EEADRbits_t;
extern volatile EEADRbits_t EEADRbits __attribute__((address(0x09B)));
# 1326 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char EECON1 __attribute__((address(0x09C)));

__asm("EECON1 equ 09Ch");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0x09C)));
# 1364 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char EECON2 __attribute__((address(0x09D)));

__asm("EECON2 equ 09Dh");


typedef union {
    struct {
        unsigned EECON2 :8;
    };
} EECON2bits_t;
extern volatile EECON2bits_t EECON2bits __attribute__((address(0x09D)));
# 1384 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char ADRESL __attribute__((address(0x09E)));

__asm("ADRESL equ 09Eh");


typedef union {
    struct {
        unsigned ADRESL :8;
    };
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __attribute__((address(0x09E)));
# 1404 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile unsigned char ANSEL __attribute__((address(0x09F)));

__asm("ANSEL equ 09Fh");


typedef union {
    struct {
        unsigned ANS :4;
        unsigned ADCS :3;
    };
    struct {
        unsigned ANS0 :1;
        unsigned ANS1 :1;
        unsigned ANS2 :1;
        unsigned ANS3 :1;
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
        unsigned ADCS2 :1;
    };
} ANSELbits_t;
extern volatile ANSELbits_t ANSELbits __attribute__((address(0x09F)));
# 1480 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/proc/pic12f675.h" 3
extern volatile __bit ADCS0 __attribute__((address(0x4FC)));


extern volatile __bit ADCS1 __attribute__((address(0x4FD)));


extern volatile __bit ADCS2 __attribute__((address(0x4FE)));


extern volatile __bit ADFM __attribute__((address(0xFF)));


extern volatile __bit ADIE __attribute__((address(0x466)));


extern volatile __bit ADIF __attribute__((address(0x66)));


extern volatile __bit ADON __attribute__((address(0xF8)));


extern volatile __bit ANS0 __attribute__((address(0x4F8)));


extern volatile __bit ANS1 __attribute__((address(0x4F9)));


extern volatile __bit ANS2 __attribute__((address(0x4FA)));


extern volatile __bit ANS3 __attribute__((address(0x4FB)));


extern volatile __bit CAL0 __attribute__((address(0x482)));


extern volatile __bit CAL1 __attribute__((address(0x483)));


extern volatile __bit CAL2 __attribute__((address(0x484)));


extern volatile __bit CAL3 __attribute__((address(0x485)));


extern volatile __bit CAL4 __attribute__((address(0x486)));


extern volatile __bit CAL5 __attribute__((address(0x487)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CHS0 __attribute__((address(0xFA)));


extern volatile __bit CHS1 __attribute__((address(0xFB)));


extern volatile __bit CINV __attribute__((address(0xCC)));


extern volatile __bit CIS __attribute__((address(0xCB)));


extern volatile __bit CM0 __attribute__((address(0xC8)));


extern volatile __bit CM1 __attribute__((address(0xC9)));


extern volatile __bit CM2 __attribute__((address(0xCA)));


extern volatile __bit CMIE __attribute__((address(0x463)));


extern volatile __bit CMIF __attribute__((address(0x63)));


extern volatile __bit COUT __attribute__((address(0xCE)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit EEIE __attribute__((address(0x467)));


extern volatile __bit EEIF __attribute__((address(0x67)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO __attribute__((address(0xF9)));


extern volatile __bit GO_DONE __attribute__((address(0xF9)));


extern volatile __bit GO_nDONE __attribute__((address(0xF9)));


extern volatile __bit GP0 __attribute__((address(0x28)));


extern volatile __bit GP1 __attribute__((address(0x29)));


extern volatile __bit GP2 __attribute__((address(0x2A)));


extern volatile __bit GP3 __attribute__((address(0x2B)));


extern volatile __bit GP4 __attribute__((address(0x2C)));


extern volatile __bit GP5 __attribute__((address(0x2D)));


extern volatile __bit GPIE __attribute__((address(0x5B)));


extern volatile __bit GPIF __attribute__((address(0x58)));


extern volatile __bit GPIO0 __attribute__((address(0x28)));


extern volatile __bit GPIO1 __attribute__((address(0x29)));


extern volatile __bit GPIO2 __attribute__((address(0x2A)));


extern volatile __bit GPIO3 __attribute__((address(0x2B)));


extern volatile __bit GPIO4 __attribute__((address(0x2C)));


extern volatile __bit GPIO5 __attribute__((address(0x2D)));


extern volatile __bit INTE __attribute__((address(0x5C)));


extern volatile __bit INTEDG __attribute__((address(0x40E)));


extern volatile __bit INTF __attribute__((address(0x59)));


extern volatile __bit IOC0 __attribute__((address(0x4B0)));


extern volatile __bit IOC1 __attribute__((address(0x4B1)));


extern volatile __bit IOC2 __attribute__((address(0x4B2)));


extern volatile __bit IOC3 __attribute__((address(0x4B3)));


extern volatile __bit IOC4 __attribute__((address(0x4B4)));


extern volatile __bit IOC5 __attribute__((address(0x4B5)));


extern volatile __bit IOCB0 __attribute__((address(0x4B0)));


extern volatile __bit IOCB1 __attribute__((address(0x4B1)));


extern volatile __bit IOCB2 __attribute__((address(0x4B2)));


extern volatile __bit IOCB3 __attribute__((address(0x4B3)));


extern volatile __bit IOCB4 __attribute__((address(0x4B4)));


extern volatile __bit IOCB5 __attribute__((address(0x4B5)));


extern volatile __bit IRP __attribute__((address(0x1F)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PS0 __attribute__((address(0x408)));


extern volatile __bit PS1 __attribute__((address(0x409)));


extern volatile __bit PS2 __attribute__((address(0x40A)));


extern volatile __bit PSA __attribute__((address(0x40B)));


extern volatile __bit RD __attribute__((address(0x4E0)));


extern volatile __bit RP0 __attribute__((address(0x1D)));


extern volatile __bit RP1 __attribute__((address(0x1E)));


extern volatile __bit T0CS __attribute__((address(0x40D)));


extern volatile __bit T0IE __attribute__((address(0x5D)));


extern volatile __bit T0IF __attribute__((address(0x5A)));


extern volatile __bit T0SE __attribute__((address(0x40C)));


extern volatile __bit T1CKPS0 __attribute__((address(0x84)));


extern volatile __bit T1CKPS1 __attribute__((address(0x85)));


extern volatile __bit T1IE __attribute__((address(0x460)));


extern volatile __bit T1IF __attribute__((address(0x60)));


extern volatile __bit T1OSCEN __attribute__((address(0x83)));


extern volatile __bit TMR0IE __attribute__((address(0x5D)));


extern volatile __bit TMR0IF __attribute__((address(0x5A)));


extern volatile __bit TMR1CS __attribute__((address(0x81)));


extern volatile __bit TMR1GE __attribute__((address(0x86)));


extern volatile __bit TMR1IE __attribute__((address(0x460)));


extern volatile __bit TMR1IF __attribute__((address(0x60)));


extern volatile __bit TMR1ON __attribute__((address(0x80)));


extern volatile __bit TRISIO0 __attribute__((address(0x428)));


extern volatile __bit TRISIO1 __attribute__((address(0x429)));


extern volatile __bit TRISIO2 __attribute__((address(0x42A)));


extern volatile __bit TRISIO3 __attribute__((address(0x42B)));


extern volatile __bit TRISIO4 __attribute__((address(0x42C)));


extern volatile __bit TRISIO5 __attribute__((address(0x42D)));


extern volatile __bit VCFG __attribute__((address(0xFE)));


extern volatile __bit VR0 __attribute__((address(0x4C8)));


extern volatile __bit VR1 __attribute__((address(0x4C9)));


extern volatile __bit VR2 __attribute__((address(0x4CA)));


extern volatile __bit VR3 __attribute__((address(0x4CB)));


extern volatile __bit VREN __attribute__((address(0x4CF)));


extern volatile __bit VRR __attribute__((address(0x4CD)));


extern volatile __bit WPU0 __attribute__((address(0x4A8)));


extern volatile __bit WPU1 __attribute__((address(0x4A9)));


extern volatile __bit WPU2 __attribute__((address(0x4AA)));


extern volatile __bit WPU4 __attribute__((address(0x4AC)));


extern volatile __bit WPU5 __attribute__((address(0x4AD)));


extern volatile __bit WR __attribute__((address(0x4E1)));


extern volatile __bit WREN __attribute__((address(0x4E2)));


extern volatile __bit WRERR __attribute__((address(0x4E3)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit nBOD __attribute__((address(0x470)));


extern volatile __bit nBOR __attribute__((address(0x470)));


extern volatile __bit nDONE __attribute__((address(0xF9)));


extern volatile __bit nGPPU __attribute__((address(0x40F)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nPOR __attribute__((address(0x471)));


extern volatile __bit nT1SYNC __attribute__((address(0x82)));


extern volatile __bit nTO __attribute__((address(0x1C)));
# 224 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic_chip_select.h" 2 3
# 14 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic.h" 2 3
# 30 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic.h" 3
#pragma intrinsic(__nop)
extern void __nop(void);
# 78 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/eeprom_routines.h" 1 3
# 114 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/eeprom_routines.h" 3
extern void eeprom_write(unsigned char addr, unsigned char value);
extern unsigned char eeprom_read(unsigned char addr);
# 86 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic.h" 2 3





#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(unsigned long);
# 137 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 28 "/opt/microchip/mplabx/v5.40/packs/Microchip/PIC10-12Fxxx_DFP/1.3.46/xc8/pic/include/xc.h" 2 3
# 12 "main_timer.c" 2
# 63 "main_timer.c"
char cont_botao_press;
char cont_pisca_leds;
char bt_estado_atual;
char bt_estado_anterior;
char bt_num_toques;
char modo_timer;
char cont_toques;
char timer_out;





void config_osc(void);
void config_mcu(void);
void config_var(void);
char ler_botao(void);
char estado_botao(void);
void cooking(char tempo);
void modo_lowpower(void);
void config_TM1(void);
void som_modo_preparo(char modo);
void som(void);
void __attribute__((picinterrupt(("")))) isr(void);





void main(void) {

    config_osc();
    config_mcu();
    config_var();
    config_TM1();

    while (1){
        bt_num_toques = estado_botao();
        if(bt_num_toques == 1){
            som();
            while (cont_pisca_leds <= 60){
                bt_num_toques = estado_botao();

                if ((bt_estado_atual == 1) && cont_botao_press > 15 && bt_num_toques == 1){
                    som();
                    modo_timer = ~modo_timer;
                    cont_botao_press = 0;
                    cont_toques = 2;
                }

                if (modo_timer == 0x00){
                    GP4= 0;
                    GP5= 1;
                }
                if (modo_timer == 0xFF){
                    GP5 = 0;
                    GP4 = 1;
                }
                _delay(500000);
                GP4 = 1;
                GP5 = 1;
                _delay(500000);
                cont_pisca_leds++;
                if(bt_num_toques== 2){
                    som();
                    cooking(modo_timer);
                    cont_pisca_leds = 255;
                }
            }
        }
        cont_toques = 0;
        GP4 = 1;
        GP5 = 1;
        modo_lowpower();
    }
}





void config_osc(void){
__asm("BSF STATUS, 5");
__asm ("CALL 3FFh");
__asm ("MOVWF OSCCAL");
__asm ("BCF STATUS, 5");
}




void modo_lowpower(void){
    __asm("sleep");
    __nop();
    __nop();
}






void config_mcu(void){
    ANSEL = 0b00000000;
    CMCON = 0b00000111;
    TRISIO = 0b11001000;
    WPU = 0b00000000;
    GP0 = 0;
    GP1 = 0;
    GP2 = 0;
    GP4 = 1;
    GP5 = 1;
    GIE = 1;
    PEIE= 1;
    GPIE = 1;
    IOC3= 1;

}





void config_var(void){
    cont_botao_press = 0;
    cont_pisca_leds = 0;
    modo_timer = 0x00;
    bt_estado_atual = 0;
    bt_estado_anterior = 0;
    bt_num_toques = 0;
    cont_toques = 0;
    timer_out = 0;
}



char ler_botao(void){

    char status;
    if (GP3 == 0){
        _delay(2);
        if(GP3 == 0){
            cont_botao_press++;
            cont_pisca_leds = 0;
            status = 1;
        }
    }
    else{
        cont_botao_press = 0;
        status = 0;
    }
    return status;
}




char estado_botao(void){

    char estado_toques;


    bt_estado_atual = ler_botao();
    if(bt_estado_atual != bt_estado_anterior){
        cont_toques++;
    }
    switch (cont_toques){
        case 0: {
                estado_toques = 0;
                break;
        }
        case 4: {
                estado_toques = 2;
                cont_toques = 0;
                break;
        }
        default: {
                estado_toques = 1;
                break;
        }
    }
    bt_estado_anterior = bt_estado_atual;
    return estado_toques;
}






void cooking(char tempo){
    char timer_cont_seg;
    char timer_cont_min;
    char modo_fim;
    modo_fim = 0;
    if(tempo == 0x00){
        timer_cont_min = 5;
    }
    if(tempo == 0xFF){
        timer_cont_min = 10;
    }
    while(timer_cont_min != 0){
        if (timer_out == 1){
            timer_out = 0;
            if (timer_cont_seg == 0){
                timer_cont_min--;
                timer_cont_seg = 114;
                }
                timer_cont_seg--;
            }
        TMR1ON = 1;
        GP0 = 1;
        GP4 = 0;
        GP5 = 0;
        _delay(250000);
        GP4 = 1;
        GP5 = 1;
        _delay(250000);

        bt_estado_atual = ler_botao();

        if (bt_estado_atual==1 && cont_botao_press > 15){
            modo_fim = 1;
            cont_botao_press = 0;
            timer_cont_min =0;
        }
    }
    TMR1ON = 0;
    GP0 = 0;
    som_modo_preparo(modo_fim);
}







void som(void){
    GP1 = 1;
    _delay(100000);
    GP1 = 0;
}





void som_modo_preparo(char modo){
    if(modo == 0){

        for(char t=0; t<= 15; t++){
            GP1 = 1;
            _delay(300000);
            GP1 = 0;
            _delay(300000);
        }
    }
    if(modo == 1){
        for(char t=0; t<=3; t++){
            GP1 = 1;
            _delay(100000);
            GP1 = 0;
            _delay(100000);
        }
    }
}
# 338 "main_timer.c"
void config_TM1(void){
    T1CON = 0b01100000;
    TMR1IE = 1;
    TMR1L = 0x00;
    TMR1H = 0x00;
}






void __attribute__((picinterrupt(("")))) isr(void){





    if ((GPIE && GPIF) ==1){
        if (GP3 == 1 || GP3 == 0){
        GPIF = 0;
        }
    }






    if(TMR1IE == 1 && TMR1IF== 1){
        timer_out = 1;
        TMR1IF = 0;
        TMR1L = 0x00;
        TMR1H = 0x00;
    }

}
