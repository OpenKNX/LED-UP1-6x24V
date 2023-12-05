EESchema Schematic File Version 4
LIBS:LED-UP1-6x24V-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Transistor_FET:IRF3205 Q2
U 1 1 602C331C
P 5150 6100
F 0 "Q2" H 5356 6146 50  0000 L CNN
F 1 "IRLU2905" H 5356 6055 50  0000 L CNN
F 2 "sirsydom:TO-251-3_Vertical_lowprofile" H 5400 6025 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 5150 6100 50  0001 L CNN
	1    5150 6100
	1    0    0    -1  
$EndComp
$Comp
L sirsydom:ADuM1250 U2
U 1 1 602D20DF
P 2550 1350
F 0 "U2" H 2550 1817 50  0000 C CNN
F 1 "ADuM1250" H 2550 1726 50  0000 C CNN
F 2 "Package_SO:SSOP-8_3.9x5.05mm_P1.27mm" H 2550 950 50  0001 C CIN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADUM1250_1251.pdf" H 2525 1400 50  0001 C CNN
	1    2550 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 602DC681
P 7500 950
F 0 "#PWR0101" H 7500 800 50  0001 C CNN
F 1 "+5V" V 7515 1078 50  0000 L CNN
F 2 "" H 7500 950 50  0001 C CNN
F 3 "" H 7500 950 50  0001 C CNN
	1    7500 950 
	0    1    1    0   
$EndComp
Text GLabel 7050 4900 0    50   Input ~ 0
V_LED
Text GLabel 7050 5000 0    50   Input ~ 0
GND_LED
Text GLabel 6250 950  0    50   Input ~ 0
V_LED
$Comp
L Device:CP C3
U 1 1 602DEE59
P 6400 1100
F 0 "C3" H 6518 1146 50  0000 L CNN
F 1 "10uF / 35V" H 6150 1000 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.3" H 6438 950 50  0001 C CNN
F 3 "~" H 6400 1100 50  0001 C CNN
	1    6400 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 950  6400 950 
Connection ~ 6400 950 
Wire Wire Line
	6400 950  6650 950 
Wire Wire Line
	6400 1250 6950 1250
Wire Wire Line
	6950 1250 6950 1450
Connection ~ 6950 1250
$Comp
L Device:C C4
U 1 1 602DFF75
P 7350 1100
F 0 "C4" H 7465 1146 50  0000 L CNN
F 1 "10uF" H 7465 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7388 950 50  0001 C CNN
F 3 "~" H 7350 1100 50  0001 C CNN
	1    7350 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 950  7350 950 
Wire Wire Line
	7350 1250 6950 1250
Wire Wire Line
	7500 950  7350 950 
Connection ~ 7350 950 
$Comp
L power:+5V #PWR0102
U 1 1 602E227F
P 4100 650
F 0 "#PWR0102" H 4100 500 50  0001 C CNN
F 1 "+5V" V 4115 778 50  0000 L CNN
F 2 "" H 4100 650 50  0001 C CNN
F 3 "" H 4100 650 50  0001 C CNN
	1    4100 650 
	0    1    1    0   
$EndComp
Text GLabel 4150 1550 2    50   Input ~ 0
GND_LED
Wire Wire Line
	3050 1250 3600 1250
$Comp
L power:GND #PWR0104
U 1 1 602E476A
P 1050 1550
F 0 "#PWR0104" H 1050 1300 50  0001 C CNN
F 1 "GND" V 1055 1422 50  0000 R CNN
F 2 "" H 1050 1550 50  0001 C CNN
F 3 "" H 1050 1550 50  0001 C CNN
	1    1050 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 4650 2150 4650
Text GLabel 2150 4650 3    50   Input ~ 0
GND_LED
$Comp
L power:+5V #PWR0105
U 1 1 602E59A2
P 2150 2150
F 0 "#PWR0105" H 2150 2000 50  0001 C CNN
F 1 "+5V" H 2165 2323 50  0000 C CNN
F 2 "" H 2150 2150 50  0001 C CNN
F 3 "" H 2150 2150 50  0001 C CNN
	1    2150 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 602E6AF4
P 1900 900
F 0 "C1" V 2050 900 50  0000 C CNN
F 1 "47nF" V 1739 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1938 750 50  0001 C CNN
F 3 "~" H 1900 900 50  0001 C CNN
	1    1900 900 
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 602E708F
P 3200 900
F 0 "C2" V 3350 900 50  0000 C CNN
F 1 "47nF" V 3039 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3238 750 50  0001 C CNN
F 3 "~" H 3200 900 50  0001 C CNN
	1    3200 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 900  3050 1150
$Comp
L Device:R R4
U 1 1 602EB109
P 3850 800
F 0 "R4" H 3920 846 50  0000 L CNN
F 1 "1k" V 3850 750 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3780 800 50  0001 C CNN
F 3 "~" H 3850 800 50  0001 C CNN
	1    3850 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 602EB9EC
