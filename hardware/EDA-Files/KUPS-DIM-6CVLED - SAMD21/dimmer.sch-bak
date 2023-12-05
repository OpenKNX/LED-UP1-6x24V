EESchema Schematic File Version 4
LIBS:KUPS-DIM-6CVLED-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "KUPS-DIM-6CVLED"
Date "2021-04-18"
Rev "V00.03"
Comp "KNX Makerstuff"
Comment1 "by SirSydom <com@sirsydom.de>"
Comment2 ""
Comment3 ""
Comment4 "https://gitlab.com/knx-makerstuff/kups-dim-6cvled"
$EndDescr
$Comp
L Transistor_FET:IRF3205 Q5
U 1 1 602C331C
P 4800 3300
F 0 "Q5" H 5006 3346 50  0000 L CNN
F 1 "IRLU2905" H 5006 3255 50  0000 L CNN
F 2 "sirsydom:TO-251-3_Vertical_lowprofile" H 5050 3225 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4800 3300 50  0001 L CNN
	1    4800 3300
	1    0    0    1   
$EndComp
$Comp
L sirsydom:ADuM1250 U5
U 1 1 602D20DF
P 4350 1350
F 0 "U5" H 4350 1817 50  0000 C CNN
F 1 "ADuM1250" H 4350 1726 50  0000 C CNN
F 2 "Package_SO:SSOP-8_3.9x5.05mm_P1.27mm" H 4350 950 50  0001 C CIN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADUM1250_1251.pdf" H 4325 1400 50  0001 C CNN
	1    4350 1350
	1    0    0    -1  
$EndComp
$Comp
L Driver_LED:PCA9685PW U4
U 1 1 602D2970
P 2150 3550
F 0 "U4" H 1750 4400 50  0000 C CNN
F 1 "PCA9685PW" H 2450 4400 50  0000 C CNN
F 2 "sirsydom:TSSOP-28_4.4x9.7mm_P0.65mm_Handsolder" H 2175 2575 50  0001 L CNN
F 3 "http://www.nxp.com/documents/data_sheet/PCA9685.pdf" H 1750 4250 50  0001 C CNN
	1    2150 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 602DC681
P 2050 1100
F 0 "#PWR0104" H 2050 950 50  0001 C CNN
F 1 "+5V" V 2065 1228 50  0000 L CNN
F 2 "" H 2050 1100 50  0001 C CNN
F 3 "" H 2050 1100 50  0001 C CNN
	1    2050 1100
	0    1    1    0   
$EndComp
Text GLabel 6700 4500 0    50   Input ~ 0
V_LED
Text GLabel 6700 4400 0    50   Input ~ 0
GND_LED
Text GLabel 1500 1600 3    50   Input ~ 0
GND_LED
Text GLabel 800  1100 0    50   Input ~ 0
V_LED
$Comp
L Device:CP C10
U 1 1 602DEE59
P 950 1250
F 0 "C10" H 1068 1296 50  0000 L CNN
F 1 "10uF / 35V" H 700 1150 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.3" H 988 1100 50  0001 C CNN
F 3 "~" H 950 1250 50  0001 C CNN
	1    950  1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  1100 950  1100
Connection ~ 950  1100
Wire Wire Line
	950  1100 1200 1100
Wire Wire Line
	950  1400 1500 1400
Wire Wire Line
	1500 1400 1500 1600
Connection ~ 1500 1400
$Comp
L Device:C C11
U 1 1 602DFF75
P 1900 1250
F 0 "C11" H 2015 1296 50  0000 L CNN
F 1 "10uF" H 2015 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1938 1100 50  0001 C CNN
F 3 "~" H 1900 1250 50  0001 C CNN
	1    1900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1100 1900 1100
Wire Wire Line
	1900 1400 1500 1400
Wire Wire Line
	2050 1100 1900 1100
Connection ~ 1900 1100
$Comp
L power:+5V #PWR0105
U 1 1 602E227F
P 5900 650
F 0 "#PWR0105" H 5900 500 50  0001 C CNN
F 1 "+5V" V 5915 778 50  0000 L CNN
F 2 "" H 5900 650 50  0001 C CNN
F 3 "" H 5900 650 50  0001 C CNN
	1    5900 650 
	0    1    1    0   
