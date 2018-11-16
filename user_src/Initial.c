/***********************************************************************/
/*  FILE        :initial.c                                             */
/*  DATE        :Mar, 2013                                             */
/*  Programmer	:xiang 'R                                              */
/*  CPU TYPE    :STM8L151G6     Crystal: 16M HSI                       */
/*  Mark        :ver 1.0                                               */
/***********************************************************************/
#include <stdio.h>
#include <iostm8l151g4.h>
//#include        "stm8l15x.h"
#include "Pin_define.h" // �ܽŶ���
#include "initial.h"    // ��ʼ��  Ԥ����
#include "ram.h"        // RAM����
#include "ADF7030_1.h"
#include "uart.h" // uart
#include "Timer.h"
uFLAG YellowLedFlag, RedLedFalg;
void RAM_clean(void)
{ // ���RAM
    //  asm("ldw X,#0");
    //  asm("clear_ram1.l");
    //  asm("clr (X)");
    //  asm("incw X");
    //  asm("cpw X,#0x6ff");
    //  asm("jrule clear_ram1");
}
void WDT_init(void)
{
    IWDG_KR = 0xCC;
    IWDG_KR = 0x55;
    IWDG_PR = 3;
    IWDG_KR = 0xAA;
}
void ClearWDT(void)
{
    IWDG_KR = 0xAA;
}
//========================GPIO˵��===============================================================
//  GPIO_Mode_In_FL_No_IT      = (uint8_t)0x00,   /*!< Input floating, no external interrupt */
//  GPIO_Mode_In_PU_No_IT      = (uint8_t)0x40,   /*!< Input pull-up, no external interrupt */
//  GPIO_Mode_In_FL_IT         = (uint8_t)0x20,   /*!< Input floating, external interrupt */
//  GPIO_Mode_In_PU_IT         = (uint8_t)0x60,   /*!< Input pull-up, external interrupt */
//  GPIO_Mode_Out_OD_Low_Fast  = (uint8_t)0xA0,   /*!< Output open-drain, low level, 10MHz */
//  GPIO_Mode_Out_PP_Low_Fast  = (uint8_t)0xE0,   /*!< Output push-pull, low level, 10MHz */
//  GPIO_Mode_Out_OD_Low_Slow  = (uint8_t)0x80,   /*!< Output open-drain, low level, 2MHz */
//  GPIO_Mode_Out_PP_Low_Slow  = (uint8_t)0xC0,   /*!< Output push-pull, low level, 2MHz */
//  GPIO_Mode_Out_OD_HiZ_Fast  = (uint8_t)0xB0,   /*!< Output open-drain, high-impedance level, 10MHz */
//  GPIO_Mode_Out_PP_High_Fast = (uint8_t)0xF0,   /*!< Output push-pull, high level, 10MHz */
//  GPIO_Mode_Out_OD_HiZ_Slow  = (uint8_t)0x90,   /*!< Output open-drain, high-impedance level, 2MHz */
//  GPIO_Mode_Out_PP_High_Slow = (uint8_t)0xD0    /*!< Output push-pull, high level, 2MHz */
//===���͹���˵������I/Oû�ã�������Input pull-up    ��I/O��Χ��IC����û�ã�������Input floating=====

