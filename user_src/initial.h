#ifndef __INITIAL_H_
#define __INITIAL_H_
#include "type_def.h"
/***********************************************************************/
/*  FILE        :initial.h                                             */
/*  DATE        :Mar, 2014                                             */
/*  Programmer	:xiang 'R                                              */
/*  CPU TYPE    :STM8L151G6     Crystal: 16M HSI                       */
/*  Mark        :ver 1.0                                               */
/***********************************************************************/
/***********************ϵͳԤ����**********************/

#define UINT8 unsigned char
#define INT8 char
#define UINT16 unsigned int
#define INT16 int
#define UINT32 unsigned long
#define INT32 long

#define uchar unsigned char
#define uint unsigned int
#define ulong unsigned long

#define _NOP() asm(" nop ")
#define _EI() asm(" rim ")
#define _DI() asm(" sim ")

// ������ƼĴ���1��1=�����0=���룩
#define Input 0
#define Output 1
//1: Input
// pull-up 0: Floating input
// pull-up 0: Floating input
#define Pull_up 1
#define Floating 0
#define InterruptDisable 0
#define InterruptEnable 1
/*******************ϵͳԤ����  end**********************/

typedef union { // ID No.
    UINT32 IDL;
    UINT8 IDB[4];
} uni_rom_id;

void LED_GPIO_Init(void);     //��ʼ��LED
void CG2214M6_GPIO_Init(void);
void ADF7030_GPIO_INIT(void); //ADF7030 IO(REST & GPIO3)
void Receiver_OUT_GPIO_Init(void);
void KEY_GPIO_Init(void);
void RAM_clean(void);     // ���RAM
void VHF_GPIO_INIT(void); // CPU�˿�����
void SysClock_Init(void); // ϵͳʱ�ӣ��ⲿʱ�ӣ�
void beep_init(void);
void Delayus(unsigned char timer);
void RF_test_mode(void);
void WDT_init(void);
void ClearWDT(void);
void RF_BRE_Check(void);
void BerExtiInit(void);
void BerExtiUnInit(void);
#endif
