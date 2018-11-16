/***********************************************************************/
/*  FILE        :Timer.c                                               */
/*  DATE        :Mar, 2014                                             */
/*  Programmer	:xiang 'R                                              */
/*  CPU TYPE    :STM8L151G6     Crystal: 16M HSI                       */
/*  DESCRIPTION :                                                      */
/*  Mark        :ver 1.0                                               */
/***********************************************************************/
#include <iostm8l151g4.h> // CPU�ͺ�
#include "Pin_define.h"   // �ܽŶ���
#include "initial.h"      // ��ʼ��  Ԥ����
#include "ram.h"          // RAM����
#include "uart.h"
u16 ErrStateTimeer = 1;
u16 StateReadTimer = 500;
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Timer 4 start   1ms
void TIM4_Init(void)
{
    TIM4_PSCR = 0x06; // Timer 4 prescaler  ������ʱ��Ƶ��  f CK_CNT  =f CK_PSC  / 2��N�η�
                      //TIM4_PSCR = 0x08;	// Timer 4 prescaler  ������ʱ��Ƶ��  f CK_CNT  = f CK_PSC/ 2(PSC[3:0])
    TIM4_ARR = 0xF9;  // Timer 4 period
    TIM4_CR1 |= 0x01; // Timer 4 Enable
    TIM4_IER |= 0x01; // Timer 4 OVR interrupt
}

void TIM4_UPD_OVF(void)
{ //725==1��
    if (TIMER1s)
        --TIMER1s;
    if (TIMER300ms)
        --TIMER300ms;
    if (TIMER18ms)
        --TIMER18ms;
    if (TIMER250ms_STOP)
        --TIMER250ms_STOP;
    if (TIME_10ms)
        --TIME_10ms;
    else
    { // 10mS FLAG
        TIME_10ms = 10;
        FG_10ms = 1;
    }
    if (U1AckTimer)
        U1AckTimer--;
    if (Flag_RSSI_Read_Timer)
        Flag_RSSI_Read_Timer--;
    if (X_ERRTimer)
        X_ERRTimer--;
    
    if (Time_Receive_gap)
      --Time_Receive_gap;
    if (Time_APP_RXstart)
      --Time_APP_RXstart;   
    if (Time_APP_RXseting)
      --Time_APP_RXseting;  
    
    
    TIM4_SR1_bit.UIF = 0; // ����жϱ��
}