void VHF_GPIO_INIT(void) // CPU�˿�����
{
    /****************�˿�����˵��***************************
    *CR1�Ĵ���  ��� Output��1=���졢0=OC��
    *           ���� Input��1=������0=������
    ***************end************************************/
    KEY_GPIO_Init();             // ���� test�� ��¼��
    Receiver_vent_direc = Input; // Input   ���Ż���������ON/OFF
    Receiver_vent_CR1 = 1;

    PIN_BEEP_direc = Output; // Output   ������
    PIN_BEEP_CR1 = 1;
    PIN_BEEP = 0;

    LED_GPIO_Init();
    ADF7030_GPIO_INIT();
    CG2214M6_GPIO_Init();
    Receiver_OUT_GPIO_Init(); // Output   ���Ż��̵���
}
//============================================================================================
void SysClock_Init(void)
{ // ϵͳʱ�ӣ��ⲿʱ�ӣ�
    //    /* Infinite loop */
    //    CLK_DeInit();                                         //ʱ�ӻָ�Ĭ��
    //    CLK_HSICmd(ENABLE);
    //    while(CLK_GetFlagStatus(CLK_FLAG_HSIRDY)==RESET);//�ȴ�ֱ��LSI�ȶ�
    ////    CLK_HSEConfig(CLK_HSE_ON);
    ////    CLK_HSEConfig(CLK_HSE_ON);
    ////    while(CLK_GetFlagStatus(CLK_FLAG_HSERDY)==RESET);//�ȴ�ֱ��HSE�ȶ�
    //    CLK_SYSCLKSourceSwitchCmd(ENABLE);
    ////    CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_HSE);
    //    CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_HSI);
    //    CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_1);
    //    CLK_SYSCLKSourceSwitchCmd(DISABLE);
    ////    CLK_LSICmd(ENABLE);
    ////    while(CLK_GetFlagStatus(CLK_FLAG_LSIRDY)==RESET);//�ȴ�ֱ��LSI�ȶ�
    ////    CLK_HSEConfig(CLK_HSE_OFF);
    ////    CLK_SYSCLKSourceConfig(CLK_SYSCLKSource_LSI);
    ////    CLK_SYSCLKDivConfig(CLK_SYSCLKDiv_1);
    ////    CLK_SYSCLKSourceSwitchCmd(DISABLE);
    //
    //    //CLK_LSICmd(ENABLE);   //ʹ��LSIʱ�Ӹ����Ź���
    //    //while(CLK_GetFlagStatus(CLK_FLAG_LSIRDY)==RESET);//�ȴ�ֱ��LSI�ȶ�

    CLK_ICKCR_HSION = 1; // ʹ���ڲ�RC OSC��16.00MHz��
    while ((CLK_ICKCR & 0x02) == 0)
        ;              // ����ڲ�����
    CLK_SWR = 0x01;    // ָ��HSIΪ��ʱ��
                       //	while(( CLK_SWCR & 0x08 ) == 0 );		// �ȴ�HSI�л�
    CLK_SWCR_SWEN = 1; // ִ���л�
    CLK_CKDIVR = 0x00; // ����ʱ�ӷ�Ƶ  f HSI= f HSI RC���/1    f CPU= f MASTER
    //---------------------------------------- ����
    //CLK_PCKENR1 = 0x84;						// T1,UART1
    CLK_PCKENR1 = 0x64; // T4,UART1,beep
    CLK_PCKENR2 = 0x03; // ADC,T1

    CLK_ICKCR_LSION = 1; // ʹ���ڲ�LSI OSC��38KHz��
    while (CLK_ICKCR_LSIRDY == 0)
        ; // ����ڲ�LSI OSC
}

void beep_init(void)
{
    //BEEP_CSR=0x4E;
    BEEP_CSR2 = 0;
    BEEP_CSR2_BEEPDIV = 5;
    BEEP_CSR2_BEEPSEL = 2;
    CLK_CBEEPR_CLKBEEPSEL0 = 1;
    CLK_CBEEPR_CLKBEEPSEL1 = 0;
}