P 3600 800
F 0 "R3" H 3670 846 50  0000 L CNN
F 1 "1k" V 3600 750 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3530 800 50  0001 C CNN
F 3 "~" H 3600 800 50  0001 C CNN
	1    3600 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 650  3600 650 
Wire Wire Line
	3050 650  3050 900 
Connection ~ 3600 650 
Wire Wire Line
	3600 650  3050 650 
Connection ~ 3050 900 
Wire Wire Line
	3350 900  3350 1550
Wire Wire Line
	3050 1550 3350 1550
Wire Wire Line
	3350 1550 4150 1550
Connection ~ 3350 1550
Wire Wire Line
	4100 650  3850 650 
Connection ~ 3850 650 
Wire Wire Line
	3600 950  3600 1250
Wire Wire Line
	3850 950  3850 1450
Wire Wire Line
	3050 1450 3850 1450
Wire Wire Line
	2050 650  2050 900 
Connection ~ 2050 900 
Wire Wire Line
	2050 900  2050 1150
Wire Wire Line
	1050 1550 1750 1550
Wire Wire Line
	1750 900  1750 1550
Connection ~ 1750 1550
Wire Wire Line
	1750 1550 2050 1550
Text GLabel 4150 1250 2    50   Input ~ 0
SDA_ISO
Text GLabel 4150 1450 2    50   Input ~ 0
SCL_ISO
Wire Wire Line
	4150 1250 3600 1250
Connection ~ 3600 1250
Wire Wire Line
	4150 1450 3850 1450
Connection ~ 3850 1450
Text GLabel 1050 1250 0    50   Input ~ 0
SDA
Text GLabel 1050 1450 0    50   Input ~ 0
SCL
Text GLabel 1450 2950 0    50   Input ~ 0
SDA_ISO
Text GLabel 1450 2850 0    50   Input ~ 0
SCL_ISO
$Comp
L Device:R R7
U 1 1 6030BC15
P 1300 3150
F 0 "R7" V 1400 3100 50  0000 L CNN
F 1 "10k" V 1300 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1230 3150 50  0001 C CNN
F 3 "~" H 1300 3150 50  0001 C CNN
	1    1300 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 3150 1150 4650
Wire Wire Line
	1150 4650 1450 4650
Connection ~ 1450 4650
$Comp
L Device:R R8
U 1 1 6030EC18
P 4950 6250
F 0 "R8" H 4850 6450 50  0000 L CNN
F 1 "10k" V 4950 6200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4880 6250 50  0001 C CNN
F 3 "~" H 4950 6250 50  0001 C CNN
	1    4950 6250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 602C3FB8
P 4800 6100
F 0 "R9" V 4900 5950 50  0000 L CNN
F 1 "100R" V 4800 6000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4730 6100 50  0001 C CNN
F 3 "~" H 4800 6100 50  0001 C CNN
	1    4800 6100
	0    1    1    0   
$EndComp
Connection ~ 4950 6100
Text GLabel 5250 6400 2    50   Input ~ 0
GND_LED
Wire Wire Line
	5250 6300 5250 6400
Wire Wire Line
	5250 6400 4950 6400
$Comp
L Transistor_FET:IRF3205 Q1
U 1 1 60314261
P 5150 7150
F 0 "Q1" H 5356 7196 50  0000 L CNN
F 1 "IRLU2905" H 5356 7105 50  0000 L CNN
F 2 "sirsydom:TO-251-3_Vertical_lowprofile" H 5400 7075 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 5150 7150 50  0001 L CNN
	1    5150 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6031426B
P 4950 7300
F 0 "R5" H 4850 7500 50  0000 L CNN
F 1 "10k" V 4950 7250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4880 7300 50  0001 C CNN
F 3 "~" H 4950 7300 50  0001 C CNN
	1    4950 7300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 60314275
P 4800 7150
F 0 "R6" V 4900 6950 50  0000 L CNN
F 1 "100R" V 4800 7050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4730 7150 50  0001 C CNN
F 3 "~" H 4800 7150 50  0001 C CNN
	1    4800 7150
	0    1    1    0   
$EndComp
Connection ~ 4950 7150
Text GLabel 5250 7450 2    50   Input ~ 0
GND_LED
Wire Wire Line
	5250 7350 5250 7450
Wire Wire Line
	5250 7450 4950 7450
$Comp
L Transistor_FET:IRF3205 Q4
U 1 1 6031AE8E
P 5150 4000
F 0 "Q4" H 5356 4046 50  0000 L CNN
F 1 "IRLU2905" H 5356 3955 50  0000 L CNN
F 2 "sirsydom:TO-251-3_Vertical_lowprofile" H 5400 3925 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 5150 4000 50  0001 L CNN
	1    5150 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 6031AE98