$EndComp
Text GLabel 5950 1550 2    50   Input ~ 0
GND_LED
Wire Wire Line
	4850 1250 5400 1250
$Comp
L power:+3V3 #PWR0108
U 1 1 602E3EFD
P 2850 650
F 0 "#PWR0108" H 2850 500 50  0001 C CNN
F 1 "+3V3" V 2865 778 50  0000 L CNN
F 2 "" H 2850 650 50  0001 C CNN
F 3 "" H 2850 650 50  0001 C CNN
	1    2850 650 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 602E476A
P 2850 1550
F 0 "#PWR0109" H 2850 1300 50  0001 C CNN
F 1 "GND" V 2855 1422 50  0000 R CNN
F 2 "" H 2850 1550 50  0001 C CNN
F 3 "" H 2850 1550 50  0001 C CNN
	1    2850 1550
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 3750 1450 3850
Wire Wire Line
	1450 4650 2150 4650
Connection ~ 1450 3850
Wire Wire Line
	1450 3850 1450 3950
Connection ~ 1450 3950
Wire Wire Line
	1450 3950 1450 4050
Connection ~ 1450 4050
Wire Wire Line
	1450 4050 1450 4150
Connection ~ 1450 4150
Wire Wire Line
	1450 4150 1450 4250
Connection ~ 1450 4250
Wire Wire Line
	1450 4250 1450 4650
Text GLabel 2150 4650 3    50   Input ~ 0
GND_LED
$Comp
L power:+5V #PWR0110
U 1 1 602E59A2
P 2150 2150
F 0 "#PWR0110" H 2150 2000 50  0001 C CNN
F 1 "+5V" H 2165 2323 50  0000 C CNN
F 2 "" H 2150 2150 50  0001 C CNN
F 3 "" H 2150 2150 50  0001 C CNN
	1    2150 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 602E6AF4
P 3700 900
F 0 "C12" V 3850 900 50  0000 C CNN
F 1 "47nF" V 3539 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3738 750 50  0001 C CNN
F 3 "~" H 3700 900 50  0001 C CNN
	1    3700 900 
	0    1    1    0   
$EndComp
$Comp
L Device:C C13
U 1 1 602E708F
P 5000 900
F 0 "C13" V 5150 900 50  0000 C CNN
F 1 "47nF" V 4839 900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5038 750 50  0001 C CNN
F 3 "~" H 5000 900 50  0001 C CNN
	1    5000 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 900  4850 1150
$Comp
L Device:R R13
U 1 1 602EB109
P 5650 800
F 0 "R13" H 5720 846 50  0000 L CNN
F 1 "1k" V 5650 750 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5580 800 50  0001 C CNN
F 3 "~" H 5650 800 50  0001 C CNN
	1    5650 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 602EB9EC
P 5400 800
F 0 "R12" H 5470 846 50  0000 L CNN
F 1 "1k" V 5400 750 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5330 800 50  0001 C CNN
F 3 "~" H 5400 800 50  0001 C CNN
	1    5400 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 650  5400 650 
Wire Wire Line
	4850 650  4850 900 
Connection ~ 5400 650 
Wire Wire Line
	5400 650  4850 650 
Connection ~ 4850 900 
Wire Wire Line
	5150 900  5150 1550
Wire Wire Line
	4850 1550 5150 1550
Wire Wire Line
	5150 1550 5950 1550
Connection ~ 5150 1550
Wire Wire Line
	5900 650  5650 650 
Connection ~ 5650 650 
Wire Wire Line
	5400 950  5400 1250
Wire Wire Line
	5650 950  5650 1450
Wire Wire Line
	4850 1450 5650 1450
$Comp
L Device:R R11
U 1 1 602FCD0D
P 3300 800
F 0 "R11" H 3370 846 50  0000 L CNN
F 1 "1k" V 3300 750 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3230 800 50  0001 C CNN
F 3 "~" H 3300 800 50  0001 C CNN
	1    3300 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 602FD5B9
