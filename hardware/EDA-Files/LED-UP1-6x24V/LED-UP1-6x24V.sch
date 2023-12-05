EESchema Schematic File Version 4
LIBS:LED-UP1-6x24V-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "DIM-UP1-6x24V"
Date "2022-10-12"
Rev "V00.12"
Comp "OpenKNX"
Comment1 "by SirSydom <com@sirsydom.de>"
Comment2 ""
Comment3 ""
Comment4 "https://OpenKNX.de"
$EndDescr
$Comp
L OpenKNX:OpenKNX_UP1-Controller2040 J?
U 1 1 61F47946
P 8000 1800
AR Path="/606C5AC9/61F47946" Ref="J?"  Part="1" 
AR Path="/60F06D6E/61F47946" Ref="J?"  Part="1" 
AR Path="/61F47946" Ref="J20"  Part="1" 
F 0 "J20" H 7918 575 50  0000 C CNN
F 1 "Conn_01x21" H 7918 666 50  0000 C CNN
F 2 "OpenKNX:OpenKNX_UP1-PCBConnector_1x20_App_3D" H 8000 1800 50  0001 C CNN
F 3 "~" H 8000 1800 50  0001 C CNN
	1    8000 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7550 850  7650 850 
Wire Wire Line
	7550 950  7650 950 
Wire Wire Line
	7650 1050 7550 1050
Text GLabel 7550 950  0    50   Input ~ 0
3V3
Text GLabel 7550 1050 0    50   Input ~ 0
5V
Text GLabel 7550 850  0    50   Input ~ 0
GND
Text Notes 8500 1300 0    50   ~ 0
GP14: SPI1 SCK / UART0 CTS / I2C1 SDA / PWM7 A
Text Notes 8500 1400 0    50   ~ 0
GP15: SPI1 TX  / UART0 RTS / I2C1 SCL / PWM7 B
Text Notes 8500 1700 0    50   ~ 0
GP18: SPI0 SCK / UART0 CTS / I2C1 SDA / PWM1 A
Text Notes 8500 1800 0    50   ~ 0
GP19: SPI0 TX  / UART0 RTS / I2C1 SCL / PWM1 B
Text Notes 8500 1600 0    50   ~ 0
GP17: SPI0 CS  / UART0 RX  / I2C0 SCL / PWM0 B
Text Notes 8500 1500 0    50   ~ 0
GP16: SPI0 RX  / UART0 TX  / I2C0 SDA / PWM0 A
Text Notes 10550 1200 2    50   ~ 0
GP13: SPI1 CS  / UART0 RX  / I2C0 SCL / PWM6 B
Text Notes 8500 1900 0    50   ~ 0
GP20: SPI0 RX  / UART1 TX  / I2C0 SDA / PWM2 A
Text Notes 8500 2000 0    50   ~ 0
GP21: SPI0 CS  / UART1 RX  / I2C0 SCL / PWM2 B
Text Notes 8500 2100 0    50   ~ 0
GP22: SPI0 SCK / UART1 CTS / I2C1 SDA / PWM3 A
Text Notes 8500 2200 0    50   ~ 0
GP23: SPI0 SCK / UART1 RTS / I2C1 SCL / PWM3 B
Text Notes 8500 2300 0    50   ~ 0
GP24: SPI1 RX  / UART1 TX  / I2C0 SDA / PWM4 A
Text Notes 8500 2400 0    50   ~ 0
GP25: SPI1 CS  / UART1 RX  / I2C0 SCL / PWM4 B
Text Notes 8500 2500 0    50   ~ 0
GP26: SPI1 SCK / UART1 CTS / I2C1 SDA / PWM5 A / ADC0
Text Notes 8500 2600 0    50   ~ 0
GP27: SPI1 TX  / UART1 RTS / I2C1 SCL / PWM5 B / ADC1
Text Notes 8500 2700 0    50   ~ 0
GP28: SPI1 RX  / UART0 TX  / I2C0 SDA / PWM6 A / ADC2
Text Notes 8500 2800 0    50   ~ 0
GP29: SPI1 CS  / UART0 RX  / I2C0 SCL / PWM6 B / ADC3
Text Notes 8500 1100 0    50   ~ 0
Vcc2 from BCU (5V)
$Sheet
S 3200 2950 1650 700 
U 61F3EAF0
F0 "dimmer" 50
F1 "dimmer.sch" 50
$EndSheet
Text GLabel 7550 1350 0    50   Input ~ 0
SCL
Text GLabel 7550 1250 0    50   Input ~ 0
SDA
Wire Wire Line
	7650 1250 7550 1250
Wire Wire Line
	7550 1350 7650 1350
$EndSCHEMATC