P 4950 4150
F 0 "R12" H 4900 4350 50  0000 L CNN
F 1 "10k" V 4950 4100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4880 4150 50  0001 C CNN
F 3 "~" H 4950 4150 50  0001 C CNN
	1    4950 4150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R13
U 1 1 6031AEA2
P 4800 4000
F 0 "R13" V 4900 3850 50  0000 L CNN
F 1 "100R" V 4800 3900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4730 4000 50  0001 C CNN
F 3 "~" H 4800 4000 50  0001 C CNN
	1    4800 4000
	0    1    1    0   
$EndComp
Connection ~ 4950 4000
Text GLabel 5250 4300 2    50   Input ~ 0
GND_LED
Wire Wire Line
	5250 4200 5250 4300
Wire Wire Line
	5250 4300 4950 4300
$Comp
L Transistor_FET:IRF3205 Q3
U 1 1 6031AEB0
P 5150 5050
F 0 "Q3" H 5356 5096 50  0000 L CNN
F 1 "IRLU2905" H 5356 5005 50  0000 L CNN
F 2 "sirsydom:TO-251-3_Vertical_lowprofile" H 5400 4975 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 5150 5050 50  0001 L CNN
	1    5150 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 6031AEBA
P 4950 5200
F 0 "R10" H 4900 5400 50  0000 L CNN
F 1 "10k" V 4950 5150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4880 5200 50  0001 C CNN
F 3 "~" H 4950 5200 50  0001 C CNN
	1    4950 5200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 6031AEC4
P 4800 5050
F 0 "R11" V 4900 4900 50  0000 L CNN
F 1 "100R" V 4800 4950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4730 5050 50  0001 C CNN
F 3 "~" H 4800 5050 50  0001 C CNN
	1    4800 5050
	0    1    1    0   
$EndComp
Connection ~ 4950 5050
Text GLabel 5250 5350 2    50   Input ~ 0
GND_LED
Wire Wire Line
	5250 5250 5250 5350
Wire Wire Line
	5250 5350 4950 5350
Wire Wire Line
	5250 3800 6200 3800
Wire Wire Line
	6200 5600 7050 5600
Wire Wire Line
	6100 5500 7050 5500
Wire Wire Line
	6100 5400 7050 5400
Wire Wire Line
	6200 5300 7050 5300
Wire Wire Line
	6200 5300 6200 3800
Wire Wire Line
	5250 4850 6100 4850
Wire Wire Line
	6100 5400 6100 4850
Wire Wire Line
	5250 5900 6100 5900
Wire Wire Line
	6100 5900 6100 5500
Wire Wire Line
	5250 6950 6200 6950
Wire Wire Line
	6200 6950 6200 5600
$Comp
L Connector_Generic:Conn_01x08 J1
U 1 1 602F7F3B
P 7250 5200
F 0 "J1" H 7168 4575 50  0000 C CNN
F 1 "Conn_01x08" H 7168 4666 50  0000 C CNN
F 2 "sirsydom:PhoenixContact_MKDS_1,5_8-G-3.5_1x08_P3.5mm_Horizontal" H 7250 5200 50  0001 C CNN
F 3 "~" H 7250 5200 50  0001 C CNN
	1    7250 5200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRF3205 Q6
U 1 1 60303601
P 5150 2050
F 0 "Q6" H 5356 2096 50  0000 L CNN
F 1 "IRLU2905" H 5356 2005 50  0000 L CNN
F 2 "sirsydom:TO-251-3_Vertical_lowprofile" H 5400 1975 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 5150 2050 50  0001 L CNN
	1    5150 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 6030360B
P 4950 2200
F 0 "R16" H 4850 2400 50  0000 L CNN
F 1 "10k" V 4950 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4880 2200 50  0001 C CNN
F 3 "~" H 4950 2200 50  0001 C CNN
	1    4950 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R17
U 1 1 60303615
P 4800 2050
F 0 "R17" V 4900 1900 50  0000 L CNN
F 1 "100R" V 4800 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4730 2050 50  0001 C CNN
F 3 "~" H 4800 2050 50  0001 C CNN
	1    4800 2050
	0    1    1    0   
$EndComp
Connection ~ 4950 2050
Text GLabel 5250 2350 2    50   Input ~ 0
GND_LED
Wire Wire Line
	5250 2250 5250 2350
Wire Wire Line
	5250 2350 4950 2350
$Comp
L Transistor_FET:IRF3205 Q5
U 1 1 60303623
P 5150 3100
F 0 "Q5" H 5356 3146 50  0000 L CNN
F 1 "IRLU2905" H 5356 3055 50  0000 L CNN
F 2 "sirsydom:TO-251-3_Vertical_lowprofile" H 5400 3025 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 5150 3100 50  0001 L CNN
	1    5150 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 6030362D
