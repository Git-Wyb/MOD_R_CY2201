/**
  ******************************************************************************
  * @file    Project/STM8L15x_StdPeriph_Template/main.c
  * @author  MCD Application Team
  * @version V1.5.0
  * @date    13-May-2011
  * @brief   Main program body
  ******************************************************************************
  * @attention
  *
  * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
  * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
  * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
  * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
  * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
  * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
  *
  * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include <iostm8l151g4.h> // CPU型号
#include "Pin_define.h"   // 管脚定义
#include "initial.h"      // 初始化  预定义
#include "ram.h"          // RAM定义
#include "ADF7030_1.h"    // 初始化ADF7021
#include "Timer.h"        // 定时器
#include "ID_Decode.h"    // ID_Decode处理
#include "eeprom.h"       // eeprom
#include "uart.h"         // uart
#include "lcd.h"
/** @addtogroup STM8L15x_StdPeriph_Template
  * @{
  */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#define OpenMode (u8)(0x08)
#define StopMode (u8)(0x04)
#define CloseMode (u8)(0x02)
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
u8 FLAG_SW10 = 0;
u16 KEY_COUNT = 0;
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program.
  * @param  None
  * @retval None
  */

void main(void)
{
    u8 counter = 0;
    _DI();             // 关全局中断
    RAM_clean();       // 清除RAM
    WDT_init();        // 看门狗
    VHF_GPIO_INIT();   // IO初始化
    SysClock_Init();   // 系统时钟初始化
    InitialFlashReg(); // flash EEPROM
    eeprom_sys_load(); // ID载入
    TIM4_Init();       // 定时器
    beep_init();       // 蜂鸣器
    ClearWDT();        // Service the WDT
    lcd_init();
    ADF7030Init(); // 射频初始化
    UART1_INIT();  // UART1 for PC Software
    _EI();         // 允许中断
    ClearWDT();    // Service the WDT
    //RF_test_mode();
    FLAG_APP_RX = 1;
    FG_Receiver_LED_RX = 0;
    TIME_EMC = 10;
    while (1)
    {
        ClearWDT(); // Service the WDT
        // if (time_Login_exit_256 == 0)
        //     ID_Decode_OUT();
        //ID_learn();
        lcd_desplay();
        TranmissionACK();
        while (1)
        {
            SCAN_RECEIVE_PACKET(); //扫描接收数据
            // if (FLAG_SW10 == 0)
            //     Freq_Scanning();
            if (Timer_Counter_1ms > 20) //20ms
            {
                Timer_Counter_1ms = 0;
                break;
            }
        }
        Eland_KeyState_Read();
        if (Key_Trg != KEY_Empty)
        {
            if (KEY_SW2_Down & Key_Trg)
                TX_DataLoad(1, OpenMode, &CONST_TXPACKET_DATA_20000AF0[0]);
            else if (KEY_SW3_Down & Key_Trg)
                TX_DataLoad(2, StopMode, &CONST_TXPACKET_DATA_20000AF0[0]);
            else if (KEY_SW4_Down & Key_Trg)
                TX_DataLoad(3, CloseMode, &CONST_TXPACKET_DATA_20000AF0[0]);

            if (FLAG_SW10 == 0)
            {
                ADF7030_WRITING_PROFILE_FROM_POWERON();
                ADF7030_TRANSMITTING_FROM_POWEROFF();
                //YELLOWLED_OFF();
                FLAG_SW10 = 1;
                counter = 0;
            }
        }
        else
        {
            if (FLAG_SW10 == 1)
            {
                counter++;
                if (counter > 5)
                {
                    FLAG_SW10 = 0;
                    //ADF7030_SYSTEM_RESET();
                    ADF7030_WRITING_PROFILE_FROM_POWERON();
                    ADF7030_RECEIVING_FROM_POWEROFF();
                    TIMER18ms = 15;
                    // ADF7030_ACC_FROM_POWEROFF();
                }
            }
        }
    }
}

#ifdef USE_FULL_ASSERT

/**
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
    /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

    /* Infinite loop */
    while (1)
    {
    }
}
#endif

/**
  * @}
  */

/******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
