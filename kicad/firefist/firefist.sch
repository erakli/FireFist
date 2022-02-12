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
L Transistor_FET:IRLZ44N Q1
U 1 1 5E4763E8
P 9250 2250
F 0 "Q1" H 9454 2296 50  0000 L CNN
F 1 "IRLU024N" H 9454 2205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-251-3-1EP_Horizontal_TabDown" H 9500 2175 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlr024npbf.pdf?fileId=5546d462533600a4015356694f7f265d" H 9250 2250 50  0001 L CNN
	1    9250 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5E47777D
P 8400 2250
F 0 "R5" V 8193 2250 50  0000 C CNN
F 1 "100" V 8284 2250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8330 2250 50  0001 C CNN
F 3 "~" H 8400 2250 50  0001 C CNN
	1    8400 2250
	0    1    -1   0   
$EndComp
Text Notes 4950 3250 0    50   ~ 0
3.3v 8Mhz version
$Comp
L Device:R R7
U 1 1 5E47A4D2
P 9050 2600
F 0 "R7" V 8843 2600 50  0000 C CNN
F 1 "10K" V 8934 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8980 2600 50  0001 C CNN
F 3 "~" H 9050 2600 50  0001 C CNN
	1    9050 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E47D215
P 4800 5750
F 0 "#PWR09" H 4800 5500 50  0001 C CNN
F 1 "GND" H 4805 5577 50  0000 C CNN
F 2 "" H 4800 5750 50  0001 C CNN
F 3 "" H 4800 5750 50  0001 C CNN
	1    4800 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5E47DF46
P 9350 2900
F 0 "#PWR017" H 9350 2650 50  0001 C CNN
F 1 "GND" H 9355 2727 50  0000 C CNN
F 2 "" H 9350 2900 50  0001 C CNN
F 3 "" H 9350 2900 50  0001 C CNN
	1    9350 2900
	1    0    0    -1  
$EndComp
$Comp
L Isolator:4N35 U2
U 1 1 5E47E99B
P 9050 4100
F 0 "U2" H 9050 4425 50  0000 C CNN
F 1 "4N35" H 9050 4334 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 8850 3900 50  0001 L CIN
F 3 "https://www.vishay.com/docs/81181/4n35.pdf" H 9050 4100 50  0001 L CNN
	1    9050 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5E47FEE7
P 8650 4300
F 0 "#PWR013" H 8650 4050 50  0001 C CNN
F 1 "GND" H 8655 4127 50  0000 C CNN
F 2 "" H 8650 4300 50  0001 C CNN
F 3 "" H 8650 4300 50  0001 C CNN
	1    8650 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5E48068E
P 8500 4000
F 0 "R6" V 8293 4000 50  0000 C CNN
F 1 "110" V 8384 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8430 4000 50  0001 C CNN
F 3 "~" H 8500 4000 50  0001 C CNN
	1    8500 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 2250 8850 2600
Wire Wire Line
	8850 2600 8900 2600
Wire Wire Line
	9350 2600 9350 2900
Connection ~ 9350 2600
Wire Wire Line
	8650 4000 8750 4000
Wire Wire Line
	8750 4200 8650 4200
Wire Wire Line
	8650 4200 8650 4300
$Comp
L power:GND #PWR012
U 1 1 5E4A0CAD
P 7150 1650
F 0 "#PWR012" H 7150 1400 50  0001 C CNN
F 1 "GND" H 7155 1477 50  0000 C CNN
F 2 "" H 7150 1650 50  0001 C CNN
F 3 "" H 7150 1650 50  0001 C CNN
	1    7150 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1450 6950 1450
Text GLabel 5400 4150 2    50   Input ~ 0
FIREBTN
Wire Wire Line
	5100 4150 5400 4150
Text GLabel 8150 2250 0    50   Input ~ 0
SOLENOID
Text GLabel 5400 4350 2    50   Input ~ 0
SOLENOID
Wire Wire Line
	5100 4750 5400 4750
Text GLabel 8200 4000 0    50   Input ~ 0
ARC
Wire Wire Line
	8200 4000 8350 4000
Wire Wire Line
	9350 4100 9550 4100
Wire Wire Line
	9350 4200 9550 4200
$Comp
L Device:R R1
U 1 1 5E4D94E9
P 3600 1300
F 0 "R1" V 3393 1300 50  0000 C CNN
F 1 "430" V 3484 1300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3530 1300 50  0001 C CNN
F 3 "~" H 3600 1300 50  0001 C CNN
	1    3600 1300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5E4DF5B3