//===================Delayus()��ʱ===============//    Crystal: 16M HSI
void Delayus(unsigned char timer)
{
    unsigned char x; //��ʱT=((timer-1)*0.313+2 us
    for (x = 0; x < timer; x++)
        __asm("nop");
}
void Receiver_OUT_GPIO_Init(void)
{
    Inverters_OUT_direc = Input; // ����   �̵�������źŷ���   �͵�ƽ��Ч
    Inverters_OUT_CR1 = 1;
    if (Inverters_OUT == 1)
    {
        FG_allow_out = 1;
        FG_NOT_allow_out = 0;
    }
    else
    {
        FG_allow_out = 0;
        FG_NOT_allow_out = 1;
    }

    Receiver_OUT_OPEN_direc = Output; // Output   ���Ż��̵���OPEN  �ߵ�ƽ��Ч
    Receiver_OUT_OPEN_CR1 = 1;
    Receiver_OUT_OPEN = FG_NOT_allow_out;

    Receiver_OUT_CLOSE_direc = Output; // Output   ���Ż��̵���CLOSE  �ߵ�ƽ��Ч
    Receiver_OUT_CLOSE_CR1 = 1;
    Receiver_OUT_CLOSE = FG_NOT_allow_out;

    Receiver_OUT_STOP_direc = Output; // Output   ���Ż��̵���STOP  �ߵ�ƽ��Ч
    Receiver_OUT_STOP_CR1 = 1;
    Receiver_OUT_STOP = FG_NOT_allow_out;

    Receiver_OUT_VENT_direc = Output;
    Receiver_OUT_VENT_CR1 = 1;
    Receiver_OUT_VENT = FG_NOT_allow_out;
}
/**
****************************************************************************
* @Function	: void LED_GPIO_Init(void)
* @file		: Initial.c
* @Author	: Xiaowine
* @date		: 2017/4/10
* @version	: V1.0
* @brief
**/
void LED_GPIO_Init(void)
{
    Receiver_LED_OUT_direc = Output; // Output   ���Ż��̵����������  �ߵ�ƽ��Ч
    Receiver_LED_OUT_CR1 = 1;
    Receiver_LED_OUT = 0;

    Receiver_LED_TX_direc = Output; // Output   ���Ż�����ָʾ  �ߵ�ƽ��Ч
    Receiver_LED_TX_CR1 = 1;
    Receiver_LED_TX = 0;

    Receiver_LED_RX_direc = Output; // Output   ���Ż�����ָʾ  �ߵ�ƽ��Ч
    Receiver_LED_RX_CR1 = 1;
    Receiver_LED_RX = 0;
}
/**
****************************************************************************
* @Function	: void CG2214M6_GPIO_Init(void)
* @file		: Initial.c
* @Author	: Xiaowine
* @date		: 2017/4/11
* @version	: V1.0
* @brief	:
**/
void CG2214M6_GPIO_Init(void)
{
    CG2214M6_VC1_DDR = Output; /* �������ݷ���Ĵ��� 1Ϊ�����0Ϊ����--�鿴STM8�Ĵ���RM0031.pdf 10.9 */
    CG2214M6_VC1_CR1 = 1;      /* �����������--�鿴STM8�Ĵ���RM0031.pdf 10.9*/
    CG2214M6_VC1_CR2 = 1;      /* �������Ƶ�� 1Ϊ10M��0Ϊ2M--�鿴STM8�Ĵ���.pdf P89 */

    CG2214M6_VC2_DDR = Output; /* �������ݷ���Ĵ��� 1Ϊ�����0Ϊ����--�鿴STM8�Ĵ���.RM0031.pdf 10.9 */
    CG2214M6_VC2_CR1 = 1;      /* �����������--�鿴STM8�Ĵ���RM0031.pdf 10.9*/
    CG2214M6_VC2_CR2 = 1;      /* �������Ƶ�� 1Ϊ10M��0Ϊ2M--�鿴STM8�Ĵ���.pdf P89 */
}
/**
****************************************************************************
* @Function : void ADF7030_GPIO_INIT(void)
* @File     : Initial.c
* @Program  :
* @Created  : 2017/4/12 by Xiaowine
* @Brief    : оƬ��Χ����IO��ʼ��
* @Version  : V1.0
**/
void ADF7030_GPIO_INIT(void)
{
    ADF7030_REST_DDR = Output; //* �������ݷ���Ĵ��� 1Ϊ�����0Ϊ����--�鿴STM8�Ĵ���RM0031.pdf 10.9 */
    ADF7030_REST_CR1 = 1;      //* �����������--�鿴STM8�Ĵ���RM0031.pdf 10.9*/
    ADF7030_REST_CR2 = 1;      //* �������Ƶ�� 1Ϊ10M��0Ϊ2M--�鿴STM8�Ĵ���.pdf P89 */

    ADF7030_GPIO2_DDR = Input;            //����
    ADF7030_GPIO2_CR1 = Floating;         //1: Input with pull-up 0: Floating input
    ADF7030_GPIO2_CR2 = InterruptDisable; //��ֹ�ж�

    ADF7030_GPIO3_DDR = Input; //����
    ADF7030_GPIO3_CR1 = 1;     //1: Input with pull-up 0: Floating input
    ADF7030_GPIO3_CR2 = 0;     //��ֹ�ж�
    BerExtiInit();
}
/**
 ****************************************************************************
 * @Function : void BerExtiInit(void)
 * @File     : Initial.c
 * @Program  :
 * @Created  : 2017/6/6 by Xiaowine
 * @Brief    :
 * @Version  : V1.0
**/
void BerExtiInit(void)
{
    ADF7030_GPIO4_DDR = Input; //����
    ADF7030_GPIO4_CR1 = 0;     //1: Input with pull-up 0: Floating input
    ADF7030_GPIO4_CR2 = 1;     //ʹ���ж�
    EXTI_CR2 &= (~MASK_EXTI_CR2_P4IS);
    EXTI_CR2 |= 0x02;

    ADF7030_GPIO5_DDR = Input; //����
    ADF7030_GPIO5_CR1 = 1;     //1: Input with pull-up 0: Floating input
    ADF7030_GPIO5_CR2 = 0;     //��ֹ�ж�
}
/**
 ****************************************************************************
 * @Function : void BerExtiInit(void)
 * @File     : Initial.c
 * @Program  :
 * @Created  : 2017/6/6 by Xiaowine
 * @Brief    :
 * @Version  : V1.0
**/
void BerExtiUnInit(void)
{
    ADF7030_GPIO4_DDR = Input; //����
    ADF7030_GPIO4_CR1 = 0;     //1: Input with pull-up 0: Floating input
    ADF7030_GPIO4_CR2 = 0;     //��ֹ�ж�
    EXTI_CR2 &= (~MASK_EXTI_CR2_P4IS);

    ADF7030_GPIO5_DDR = Input; //����
    ADF7030_GPIO5_CR1 = 1;     //1: Input with pull-up 0: Floating input
    ADF7030_GPIO5_CR2 = 0;     //��ֹ�ж�
}
/**
****************************************************************************
* @Function	: void KEY_GPIO_Init(void)
* @file		: Initial.c
* @Author	: Xiaowine
* @date		: 2017/4/10
* @version	: V1.0
* @brief
**/
void KEY_GPIO_Init(void)
{
    // KEY_SW2_DDR = Input; //����
    // KEY_SW2_CR1 = 1;     //1: Input with pull-up 0: Floating input
    // KEY_SW2_CR2 = 0;     //��ֹ�ж�

    // KEY_SW3_DDR = Input; //����
    // KEY_SW3_CR1 = 1;     //1: Input with pull-up 0: Floating input
    // KEY_SW3_CR2 = 0;     //��ֹ�ж�

    // KEY_SW4_DDR = Input; //����
    // KEY_SW4_CR1 = 1;     //1: Input with pull-up 0: Floating input
    // KEY_SW4_CR2 = 0;     //��ֹ�ж�

    Receiver_Login_direc = Input;          // Input   ���Ż���¼��   �͵�ƽ��Ч
    Receiver_Login_CR1 = Floating;         //1: Input with pull-up 0: Floating input
    Receiver_Login_CR2 = InterruptDisable; //��ֹ�ж�
    //   Receiver_test_direc = Input;
    // Receiver_test_CR1 = 1;

    WORK_TEST_DDR = Input;            // ����     test��
    WORK_TEST_CR1 = Pull_up;          //1: Input with pull-up 0: Floating input
    WORK_TEST_CR2 = InterruptDisable; //��ֹ�ж�

    TP3_DDR = Input;            // ����     test��
    TP3_CR1 = Pull_up;          //1: Input with pull-up 0: Floating input
    TP3_CR2 = InterruptDisable; //��ֹ�ж�

    TP4_DDR = Input;            // ����     test��
    TP4_CR1 = Pull_up;          //1: Input with pull-up 0: Floating input
    TP4_CR2 = InterruptDisable; //��ֹ�ж�
}

