EESchema Schematic File Version 4
LIBS:KUPS-DIM-6CVLED-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "KUPS-DIM-6CVLED"
Date "2021-04-18"
Rev "V00.03"
Comp "KNX Makerstuff"
Comment1 "by SirSydom <com@sirsydom.de>"
Comment2 ""
Comment3 ""
Comment4 "https://gitlab.com/knx-makerstuff/kups-dim-6cvled"
$EndDescr
Text GLabel 1850 1750 2    50   Input ~ 0
SAVE
Text GLabel 1850 1950 2    50   Input ~ 0
D0
Text GLabel 1850 1850 2    50   Input ~ 0
D1
$Comp
L power:+3.3V #PWR0118
U 1 1 5DBCCCC4
P 1850 2050
F 0 "#PWR0118" H 1850 1900 50  0001 C CNN
F 1 "+3.3V" V 1850 2300 50  0000 C CNN
F 2 "" H 1850 2050 50  0001 C CNN
F 3 "" H 1850 2050 50  0001 C CNN
	1    1850 2050
	0    1    1    0   
$EndComp
$Sheet
S 1100 3100 1450 650 
U 5FE0DFF8
F0 "Controller" 50
F1 "controller.sch" 50
$EndSheet
$Comp
L sirsydom:Konnekting_µBCU GN1
U 1 1 5FE120A0
P 1300 1850
F 0 "GN1" H 1358 2515 50  0000 C CNN
F 1 "Konnekting_µBCU" H 1358 2424 50  0000 C CNN
F 2 "MicroBCU2:NanoBCU_PinHeader_SMD_low_profile" H 1200 1400 50  0001 C CNN
F 3 "" H 1200 1400 50  0001 C CNN
	1    1300 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5FD12214
P 2150 1250
F 0 "J1" H 2230 1242 50  0000 L CNN
F 1 "KNX_Conn" H 2230 1151 50  0000 L CNN
F 2 "sirsydom:KNX_Connector" H 2150 1250 50  0001 C CNN
F 3 "~" H 2150 1250 50  0001 C CNN
	1    2150 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 1150 2500 1150
$Comp
L power:GND #PWR0117
U 1 1 5DBCBFBA
P 2550 1150
F 0 "#PWR0117" H 2550 900 50  0001 C CNN
F 1 "GND" V 2550 950 50  0000 C CNN
F 2 "" H 2550 1150 50  0001 C CNN
F 3 "" H 2550 1150 50  0001 C CNN
	1    2550 1150
	0    -1   -1   0   
$EndComp
Text GLabel 2550 1250 2    50   Input ~ 0
KNX+
Wire Wire Line
	2350 1250 2350 1550
Wire Wire Line
	2350 1550 1650 1550
Connection ~ 2350 1250
Wire Wire Line
	1650 1650 2500 1650
Wire Wire Line
	2500 1650 2500 1150
Connection ~ 2500 1150
Wire Wire Line
	2500 1150 2550 1150
Wire Wire Line
	1650 1750 1850 1750
Wire Wire Line
	1850 1850 1650 1850
Wire Wire Line
	1650 1950 1850 1950
Wire Wire Line
	1850 2050 1650 2050
$Comp
L Device:D_TVS D1
U 1 1 5FE79399
P 3050 1200
F 0 "D1" V 3004 1279 50  0000 L CNN
F 1 "SMAJ40CA" V 3095 1279 50  0000 L CNN
F 2 "Diode_SMD:D_SMA" H 3050 1200 50  0001 C CNN
F 3 "~" H 3050 1200 50  0001 C CNN
	1    3050 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 1150 2500 900 
Wire Wire Line
	2500 900  3050 900 
Wire Wire Line
	3050 900  3050 1050
Wire Wire Line
	3050 1350 3050 1550
Wire Wire Line
	3050 1550 2350 1550
Connection ~ 2350 1550
$Sheet
S 1100 4100 1450 650 
U 602C2F31
F0 "dimmer" 50
F1 "dimmer.sch" 50
$EndSheet
$Comp
L Sensor_Temperature:DS18B20 U6
U 1 1 602F7054
P 4700 1350
F 0 "U6" H 4470 1396 50  0000 R CNN
F 1 "DS18B20" H 4470 1305 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Wide" H 3700 1100 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 4550 1600 50  0001 C CNN
	1    4700 1350
	1    0    0    -1  
$EndComp
Text GLabel 5350 1350 2    50   Input ~ 0
A3
$Comp
L power:+3.3V #PWR0111
U 1 1 602ED33C
P 4700 1050
F 0 "#PWR0111" H 4700 900 50  0001 C CNN
F 1 "+3.3V" V 4700 1300 50  0000 C CNN
F 2 "" H 4700 1050 50  0001 C CNN
F 3 "" H 4700 1050 50  0001 C CNN
	1    4700 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 602ED9F1
P 5200 1200
F 0 "R19" H 5270 1246 50  0000 L CNN
F 1 "4k7" V 5200 1150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5130 1200 50  0001 C CNN
F 3 "~" H 5200 1200 50  0001 C CNN
	1    5200 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 602EDF06
P 4700 1650
F 0 "#PWR0112" H 4700 1400 50  0001 C CNN
F 1 "GND" V 4700 1450 50  0000 C CNN
F 2 "" H 4700 1650 50  0001 C CNN
F 3 "" H 4700 1650 50  0001 C CNN
	1    4700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1050 5200 1050
Connection ~ 4700 1050
Wire Wire Line
	5350 1350 5200 1350
Connection ~ 5200 1350
Wire Wire Line
	5200 1350 5000 1350
Wire Wire Line
	2350 1250 2550 1250
$EndSCHEMATC