P 4550 1800
F 0 "#PWR08" H 4550 1550 50  0001 C CNN
F 1 "GND" H 4555 1627 50  0000 C CNN
F 2 "" H 4550 1800 50  0001 C CNN
F 3 "" H 4550 1800 50  0001 C CNN
	1    4550 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5E4E794F
P 4900 1350
F 0 "C1" H 5015 1396 50  0000 L CNN
F 1 "10uF" H 5015 1305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4938 1200 50  0001 C CNN
F 3 "~" H 4900 1350 50  0001 C CNN
	1    4900 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1200 4900 1050
Wire Wire Line
	3600 1450 3600 1500
Wire Wire Line
	3600 1800 3600 2000
Wire Wire Line
	4550 1600 4550 1800
$Comp
L power:GND #PWR06
U 1 1 5E4F9ABE
P 3600 2000
F 0 "#PWR06" H 3600 1750 50  0001 C CNN
F 1 "GND" H 3605 1827 50  0000 C CNN
F 2 "" H 3600 2000 50  0001 C CNN
F 3 "" H 3600 2000 50  0001 C CNN
	1    3600 2000
	1    0    0    -1  
$EndComp
NoConn ~ 4100 3950
NoConn ~ 4100 4050
NoConn ~ 5100 3750
NoConn ~ 5100 3850
NoConn ~ 4500 5550
NoConn ~ 4400 5550
NoConn ~ 9350 4000
NoConn ~ 4700 3550
Wire Wire Line
	9200 2600 9350 2600
Wire Wire Line
	8850 2250 9050 2250
Connection ~ 8850 2250
Wire Wire Line
	8850 2250 8550 2250
Wire Wire Line
	8250 2250 8150 2250
Wire Wire Line
	5100 4850 5400 4850
NoConn ~ 4100 5250
NoConn ~ 4100 5150
NoConn ~ 4100 4850
Wire Wire Line
	7250 1450 6950 1450
Text GLabel 6550 1450 0    50   Input ~ 0
FIREBTN
Text Notes 8850 4500 0    50   ~ 0
LED characteristics:\nI_F = 20 mA\nV_F = 1.2 V
Text Notes 2900 1800 0    50   ~ 0
BL-L189PGC:\nI = 20 mA\nV = 3.80 V
$Comp
L Device:LED D1
U 1 1 5E4D9FEA
P 3600 1650
F 0 "D1" V 3639 1728 50  0000 L CNN
F 1 "Green" V 3548 1728 50  0000 L CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 3600 1650 50  0001 C CNN
F 3 "~" H 3600 1650 50  0001 C CNN
	1    3600 1650
	0    1    -1   0   
$EndComp
$Comp
L Device:L_Core_Iron L1
U 1 1 5E489AD7
P 9350 1600
F 0 "L1" H 9438 1646 50  0000 L CNN
F 1 "SB075" H 9438 1555 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P3.81mm_Drill0.8mm" H 9350 1600 50  0001 C CNN
F 3 "~" H 9350 1600 50  0001 C CNN
	1    9350 1600
	-1   0    0    -1  
$EndComp
$Comp
L Diode:1N4001 D2
U 1 1 5E481545
P 9500 1600
F 0 "D2" V 9454 1679 50  0000 L CNN
F 1 "1N4001" V 9545 1679 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9500 1425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 9500 1600 50  0001 C CNN
	1    9500 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	9500 1450 9350 1450
Wire Wire Line
	9500 1750 9350 1750
Connection ~ 9350 1450
Connection ~ 9350 1750
Text GLabel 5400 4450 2    50   Input ~ 0
ARC
Text GLabel 5400 4250 2    50   Input ~ 0
MODEBTN
Text GLabel 5400 4650 2    50   Input ~ 0
CLOCK
Wire Wire Line
	5400 4250 5100 4250
Wire Wire Line
	5400 4350 5100 4350
Wire Wire Line
	5400 4450 5100 4450
$Comp
L Connector_Generic:Conn_01x06 J4
U 1 1 5E4C65C4
P 9100 5800
F 0 "J4" H 9180 5792 50  0000 L CNN
F 1 "To Mode Panel" H 9180 5701 50  0000 L CNN
F 2 "Connector_JST:JST_EH_S6B-EH_1x06_P2.50mm_Horizontal" H 9100 5800 50  0001 C CNN
F 3 "~" H 9100 5800 50  0001 C CNN
	1    9100 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5E4C734A