/**
 ****************************************************************************
 * @Function : void RF_BRE_Check(void)
 * @File     : Initial.c
 * @Program  :
 * @Created  : 2017/5/5 by Xiaowine
 * @Brief    :
 * @Version  : V1.0
**/
void RF_BRE_Check(void)
{
    char errbuff[10];
    ClearWDT(); // Service the WDT
    if (ADF7030_GPIO3 == 1)
    {
        WaitForADF7030_FIXED_DATA(); //�ȴ�оƬ����/�ɽ���CMD״̬
        DELAY_30U();
        ADF7030_Clear_IRQ();
        WaitForADF7030_FIXED_DATA(); //�ȴ�оƬ����/�ɽ���CMD״̬
        DELAY_30U();
        while (ADF7030_GPIO3 == 1)
            ;
        WaitForADF7030_FIXED_DATA(); //�ȴ�оƬ����/�ɽ���CMD״̬
        DELAY_30U();
        ADF7030_CHANGE_STATE(STATE_PHY_ON);
        WaitForADF7030_FIXED_DATA(); //�ȴ�оƬ����/�ɽ���CMD״̬
        ADF7030_RECEIVING_FROM_POWEROFF();
    }

    if (X_COUNT >= 1000)
    {
        if (X_ERR >= 50)
            Receiver_LED_RX = 0;
        else
            Receiver_LED_RX = 1;
        sprintf(errbuff, "%d\r\n", X_ERR);
        //s((u8 *)errbuff);
        //for (j = 0; j < 4; j++)
        //lcd    display_map_xy(70 + j * 6, 45, 5, 8, char_Small + (CacheData[3 - j] - ' ') * 5);
        //        display_map_58_6(70,45,4,CacheData);
        X_ERR = 0;
        X_COUNT = 0;
        X_ERRTimer = 1250;
    }
    if (X_ERRTimer == 0)
        Receiver_LED_RX = 0;
}
void RF_test_mode(void)
{
   u8 i;
   /* UINT8 Boot_i;
    Receiver_LED_OUT = 1;
    for (Boot_i = 0; Boot_i < 4; Boot_i++)
    {
        for (time_3sec = 0; time_3sec < 6000; time_3sec++)
        {
            Delayus(250); //80us
            ClearWDT();   // Service the WDT
                          // Send_char(0x05);
        }
        Receiver_LED_OUT = !Receiver_LED_OUT;
    }*/
    Receiver_LED_OUT = 0;

    while (Receiver_test == 0)
    {
        ClearWDT();   // Service the WDT
        
/*
        if (TP4 == 0) //test ADF7030 TX
        {
            if (TP3 == 0)
                Tx_Rx_mode = 0;
            else
                Tx_Rx_mode = 1;
        }
        else //test ADF7030 RX
        {
            if (TP3 == 0)
                Tx_Rx_mode = 2;
            else
                Tx_Rx_mode = 3;
        }
*/


		 if(FLAG_TELEC_10ms){
			FLAG_TELEC_10ms = 0;
			if(TIME_TELEC_CH)--TIME_TELEC_CH;
			if(TIME_TELEC_mode)--TIME_TELEC_mode;
			if(TIME_TELEC_CH_dec)--TIME_TELEC_CH_dec;
		}
		if((Receiver_Login==0)&&(FLAG_TELEC_mode==0)&&(TIME_TELEC_mode==0)){
			FLAG_TELEC_mode=1;
			Tx_Rx_mode++;
			if(Tx_Rx_mode>3)Tx_Rx_mode=0;
		}
		if(Receiver_Login==1){FLAG_TELEC_mode=0;TIME_TELEC_mode=5;}
		if((TP3==0)&&(FLAG_TELEC_CH==0)&&(TIME_TELEC_CH==0)){
			FLAG_TELEC_CH=1;
			TELEC_Frequency_CH++;
			if(FG_test_rx==0){
				if(TELEC_Frequency_CH==1)TELEC_Frequency_CH=2;
				if(TELEC_Frequency_CH>47)TELEC_Frequency_CH=2;
			}
			else {
				if(TELEC_Frequency_CH>47)TELEC_Frequency_CH=1;
			}
			if(FG_test_rx==0)
				{
				PROFILE_CH_FREQ_32bit_200002EC_TELEC = 429175000;
				for(i=0;i<TELEC_Frequency_CH-2;i++)
				   PROFILE_CH_FREQ_32bit_200002EC_TELEC += 12500;
				if (Tx_Rx_mode == 0) //发载波，无调制信�?
				   ADF7030_TX(TestTXCarrier);
				else if(Tx_Rx_mode == 1) //发载波，有调制信�?
				   ADF7030_TX(TestTx_PreamblePattern);						
				}
			 else PROFILE_CH_FREQ_32bit_200002EC = 426075000;
		}
		if(TP3==1){FLAG_TELEC_CH=0;TIME_TELEC_CH=5;}
		
		
		if((TP4==0)&&(FLAG_TELEC_CH_dec==0)&&(TIME_TELEC_CH_dec==0)){
			FLAG_TELEC_CH_dec=1;
			TELEC_Frequency_CH--;
			if(FG_test_rx==0){
				if(TELEC_Frequency_CH<=1)TELEC_Frequency_CH=47;
			}
			else {
				if(TELEC_Frequency_CH<1)TELEC_Frequency_CH=47;
			}
			if(FG_test_rx==0)
				{
				PROFILE_CH_FREQ_32bit_200002EC_TELEC = 429175000;
				for(i=0;i<TELEC_Frequency_CH-2;i++)
				   PROFILE_CH_FREQ_32bit_200002EC_TELEC += 12500;
				if (Tx_Rx_mode == 0) //发载波，无调制信�?
				   ADF7030_TX(TestTXCarrier);
				else if(Tx_Rx_mode == 1) //发载波，有调制信�?
				   ADF7030_TX(TestTx_PreamblePattern);
				}						
			 else PROFILE_CH_FREQ_32bit_200002EC = 426075000;
		}
		if(TP4==1){FLAG_TELEC_CH_dec=0;TIME_TELEC_CH_dec=5;}




        if ((Tx_Rx_mode == 0) || (Tx_Rx_mode == 1))
        {
            CG2214M6_USE_T;
            FG_test_rx = 0;
            Receiver_LED_RX = 0;
            FG_test_tx_off = 0;
            if (Tx_Rx_mode == 0) //���ز����޵����ź�
            {
                Receiver_LED_TX = 1;
                FG_test_mode = 0;
                FG_test_tx_1010 = 0;
                if (FG_test_tx_on == 0)
                {
                    FG_test_tx_on = 1;
					PROFILE_CH_FREQ_32bit_200002EC_TELEC = 429175000;
					for(i=0;i<TELEC_Frequency_CH-2;i++)
					   PROFILE_CH_FREQ_32bit_200002EC_TELEC += 12500;					
                    ADF7030_TX(TestTXCarrier);
                    //7021_DATA_ ADF7021_DATA_direc = Input;
                    //ttset dd_set_TX_mode_carrier();
                }
            }
            else //���ز����е����ź�
            {
                if (TIMER1s == 0)
                {
                    TIMER1s = 500;
                    Receiver_LED_TX = !Receiver_LED_TX;
                }
                FG_test_mode = 1;
                FG_test_tx_on = 0;
                if (FG_test_tx_1010 == 0)
                {
					PROFILE_CH_FREQ_32bit_200002EC_TELEC = 429175000;
					for(i=0;i<TELEC_Frequency_CH-2;i++)
					   PROFILE_CH_FREQ_32bit_200002EC_TELEC += 12500;                
                    ADF7030_TX(TestTx_PreamblePattern);
                    FG_test_tx_1010 = 1;

                    //7021_DATA_ ADF7021_DATA_direc = Output;
                    //ttset dd_set_TX_mode_1010pattern();
                }
            }
        }
        //else  {           //test ADF7021 RX
        if ((Tx_Rx_mode == 2) || (Tx_Rx_mode == 3))
        {
            CG2214M6_USE_R;
            FG_test_rx = 1;
            Receiver_LED_TX = 0;
            FG_test_mode = 0;
            FG_test_tx_on = 0;
            FG_test_tx_1010 = 0;
            if (FG_test_tx_off == 0)
            {
/*
		            PROFILE_CH_FREQ_32bit_200002EC = 426075000;
                PROFILE_RADIO_AFC_CFG1_32bit_2000031C = 0x0005005A;            
*/
                ADF7030_RECEIVING_FROM_POWEROFF();
                FG_test_tx_off = 1;
            }
            if (Tx_Rx_mode == 2) //packet usart out put RSSI
            {
                if (TIMER1s == 0)
                {
                    TIMER1s = 500;
                    Receiver_LED_RX = !Receiver_LED_RX;
                }
                SCAN_RECEIVE_PACKET(); //ɨ���������
            }
            if (Tx_Rx_mode == 3) //packet usart out put BER
            {
                RF_BRE_Check();
            }
        }
        //PC_PRG(); // PC����
        //	if((ADF7021_DATA_CLK==1)&&(FG_test_mode==1)&&(FG_test1==0)){
        //           ADF7021_DATA_tx=!ADF7021_DATA_tx;
        //           FG_test1=1;
        //        }
        //       if(ADF7021_DATA_CLK==0)FG_test1=0;
    }
    BerExtiUnInit();
    FG_test_rx = 0;
    TIMER1s = 0;
    Receiver_LED_TX = 0;
    Receiver_LED_RX = 0;
    FG_Receiver_LED_RX = 0;
    Receiver_LED_OUT = 0;

    FLAG_APP_RX = 1;
    TIME_Fine_Calibration = 900;
    TIME_EMC = 10;
    PROFILE_CH_FREQ_32bit_200002EC = 426075000;
}
