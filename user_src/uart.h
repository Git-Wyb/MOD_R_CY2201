#ifndef __UART_H__
#define __UART_H__
//#include "type_def.h"
/***********************************************************************/
/*  FILE        :Uart.H                                                */
/*  DATE        :Mar, 2014                                             */
/*  Programmer	:xiang 'R                                              */
/*  CPU TYPE    :STM8L151G6     Crystal: 16M HSI                       */
/*  DESCRIPTION :                                                      */
/*  Mark        :ver 1.0                                               */
/***********************************************************************/
#include "uart.h"
extern u8 u1busyCache;
#define U1Busy_OUT u1busyCache
#define FrameHeadSataus 0x00 //֡ͷ
#define DataStatus 0x01      //����λ��
#define FrameEndStatus 0x02  //�����
//#define FrameHead 0x02       //���ݿ�ʼ
#define FrameHead 0xAB       //���ݿ�ʼ
#define FrameSingnalID 0x11  //�ź�ID

extern UINT8 UartStatus;
extern UINT8 UartLen;
extern UINT8 Uart_Fremo_NO ;
extern UINT8 Uart_Type ;
extern UINT8 UartCount;
//extern UINT8 UART_DATA_buffer[50];
extern UINT8 UART_DATA_buffer[110];
void ReceiveFrame(UINT8 Cache);
void OprationFrame(void);
void TranmissionACK(void);
void wireless_Receive_SendUart(void);
typedef union {
    unsigned char Data[4];
    struct
    {
        unsigned char ID_No : 8;
        unsigned char Statues : 4;
        unsigned char Mode : 4;
        unsigned char Abnormal : 8;
        unsigned char Standby : 8;
    };
    struct
    {
        unsigned char : 8;
        unsigned char SW_Info : 8;
        unsigned char AbnormalOut1 : 8;
        unsigned char AbnormalOut2 : 8;
    };   
} __Databits_t;
typedef enum {
    IdelStatues = 0,
    ReceivingStatues,
    ReceiveDoneStatues,
    ACKingStatues,
    ACKDoneStatues,
} __U1Statues;
extern __U1Statues U1Statues;
extern unsigned int U1AckTimer;
#define U1AckDelayTime 1

void UART1_INIT(void);
void UART1_RX_RXNE(void);
void Send_char(unsigned char ch);
void Send_String(unsigned char *string);
void Send_Data(unsigned char *P_data, unsigned int length);
void UART1_end(void);
void PC_PRG(void);

#endif