P 8200 5750
F 0 "#PWR015" H 8200 5500 50  0001 C CNN
F 1 "GND" H 8205 5577 50  0000 C CNN
F 2 "" H 8200 5750 50  0001 C CNN
F 3 "" H 8200 5750 50  0001 C CNN
	1    8200 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 5750 8200 5700
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 5E4D37D4
P 1700 1450
F 0 "SW1" H 1700 1717 50  0000 C CNN
F 1 "Power Switch" H 1700 1626 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B2B-EH-A_1x02_P2.50mm_Vertical" H 1700 1450 50  0001 C CNN
F 3 "~" H 1700 1450 50  0001 C CNN
	1    1700 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 5E4C7AB0
P 8800 5500
F 0 "#PWR014" H 8800 5350 50  0001 C CNN
F 1 "VCC" H 8817 5673 50  0000 C CNN
F 2 "" H 8800 5500 50  0001 C CNN
F 3 "" H 8800 5500 50  0001 C CNN
	1    8800 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1050 5200 950 
Text Notes 5100 5850 0    50   ~ 0
Не используем внутренние Pull Up \nрезсторы, ради безопасности. \nТакже сразу используем регулятор,\nтак как надежды на встроенный нет.
NoConn ~ 4100 4550
NoConn ~ 4100 4650
NoConn ~ 4100 4750
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5E4F2153
P 1700 850
F 0 "J2" V 1664 762 50  0000 R CNN
F 1 "+12V" V 1573 762 50  0000 R CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 1700 850 50  0001 C CNN
F 3 "~" H 1700 850 50  0001 C CNN
	1    1700 850 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 5E4F285F
P 1100 850
F 0 "J1" V 1064 762 50  0000 R CNN
F 1 "GND" V 973 762 50  0000 R CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 1100 850 50  0001 C CNN
F 3 "~" H 1100 850 50  0001 C CNN
	1    1100 850 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5E4F2F8F
P 1100 1450
F 0 "#PWR01" H 1100 1200 50  0001 C CNN
F 1 "GND" H 1105 1277 50  0000 C CNN
F 2 "" H 1100 1450 50  0001 C CNN
F 3 "" H 1100 1450 50  0001 C CNN
	1    1100 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR04
U 1 1 5E4F96FA
P 2300 1700
F 0 "#PWR04" H 2300 1550 50  0001 C CNN
F 1 "+12V" H 2315 1873 50  0000 C CNN
F 2 "" H 2300 1700 50  0001 C CNN
F 3 "" H 2300 1700 50  0001 C CNN
	1    2300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1850 2300 1700
$Comp
L power:+12V #PWR05
U 1 1 5E50E335
P 3400 1000
F 0 "#PWR05" H 3400 850 50  0001 C CNN
F 1 "+12V" H 3415 1173 50  0000 C CNN
F 2 "" H 3400 1000 50  0001 C CNN
F 3 "" H 3400 1000 50  0001 C CNN
	1    3400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1000 3400 1050
Text Notes 550  600  0    50   ~ 0
Power
Wire Notes Line
	500  500  500  2250
Wire Notes Line
	500  2250 2500 2250
Wire Notes Line
	2500 2250 2500 500 
Wire Notes Line
	2500 500  500  500 
Text Notes 1200 750  0    50   ~ 0
От батареи
Wire Wire Line
	1100 1050 1100 1150
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5E508EE2
P 1650 1850
F 0 "#FLG02" H 1650 1925 50  0001 C CNN
F 1 "PWR_FLAG" V 1650 1977 50  0000 L CNN
F 2 "" H 1650 1850 50  0001 C CNN
F 3 "~" H 1650 1850 50  0001 C CNN
	1    1650 1850
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5E5061F4
P 1050 1150
F 0 "#FLG01" H 1050 1225 50  0001 C CNN
F 1 "PWR_FLAG" V 1050 1277 50  0000 L CNN
F 2 "" H 1050 1150 50  0001 C CNN
F 3 "~" H 1050 1150 50  0001 C CNN
	1    1050 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 1150 1100 1150
Connection ~ 1100 1150
Wire Wire Line
	1100 1150 1100 1450
Wire Wire Line
	1700 1850 2300 1850
Wire Wire Line
	1700 1850 1700 1750