P 4950 3250
F 0 "R14" H 4900 3450 50  0000 L CNN
F 1 "10k" V 4950 3200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4880 3250 50  0001 C CNN
F 3 "~" H 4950 3250 50  0001 C CNN
	1    4950 3250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R15
U 1 1 60303637
P 4800 3100
F 0 "R15" V 4900 2950 50  0000 L CNN
F 1 "100R" V 4800 3000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4730 3100 50  0001 C CNN
F 3 "~" H 4800 3100 50  0001 C CNN
	1    4800 3100
	0    1    1    0   
$EndComp
Connection ~ 4950 3100
Text GLabel 5250 3400 2    50   Input ~ 0
GND_LED
Wire Wire Line
	5250 3300 5250 3400
Wire Wire Line
	5250 3400 4950 3400
Wire Wire Line
	6350 2900 6350 5200
Wire Wire Line
	6350 5200 7050 5200
Wire Wire Line
	5250 2900 6350 2900
Wire Wire Line
	7050 5100 6500 5100
Wire Wire Line
	6500 5100 6500 1850
Wire Wire Line
	5250 1850 6500 1850
Text Notes 7500 5450 0    50   ~ 0
AKL 059-08\noder\nMKDS 1/ 8-3,5 - 1751303
Text GLabel 1750 2400 0    50   Input ~ 0
GND_LED
Connection ~ 2150 2400
Wire Wire Line
	2150 2400 2150 2550
Wire Wire Line
	1750 2400 1850 2400
Wire Wire Line
	2150 2150 2150 2400
$Comp
L Device:C C5
U 1 1 60320126
P 2000 2400
F 0 "C5" V 2150 2400 50  0000 L CNN
F 1 "10uF" V 1850 2400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2038 2250 50  0001 C CNN
F 3 "~" H 2000 2400 50  0001 C CNN
	1    2000 2400
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Linear:AP2127N3-1.2 U1
U 1 1 605BD7AF
P 6950 950
F 0 "U1" H 6950 1192 50  0000 C CNN
F 1 "LDO 5V SOT23-3" H 6950 1101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23" H 6950 1175 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AP2127.pdf" H 6950 950 50  0001 C CNN
	1    6950 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 650  2050 650 
Wire Wire Line
	1050 1250 2050 1250
Wire Wire Line
	1050 1450 2050 1450
Text GLabel 1050 650  0    50   Input ~ 0
3V3
Connection ~ 1450 4150
Wire Wire Line
	1450 4050 1450 4150
Connection ~ 1450 4050
Wire Wire Line
	1450 3950 1450 4050
Connection ~ 1450 3950
Wire Wire Line
	1450 4250 1450 4650
Wire Wire Line
	1450 4150 1450 4250
Connection ~ 1450 4250
Wire Wire Line
	1450 3850 1450 3950
Wire Wire Line
	1450 3750 1450 3850
Connection ~ 1450 3850
$Comp
L Driver_LED:PCA9685PW U3
U 1 1 602D2970
P 2150 3550
F 0 "U3" H 1750 4400 50  0000 C CNN
F 1 "PCA9685PW" H 2450 4400 50  0000 C CNN
F 2 "sirsydom:TSSOP-28_4.4x9.7mm_P0.65mm_Handsolder" H 2175 2575 50  0001 L CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCA9685.pdf" H 1750 4250 50  0001 C CNN
	1    2150 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2850 3350 2850
Wire Wire Line
	3350 2850 3350 2050
Wire Wire Line
	3350 2050 4650 2050
Wire Wire Line
	4650 3100 4200 3100
Wire Wire Line
	4200 2950 4200 3100
Wire Wire Line
	2850 2950 4200 2950
Wire Wire Line
	2850 3050 4100 3050
Wire Wire Line
	4100 3050 4100 4000
Wire Wire Line
	4100 4000 4650 4000
Wire Wire Line
	2850 3150 4000 3150
Wire Wire Line
	4000 3150 4000 5050
Wire Wire Line
	4000 5050 4650 5050
Wire Wire Line
	2850 3250 3900 3250
Wire Wire Line
	3900 3250 3900 6100
Wire Wire Line
	3900 6100 4650 6100
Wire Wire Line
	2850 3350 3800 3350
Wire Wire Line
	3800 3350 3800 7150
Wire Wire Line
	3800 7150 4650 7150
Text GLabel 6950 1450 3    50   Input ~ 0
GND_LED
Text Notes 600  1850 0    50   ~ 0
R9 + R10 on Controller2040 (V00.01) have to be 1k.\nR115 + R116 on Controller2040 (>= V00.02) have to be 1k.
Text Notes 2300 750  0    50   ~ 0
alt. ISO1541
$EndSCHEMATC
