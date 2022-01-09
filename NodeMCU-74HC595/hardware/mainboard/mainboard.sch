EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L lua-lolin-v3:Lua-Lolin-v3 U1
U 1 1 61CD1F6D
P 2500 3050
F 0 "U1" H 2500 3650 50  0000 C CNN
F 1 "Lua-Lolin-v3" H 2500 3550 50  0000 C CNN
F 2 "lua-lolin:lua-lolin-v3" H 2250 3950 50  0001 C CNN
F 3 "" H 2250 3950 50  0001 C CNN
	1    2500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3050 3400 3050
Wire Wire Line
	3100 3150 3400 3150
Wire Wire Line
	3100 3750 3400 3750
$Comp
L Connector:Conn_01x06_Male J6
U 1 1 61CEC06A
P 5050 1650
F 0 "J6" H 5022 1532 50  0000 R CNN
F 1 "Relay Board" H 5022 1623 50  0000 R CNN
F 2 "Connector_IDC:IDC-Header_2x03_P2.54mm_Vertical" H 5050 1650 50  0001 C CNN
F 3 "~" H 5050 1650 50  0001 C CNN
	1    5050 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3400 2550 3100 2550
$Comp
L Connector:Conn_01x08_Male J4
U 1 1 61CFD11F
P 5050 3300
F 0 "J4" H 5022 3182 50  0000 R CNN
F 1 "Display + Buttons" H 5022 3273 50  0000 R CNN
F 2 "Connector_IDC:IDC-Header_2x04_P2.54mm_Vertical" H 5050 3300 50  0001 C CNN
F 3 "~" H 5050 3300 50  0001 C CNN
	1    5050 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 2350 3400 2350
Wire Wire Line
	3100 2650 3400 2650
Wire Wire Line
	4550 2900 4850 2900
Wire Wire Line
	3100 2750 3400 2750
Wire Wire Line
	4550 3000 4850 3000
Wire Wire Line
	3100 3350 3400 3350
Wire Wire Line
	4550 3100 4850 3100
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 61CD5FAE
P 5050 4650
F 0 "J1" H 5023 4532 50  0000 R CNN
F 1 "Power" H 5023 4623 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 5050 4650 50  0001 C CNN
F 3 "~" H 5050 4650 50  0001 C CNN
	1    5050 4650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1900 2450 1600 2450
Text Label 1600 2450 0    50   ~ 0
GND
Wire Wire Line
	3100 3650 3400 3650
Text Label 3150 3650 0    50   ~ 0
GND
Wire Wire Line
	1900 3250 1600 3250
Text Label 1600 3250 0    50   ~ 0
GND
Text Label 1650 3650 0    50   ~ 0
GND
Wire Wire Line
	3100 2950 3400 2950
Text Label 1650 3750 0    50   ~ 0
5V
Text Label 3150 2750 0    50   ~ 0
B1
Text Label 3150 2650 0    50   ~ 0
B2
Text Label 3150 3350 0    50   ~ 0
B3
Text Label 3150 2550 0    50   ~ 0
SDA
Wire Wire Line
	3100 2450 3400 2450
Text Label 3150 2450 0    50   ~ 0
SCL
Text Label 3150 3150 0    50   ~ 0
Clock
Text Label 3150 3050 0    50   ~ 0
Latch
Text Label 3150 2350 0    50   ~ 0
Data
Wire Wire Line
	4850 1350 4550 1350
Wire Wire Line
	4850 1450 4550 1450
Wire Wire Line
	4850 1550 4550 1550
Wire Wire Line
	4850 1650 4550 1650
Wire Wire Line
	4850 1750 4550 1750
Wire Wire Line
	4850 1850 4550 1850
Text Label 4550 1350 0    50   ~ 0
3V_3
Text Label 4550 1450 0    50   ~ 0
Latch
Text Label 4550 1550 0    50   ~ 0
Data
Text Label 4550 1650 0    50   ~ 0
Clock
Text Label 4550 1750 0    50   ~ 0
5V
Text Label 4550 1850 0    50   ~ 0
GND
Wire Wire Line
	3100 2850 3400 2850
Text Label 3150 2850 0    50   ~ 0
3V_3
Text Label 3150 3750 0    50   ~ 0
3V_2
Wire Wire Line
	1900 3350 1600 3350
Text Label 1600 3350 0    50   ~ 0
3V_1
Wire Wire Line
	4850 3200 4550 3200
Wire Wire Line
	4850 3300 4550 3300
Wire Wire Line
	4850 3400 4550 3400
Wire Wire Line
	4850 3500 4550 3500
Text Label 4550 2900 0    50   ~ 0
SCL
Text Label 4550 3000 0    50   ~ 0
SDA
Text Label 4550 3100 0    50   ~ 0
B2
Text Label 4550 3400 0    50   ~ 0
3V_2
Text Label 4550 3500 0    50   ~ 0
B3
Wire Wire Line
	4550 2300 4850 2300