Text Notes 550  2200 0    50   ~ 0
PWR_FLAG нужен, чтобы \nпоказать KiCad, откуда \nпитание идёт
Text Notes 5200 4150 0    50   ~ 0
INT0
Text Notes 5200 4250 0    50   ~ 0
INT1
Wire Wire Line
	1700 1050 1700 1150
Wire Wire Line
	1650 1850 1700 1850
Connection ~ 1700 1850
$Comp
L power:VCC #PWR07
U 1 1 5E5C36C3
P 4400 3300
F 0 "#PWR07" H 4400 3150 50  0001 C CNN
F 1 "VCC" H 4417 3473 50  0000 C CNN
F 2 "" H 4400 3300 50  0001 C CNN
F 3 "" H 4400 3300 50  0001 C CNN
	1    4400 3300
	1    0    0    -1  
$EndComp
Text Notes 5800 4200 0    50   ~ 0
Normally HIGH
Wire Notes Line
	5200 4100 6400 4100
Wire Notes Line
	6400 4100 6400 4300
Wire Notes Line
	6400 4300 5200 4300
Wire Notes Line
	5200 4300 5200 4100
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5E4CBDC0
P 9750 4100
F 0 "J5" H 9830 4092 50  0000 L CNN
F 1 "Arc Lighter" H 9830 4001 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 9750 4100 50  0001 C CNN
F 3 "~" H 9750 4100 50  0001 C CNN
	1    9750 4100
	1    0    0    -1  
$EndComp
Text GLabel 8700 5800 0    50   Input ~ 0
MODEBTN
Text GLabel 8700 6100 0    50   Input ~ 0
LATCH
Text GLabel 8700 5900 0    50   Input ~ 0
CLOCK
Text GLabel 8700 6000 0    50   Input ~ 0
DATA
Wire Wire Line
	8700 6100 8900 6100
Wire Wire Line
	8700 6000 8900 6000
Wire Wire Line
	8700 5900 8900 5900
Text GLabel 5400 4750 2    50   Input ~ 0
DATA
Text GLabel 5400 4850 2    50   Input ~ 0
LATCH
Wire Wire Line
	7150 1650 7150 1550
Connection ~ 6950 1450
Wire Wire Line
	6950 1350 6950 1450
Wire Wire Line
	6950 1050 6950 1000
$Comp
L power:VCC #PWR011
U 1 1 5E49E779
P 6950 1000
F 0 "#PWR011" H 6950 850 50  0001 C CNN
F 1 "VCC" H 6967 1173 50  0000 C CNN
F 2 "" H 6950 1000 50  0001 C CNN
F 3 "" H 6950 1000 50  0001 C CNN
	1    6950 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E49EC51
P 6950 1200
F 0 "R4" V 6743 1200 50  0000 C CNN
F 1 "10K" V 6834 1200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6880 1200 50  0001 C CNN
F 3 "~" H 6950 1200 50  0001 C CNN
	1    6950 1200
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E4D924C
P 2250 5550
F 0 "#PWR03" H 2250 5300 50  0001 C CNN
F 1 "GND" H 2255 5377 50  0000 C CNN
F 2 "" H 2250 5550 50  0001 C CNN
F 3 "" H 2250 5550 50  0001 C CNN
	1    2250 5550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR02
U 1 1 5E4DB3F4
P 2250 4400
F 0 "#PWR02" H 2250 4250 50  0001 C CNN
F 1 "VCC" H 2267 4573 50  0000 C CNN
F 2 "" H 2250 4400 50  0001 C CNN
F 3 "" H 2250 4400 50  0001 C CNN
	1    2250 4400
	1    0    0    -1  
$EndComp
NoConn ~ 1650 5050
NoConn ~ 1650 5150
Wire Wire Line
	5400 5050 5100 5050
Wire Wire Line
	2850 5100 3000 5100
Wire Wire Line
	2850 5000 3000 5000
NoConn ~ 4100 4950
NoConn ~ 4100 5050
$Comp
L firefist:Arduino_Pro_Mini A2
U 1 1 5E4E0D11
P 4600 4550
F 0 "A2" H 4350 5750 50  0000 C CNN
F 1 "Arduino_Pro_Mini" H 4350 5650 50  0000 C CNN
F 2 "firefist:Arduino_Pro_Mini" H 4900 3575 50  0001 L CNN
F 3 "https://www.arduino.cc/en/uploads/Main/Arduino-Pro-Mini-schematic.pdf" H 4400 5600 50  0001 C CNN
	1    4600 4550
	-1   0    0    -1  