P 3050 800
F 0 "R10" H 3120 846 50  0000 L CNN
F 1 "1k" V 3050 750 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2980 800 50  0001 C CNN
F 3 "~" H 3050 800 50  0001 C CNN
	1    3050 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 650  3050 650 
Wire Wire Line
	3850 650  3850 900 
Connection ~ 3050 650 
Wire Wire Line
	3050 650  3300 650 
Connection ~ 3300 650 
Wire Wire Line
	3300 650  3850 650 
Connection ~ 3850 900 
Wire Wire Line
	3850 900  3850 1150
Wire Wire Line
	3850 1250 3300 1250
Wire Wire Line
	3050 950  3050 1450
Wire Wire Line
	3050 1450 3850 1450
Wire Wire Line
	2850 1550 3550 1550
Wire Wire Line
	3550 900  3550 1550
Connection ~ 3550 1550
Wire Wire Line
	3550 1550 3850 1550
Text GLabel 5950 1250 2    50   Input ~ 0
SDA_ISO
Text GLabel 5950 1450 2    50   Input ~ 0
SCL_ISO
Wire Wire Line
	5950 1250 5400 1250
Connection ~ 5400 1250
Wire Wire Line
	5950 1450 5650 1450
Connection ~ 5650 1450
Text GLabel 2850 1250 0    50   Input ~ 0
SDA
Text GLabel 2850 1450 0    50   Input ~ 0
SCL
Wire Wire Line
	3300 1250 3300 950 
Wire Wire Line
	2850 1250 3300 1250
Connection ~ 3300 1250
Wire Wire Line
	2850 1450 3050 1450
Connection ~ 3050 1450
Text GLabel 1450 2950 0    50   Input ~ 0
SDA_ISO
Text GLabel 1450 2850 0    50   Input ~ 0
SCL_ISO
$Comp
L Device:R R14
U 1 1 6030BC15
P 1300 3150
F 0 "R14" V 1400 3100 50  0000 L CNN
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
L Device:R R35
U 1 1 6030EC18
P 4600 3150
F 0 "R35" H 4500 3350 50  0000 L CNN
F 1 "10k" V 4600 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4530 3150 50  0001 C CNN
F 3 "~" H 4600 3150 50  0001 C CNN
	1    4600 3150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 602C3FB8
P 4450 3300
F 0 "R25" V 4550 3150 50  0000 L CNN
F 1 "100R" V 4450 3200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4380 3300 50  0001 C CNN
F 3 "~" H 4450 3300 50  0001 C CNN
	1    4450 3300
	0    1    -1   0   
$EndComp
Connection ~ 4600 3300
Text GLabel 4900 3000 2    50   Input ~ 0
GND_LED
Wire Wire Line
	4900 3100 4900 3000
Wire Wire Line
	4900 3000 4600 3000
$Comp
L Transistor_FET:IRF3205 Q6
U 1 1 60314261
P 4800 2250
F 0 "Q6" H 5006 2296 50  0000 L CNN
F 1 "IRLU2905" H 5006 2205 50  0000 L CNN
F 2 "sirsydom:TO-251-3_Vertical_lowprofile" H 5050 2175 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4800 2250 50  0001 L CNN
	1    4800 2250
	1    0    0    1   
$EndComp
$Comp
L Device:R R36
U 1 1 6031426B
P 4600 2100
F 0 "R36" H 4500 2300 50  0000 L CNN
F 1 "10k" V 4600 2050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4530 2100 50  0001 C CNN
F 3 "~" H 4600 2100 50  0001 C CNN
	1    4600 2100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 60314275
P 4450 2250
F 0 "R26" V 4550 2050 50  0000 L CNN
F 1 "100R" V 4450 2150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4380 2250 50  0001 C CNN
F 3 "~" H 4450 2250 50  0001 C CNN
	1    4450 2250
	0    1    -1   0   
$EndComp
Connection ~ 4600 2250
Text GLabel 4900 1950 2    50   Input ~ 0
GND_LED
Wire Wire Line
	4900 2050 4900 1950
Wire Wire Line
	4900 1950 4600 1950