Wire Wire Line
	4850 2400 4550 2400
Wire Wire Line
	4850 2500 4550 2500
Wire Wire Line
	4850 2600 4550 2600
Text Label 4550 2300 0    50   ~ 0
SCL
Text Label 4550 2400 0    50   ~ 0
SDA
Text Label 4550 2500 0    50   ~ 0
3V_2
Text Label 4550 2600 0    50   ~ 0
GND
Wire Wire Line
	1600 3650 1900 3650
Wire Wire Line
	1600 3750 1900 3750
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 61DF0C46
P 5050 4300
F 0 "J2" H 5023 4182 50  0000 R CNN
F 1 "Sensor 1" H 5023 4273 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 5050 4300 50  0001 C CNN
F 3 "~" H 5050 4300 50  0001 C CNN
	1    5050 4300
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 61DF45C9
P 5050 3950
F 0 "J3" H 5023 3832 50  0000 R CNN
F 1 "Sensor 2" H 5023 3923 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 5050 3950 50  0001 C CNN
F 3 "~" H 5050 3950 50  0001 C CNN
	1    5050 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 4300 4550 4300
Wire Wire Line
	4850 4400 4550 4400
Wire Wire Line
	4850 3950 4550 3950
Wire Wire Line
	4850 4050 4550 4050
Wire Wire Line
	3100 3450 3400 3450
Wire Wire Line
	3100 3550 3400 3550
Text Label 3150 3450 0    50   ~ 0
Sens2
Text Label 4550 4300 0    50   ~ 0
GND
Text Label 4550 3950 0    50   ~ 0
GND
Text Label 4550 4050 0    50   ~ 0
Sens2
Text Label 4550 4400 0    50   ~ 0
Sens1
$Comp
L Mechanical:MountingHole H2
U 1 1 61E4ED7C
P 2050 1250
F 0 "H2" H 2150 1296 50  0000 L CNN
F 1 "MountingHole" H 2150 1205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 2050 1250 50  0001 C CNN
F 3 "~" H 2050 1250 50  0001 C CNN
	1    2050 1250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 61E4FE67
P 2050 1450
F 0 "H3" H 2150 1496 50  0000 L CNN
F 1 "MountingHole" H 2150 1405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 2050 1450 50  0001 C CNN
F 3 "~" H 2050 1450 50  0001 C CNN
	1    2050 1450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 61E50F6D
P 2050 1650
F 0 "H4" H 2150 1696 50  0000 L CNN
F 1 "MountingHole" H 2150 1605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 2050 1650 50  0001 C CNN
F 3 "~" H 2050 1650 50  0001 C CNN
	1    2050 1650
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 61E41F2F
P 2050 1050
F 0 "H1" H 2150 1096 50  0000 L CNN
F 1 "MountingHole" H 2150 1005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 2050 1050 50  0001 C CNN
F 3 "~" H 2050 1050 50  0001 C CNN
	1    2050 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4650 4550 4650
Wire Wire Line
	4850 4750 4550 4750
Text Label 4550 4750 0    50   ~ 0
5V
Text Label 4550 4650 0    50   ~ 0
GND
Wire Wire Line
	4550 3600 4850 3600
Text Label 4550 3600 0    50   ~ 0
GND
Text Label 4550 3300 0    50   ~ 0
B1
$Comp
L Connector:Conn_01x06_Female J5
U 1 1 61D215C1
P 5050 2400
F 0 "J5" H 5164 2263 50  0000 R CNN
F 1 "DS3231 RTC" H 5300 2350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5050 2400 50  0001 C CNN
F 3 "~" H 5050 2400 50  0001 C CNN
	1    5050 2400
	1    0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Female J7
U 1 1 61D332D8
P 5750 2400
F 0 "J7" H 5450 2450 50  0000 C CNN
F 1 "Conn_01x04_Female" H 5100 2350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5750 2400 50  0001 C CNN
F 3 "~" H 5750 2400 50  0001 C CNN
	1    5750 2400
	-1   0    0    -1  
$EndComp
NoConn ~ 3400 3550
NoConn ~ 3400 2950
NoConn ~ 1900 2550
NoConn ~ 1900 2650
NoConn ~ 1900 2750
NoConn ~ 1900 2350
NoConn ~ 1900 2850
NoConn ~ 1900 2950
NoConn ~ 1900 3050
NoConn ~ 1900 3150
NoConn ~ 1900 3450
NoConn ~ 1900 3550
Wire Wire Line
	3100 3250 3400 3250
Text Label 3150 3250 0    50   ~ 0
Sens1
$EndSCHEMATC