$EndComp
Text Notes 5000 1050 0    50   ~ 0
3.3V
Text GLabel 5400 5250 2    50   Input ~ 0
SCLK
Text GLabel 5400 5050 2    50   Input ~ 0
MOSI
Text GLabel 1550 4850 0    50   Input ~ 0
CS
Wire Wire Line
	1550 4850 1650 4850
Text GLabel 3000 5100 2    50   Input ~ 0
SCLK
Text Notes 2800 4600 0    50   ~ 0
4-wire SPI connection
Text GLabel 5400 4950 2    50   Input ~ 0
CS
Wire Wire Line
	5400 4950 5100 4950
Wire Wire Line
	5400 5250 5100 5250
Text GLabel 3000 5000 2    50   Input ~ 0
MOSI
Wire Notes Line
	5200 4900 5200 5300
Wire Notes Line
	5200 5300 5850 5300
Wire Notes Line
	5850 5300 5850 4900
Wire Notes Line
	5850 4900 5200 4900
Text Notes 5700 5000 0    50   ~ 0
SPI
$Comp
L power:VCC #PWR010
U 1 1 5E4F1DF5
P 5200 950
F 0 "#PWR010" H 5200 800 50  0001 C CNN
F 1 "VCC" H 5217 1123 50  0000 C CNN
F 2 "" H 5200 950 50  0001 C CNN
F 3 "" H 5200 950 50  0001 C CNN
	1    5200 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4900 3000 4900
Wire Wire Line
	2250 4400 2250 4550
Wire Wire Line
	2250 5450 2250 5550
Text GLabel 3000 4900 2    50   Input ~ 0
MISO
Text GLabel 5400 5150 2    50   Input ~ 0
MISO
Wire Wire Line
	5100 5150 5400 5150
$Comp
L firefist:ADXL345_Breakout A1
U 1 1 5E4CF725
P 2250 5000
F 0 "A1" H 2700 5550 50  0000 C CNN
F 1 "ADXL345_Breakout" H 2700 5450 50  0000 C CNN
F 2 "firefist:ADXL345_Breakout" H 2250 5000 50  0001 L CNN
F 3 "" H 2250 5000 50  0001 C CNN
	1    2250 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8800 5500 8800 5600
Wire Wire Line
	8700 5800 8900 5800
Wire Wire Line
	8800 5600 8900 5600
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5E5054E0
P 7450 1450
F 0 "J3" H 7530 1442 50  0000 L CNN
F 1 "Fire Button" H 7530 1351 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 7450 1450 50  0001 C CNN
F 3 "~" H 7450 1450 50  0001 C CNN
	1    7450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1550 7250 1550
$Comp
L Connector_Generic:Conn_01x05 J6
U 1 1 5E56FA91
P 4250 7050
F 0 "J6" H 4330 7092 50  0000 L CNN
F 1 "To Computer" H 4330 7001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Horizontal" H 4250 7050 50  0001 C CNN
F 3 "~" H 4250 7050 50  0001 C CNN
	1    4250 7050
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0101
U 1 1 5E5709E4
P 4900 7100
F 0 "#PWR0101" H 4900 6950 50  0001 C CNN
F 1 "VCC" H 4917 7273 50  0000 C CNN
F 2 "" H 4900 7100 50  0001 C CNN
F 3 "" H 4900 7100 50  0001 C CNN
	1    4900 7100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E573769
P 4600 7350
F 0 "#PWR0102" H 4600 7100 50  0001 C CNN
F 1 "GND" H 4605 7177 50  0000 C CNN
F 2 "" H 4600 7350 50  0001 C CNN
F 3 "" H 4600 7350 50  0001 C CNN
	1    4600 7350
	1    0    0    -1  
$EndComp
Text GLabel 4600 6850 2    50   Input ~ 0
DTR
Wire Wire Line
	4450 7250 4600 7250
Wire Wire Line
	4600 7250 4600 7350
Wire Wire Line
	4450 6850 4600 6850
Wire Wire Line
	4450 6950 4600 6950
Wire Wire Line
	4450 7050 4600 7050
Wire Wire Line
	4450 7150 4900 7150
Wire Wire Line
	4900 7150 4900 7100
Text GLabel 3950 4250 0    50   Input ~ 0
DTR
Wire Wire Line
	3950 4250 4100 4250
Text GLabel 5400 4050 2    50   Input ~ 0
TX
Wire Wire Line
	5100 4050 5400 4050