$Comp
L Transistor_FET:IRF3205 Q3
U 1 1 6031AE8E
P 4800 5400
F 0 "Q3" H 5006 5446 50  0000 L CNN
F 1 "IRLU2905" H 5006 5355 50  0000 L CNN
F 2 "sirsydom:TO-251-3_Vertical_lowprofile" H 5050 5325 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4800 5400 50  0001 L CNN
	1    4800 5400
	1    0    0    1   
$EndComp
$Comp
L Device:R R33
U 1 1 6031AE98
P 4600 5250
F 0 "R33" H 4550 5450 50  0000 L CNN
F 1 "10k" V 4600 5200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4530 5250 50  0001 C CNN
F 3 "~" H 4600 5250 50  0001 C CNN
	1    4600 5250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R23
U 1 1 6031AEA2
P 4450 5400
F 0 "R23" V 4550 5250 50  0000 L CNN
F 1 "100R" V 4450 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4380 5400 50  0001 C CNN
F 3 "~" H 4450 5400 50  0001 C CNN
	1    4450 5400
	0    1    -1   0   
$EndComp
Connection ~ 4600 5400
Text GLabel 4900 5100 2    50   Input ~ 0
GND_LED
Wire Wire Line
	4900 5200 4900 5100
Wire Wire Line
	4900 5100 4600 5100
$Comp
L Transistor_FET:IRF3205 Q4
U 1 1 6031AEB0
P 4800 4350
F 0 "Q4" H 5006 4396 50  0000 L CNN
F 1 "IRLU2905" H 5006 4305 50  0000 L CNN
F 2 "sirsydom:TO-251-3_Vertical_lowprofile" H 5050 4275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4800 4350 50  0001 L CNN
	1    4800 4350
	1    0    0    1   
$EndComp
$Comp
L Device:R R34
U 1 1 6031AEBA
P 4600 4200
F 0 "R34" H 4550 4400 50  0000 L CNN
F 1 "10k" V 4600 4150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4530 4200 50  0001 C CNN
F 3 "~" H 4600 4200 50  0001 C CNN
	1    4600 4200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R24
U 1 1 6031AEC4
P 4450 4350
F 0 "R24" V 4550 4200 50  0000 L CNN
F 1 "100R" V 4450 4250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4380 4350 50  0001 C CNN
F 3 "~" H 4450 4350 50  0001 C CNN
	1    4450 4350
	0    1    -1   0   
$EndComp
Connection ~ 4600 4350
Text GLabel 4900 4050 2    50   Input ~ 0
GND_LED
Wire Wire Line
	4900 4150 4900 4050
Wire Wire Line
	4900 4050 4600 4050
Wire Wire Line
	4900 5600 5850 5600
Wire Wire Line
	5850 3800 6700 3800
Wire Wire Line
	5750 3900 6700 3900
Wire Wire Line
	5750 4000 6700 4000
Wire Wire Line
	5850 4100 6700 4100
Wire Wire Line
	3350 2250 3350 2850
Wire Wire Line
	3350 2850 2850 2850
Wire Wire Line
	2850 2950 3350 2950
Wire Wire Line
	3350 2950 3350 3300
Wire Wire Line
	2850 3050 3250 3050
Wire Wire Line
	3250 3050 3250 4350
Wire Wire Line
	2850 3150 3150 3150
Wire Wire Line
	3150 3150 3150 5400
Wire Wire Line
	3350 2250 4300 2250
Wire Wire Line
	3350 3300 4300 3300
Wire Wire Line
	3250 4350 4300 4350
Wire Wire Line
	3150 5400 4300 5400
Wire Wire Line
	5850 4100 5850 5600
Wire Wire Line
	4900 4550 5750 4550
Wire Wire Line
	5750 4000 5750 4550
Wire Wire Line
	4900 3500 5750 3500
Wire Wire Line
	5750 3500 5750 3900
Wire Wire Line
	4900 2450 5850 2450
Wire Wire Line
	5850 2450 5850 3800