Text GLabel 5400 3950 2    50   Input ~ 0
RX
Wire Wire Line
	5100 3950 5400 3950
Wire Wire Line
	4600 5550 4600 5750
$Comp
L Regulator_Linear:LM1117-3.3 U1
U 1 1 5E570A17
P 4550 1050
F 0 "U1" H 4550 1292 50  0000 C CNN
F 1 "LD1117-3.3" H 4550 1201 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 4550 1050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 4550 1050 50  0001 C CNN
	1    4550 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1350 4550 1600
Connection ~ 4550 1600
Wire Wire Line
	4850 1050 4900 1050
Wire Wire Line
	4050 1600 4550 1600
Connection ~ 4050 1050
Wire Wire Line
	4050 1050 4250 1050
Wire Wire Line
	4050 1600 4050 1500
Wire Wire Line
	4050 1200 4050 1050
$Comp
L Device:C C2
U 1 1 5E597B01
P 4050 1350
F 0 "C2" H 4165 1396 50  0000 L CNN
F 1 "100nF" H 4165 1305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4088 1200 50  0001 C CNN
F 3 "~" H 4050 1350 50  0001 C CNN
	1    4050 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1050 3600 1050
Wire Wire Line
	3600 1150 3600 1050
Connection ~ 3600 1050
Wire Wire Line
	3600 1050 4050 1050
Connection ~ 4900 1050
Wire Wire Line
	4900 1050 5200 1050
Wire Wire Line
	4550 1600 4900 1600
Wire Wire Line
	4900 1600 4900 1500
Text Notes 7800 2150 0    50   ~ 0
max 40mA @ 3.3V
Wire Wire Line
	5100 4650 5400 4650
NoConn ~ 5100 4550
Text GLabel 4600 7050 2    50   Input ~ 0
TX
Text GLabel 4600 6950 2    50   Input ~ 0
RX
Text Notes 8550 1450 0    50   ~ 0
Solenoid Valve\nNormally Closed\n3.5 W, 12 V, 0.3 A
$Comp
L power:+12V #PWR016
U 1 1 5E510A74
P 9350 1000
F 0 "#PWR016" H 9350 850 50  0001 C CNN
F 1 "+12V" H 9365 1173 50  0000 C CNN
F 2 "" H 9350 1000 50  0001 C CNN
F 3 "" H 9350 1000 50  0001 C CNN
	1    9350 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2450 9350 2600
Connection ~ 9350 1200
Wire Wire Line
	9350 1200 9350 1450
Wire Wire Line
	9350 1000 9350 1200
Connection ~ 9350 2000
Wire Wire Line
	9350 2000 9350 2050
Wire Wire Line
	9350 1750 9350 2000
$Comp
L Device:LED D3
U 1 1 5E48900C
P 10000 1750
F 0 "D3" V 10039 1828 50  0000 L CNN
F 1 "Yellow" V 9948 1828 50  0000 L CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 10000 1750 50  0001 C CNN
F 3 "~" H 10000 1750 50  0001 C CNN
	1    10000 1750
	0    1    -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5E48A6BB
P 10000 1450
F 0 "R8" V 9793 1450 50  0000 C CNN
F 1 "510" V 9884 1450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9930 1450 50  0001 C CNN
F 3 "~" H 10000 1450 50  0001 C CNN
	1    10000 1450
	-1   0    0    1   
$EndComp
Text Notes 10050 2150 0    50   ~ 0
BL-L189UYC:\nI = 20 mA\nV = 2.10 V
Wire Wire Line
	10000 1300 10000 1200
Wire Wire Line
	10000 1200 9350 1200
Wire Wire Line
	10000 2000 9350 2000
Wire Wire Line
	10000 1900 10000 2000
Wire Wire Line
	4400 3300 4400 3550
NoConn ~ 4500 3550
Wire Wire Line
	8200 5700 8900 5700
Wire Wire Line
	4700 5550 4700 5650
$Comp
L power:GND #PWR?
U 1 1 5E69E3DA
P 4600 5750
F 0 "#PWR?" H 4600 5500 50  0001 C CNN
F 1 "GND" H 4605 5577 50  0000 C CNN
F 2 "" H 4600 5750 50  0001 C CNN
F 3 "" H 4600 5750 50  0001 C CNN
	1    4600 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5650 4800 5650
Wire Wire Line
	4800 5650 4800 5750
$EndSCHEMATC