$Comp
L Connector_Generic:Conn_01x08 J4
U 1 1 602F7F3B
P 6900 4200
F 0 "J4" H 6818 3575 50  0000 C CNN
F 1 "Conn_01x08" H 6818 3666 50  0000 C CNN
F 2 "sirsydom:PhoenixContact_MKDS_1,5_8-G-3.5_1x08_P3.5mm_Horizontal" H 6900 4200 50  0001 C CNN
F 3 "~" H 6900 4200 50  0001 C CNN
	1    6900 4200
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:IRF3205 Q1
U 1 1 60303601
P 4800 7350
F 0 "Q1" H 5006 7396 50  0000 L CNN
F 1 "IRLU2905" H 5006 7305 50  0000 L CNN
F 2 "sirsydom:TO-251-3_Vertical_lowprofile" H 5050 7275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4800 7350 50  0001 L CNN
	1    4800 7350
	1    0    0    1   
$EndComp
$Comp
L Device:R R31
U 1 1 6030360B
P 4600 7200
F 0 "R31" H 4500 7400 50  0000 L CNN
F 1 "10k" V 4600 7150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4530 7200 50  0001 C CNN
F 3 "~" H 4600 7200 50  0001 C CNN
	1    4600 7200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 60303615
P 4450 7350
F 0 "R21" V 4550 7200 50  0000 L CNN
F 1 "100R" V 4450 7250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4380 7350 50  0001 C CNN
F 3 "~" H 4450 7350 50  0001 C CNN
	1    4450 7350
	0    1    -1   0   
$EndComp
Connection ~ 4600 7350
Text GLabel 4900 7050 2    50   Input ~ 0
GND_LED
Wire Wire Line
	4900 7150 4900 7050
Wire Wire Line
	4900 7050 4600 7050
$Comp
L Transistor_FET:IRF3205 Q2
U 1 1 60303623
P 4800 6300
F 0 "Q2" H 5006 6346 50  0000 L CNN
F 1 "IRLU2905" H 5006 6255 50  0000 L CNN
F 2 "sirsydom:TO-251-3_Vertical_lowprofile" H 5050 6225 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf3205.pdf" H 4800 6300 50  0001 L CNN
	1    4800 6300
	1    0    0    1   
$EndComp
$Comp
L Device:R R32
U 1 1 6030362D
P 4600 6150
F 0 "R32" H 4550 6350 50  0000 L CNN
F 1 "10k" V 4600 6100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4530 6150 50  0001 C CNN
F 3 "~" H 4600 6150 50  0001 C CNN
	1    4600 6150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 60303637
P 4450 6300
F 0 "R22" V 4550 6150 50  0000 L CNN
F 1 "100R" V 4450 6200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4380 6300 50  0001 C CNN
F 3 "~" H 4450 6300 50  0001 C CNN
	1    4450 6300
	0    1    -1   0   
$EndComp
Connection ~ 4600 6300
Text GLabel 4900 6000 2    50   Input ~ 0
GND_LED
Wire Wire Line
	4900 6100 4900 6000
Wire Wire Line
	4900 6000 4600 6000
Wire Wire Line
	6000 6500 6000 4200
Wire Wire Line
	6000 4200 6700 4200
Wire Wire Line
	4900 6500 6000 6500
Wire Wire Line
	6700 4300 6150 4300
Wire Wire Line
	6150 4300 6150 7550
Wire Wire Line
	4900 7550 6150 7550
Wire Wire Line
	2850 3250 3050 3250
Wire Wire Line
	3050 3250 3050 6300
Wire Wire Line
	3050 6300 4300 6300
Wire Wire Line
	2850 3350 2950 3350
Wire Wire Line
	2950 3350 2950 7350
Wire Wire Line
	2950 7350 4300 7350
Text Notes 7150 3950 0    50   ~ 0
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
L Device:C C14
U 1 1 60320126
P 2000 2400
F 0 "C14" V 2150 2400 50  0000 L CNN
F 1 "10uF" V 1850 2400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2038 2250 50  0001 C CNN
F 3 "~" H 2000 2400 50  0001 C CNN
	1    2000 2400
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Linear:AP2127N3-1.2 U3
U 1 1 605BD7AF
P 1500 1100
F 0 "U3" H 1500 1342 50  0000 C CNN
F 1 "LDO 5V SOT23-3" H 1500 1251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23" H 1500 1325 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AP2127.pdf" H 1500 1100 50  0001 C CNN
	1    1500 1100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
