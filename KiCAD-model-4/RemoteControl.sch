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
L Switch:SW_Push SW3
U 1 1 5D425AD3
P 8850 3450
F 0 "SW3" H 8850 3735 50  0000 C CNN
F 1 "SW_Push_Red" H 8850 3644 50  0000 C CNN
F 2 "Project_Module:project_SW_PUSH-12mm-RED" H 8850 3650 50  0001 C CNN
F 3 "~" H 8850 3650 50  0001 C CNN
	1    8850 3450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D428379
P 2650 2800
F 0 "#PWR04" H 2650 2550 50  0001 C CNN
F 1 "GND" H 2655 2627 50  0000 C CNN
F 2 "" H 2650 2800 50  0001 C CNN
F 3 "" H 2650 2800 50  0001 C CNN
	1    2650 2800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5D42920F
P 9300 3450
F 0 "SW4" H 9300 3735 50  0000 C CNN
F 1 "SW_Push_Green" H 9300 3644 50  0000 C CNN
F 2 "Project_Module:project_SW_PUSH-12mm-GREEN" H 9300 3650 50  0001 C CNN
F 3 "~" H 9300 3650 50  0001 C CNN
	1    9300 3450
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5D42983F
P 9750 3450
F 0 "SW5" H 9750 3735 50  0000 C CNN
F 1 "SW_Push_Yellow" H 9750 3644 50  0000 C CNN
F 2 "Project_Module:project_SW_PUSH-12mm-YELLOW" H 9750 3650 50  0001 C CNN
F 3 "~" H 9750 3650 50  0001 C CNN
	1    9750 3450
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5D429E78
P 10200 3450
F 0 "SW6" H 10200 3735 50  0000 C CNN
F 1 "SW_Push_Blue" H 10200 3644 50  0000 C CNN
F 2 "Project_Module:project_SW_PUSH-12mm-BLUE" H 10200 3650 50  0001 C CNN
F 3 "~" H 10200 3650 50  0001 C CNN
	1    10200 3450
	0    1    1    0   
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW1
U 1 1 5D42C200
P 7000 5750
F 0 "SW1" H 7000 6100 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 7000 6000 50  0000 C CNN
F 2 "Project_Module:project_RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 6850 5910 50  0001 C CNN
F 3 "~" H 7000 6010 50  0001 C CNN
	1    7000 5750
	1    0    0    -1  
$EndComp
Text Notes 2000 750  2    50   ~ 0
Wemos Lolin D32 Pro
Text Label 2400 1250 0    50   ~ 0
GND
Text Label 2400 2750 0    50   ~ 0
GND
Text Label 1100 1750 2    50   ~ 0
Btn_Red
$Comp
L project:D32Pro U1
U 1 1 5D41ED62
P 1750 2000
F 0 "U1" H 1750 3065 50  0000 C CNN
F 1 "D32Pro" H 1750 2974 50  0000 C CNN
F 2 "Project_Module:D32Pro_PinSocket_2x1x16_P2.54mm_Vertical" H 1800 2000 50  0001 C CNN
F 3 "" H 1800 2000 50  0001 C CNN
	1    1750 2000
	1    0    0    -1  
$EndComp
Text Label 1100 1250 2    50   ~ 0
+3V3
Text Label 8700 3800 2    50   ~ 0
Btn_Red
Text Label 1100 1850 2    50   ~ 0
Btn_Green
Text Label 8700 3900 2    50   ~ 0
Btn_Green
Text Label 8700 4000 2    50   ~ 0
Btn_Yellow
Text Label 8700 4100 2    50   ~ 0
Btn_Blue
Text Label 1100 1950 2    50   ~ 0
Btn_Yellow
Text Label 1100 2050 2    50   ~ 0
Btn_Blue
$Comp
L 4xxx:HEF4093B U4
U 1 1 5D4AD10D
P 9400 1500
F 0 "U4" H 9250 1800 50  0000 C CNN
F 1 "CD4093BE" H 9250 1700 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9400 1500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF4093B.pdf" H 9400 1500 50  0001 C CNN
	1    9400 1500
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:HEF4093B U4
U 2 1 5D4AFAF1
P 10650 1500
F 0 "U4" H 10500 1800 50  0000 C CNN
F 1 "CD4093BE" H 10500 1700 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 10650 1500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF4093B.pdf" H 10650 1500 50  0001 C CNN
	2    10650 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5D4B202A
P 8800 1500
F 0 "C3" V 8950 1500 50  0000 C CNN
F 1 "100n" V 9050 1500 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 8838 1350 50  0001 C CNN
F 3 "~" H 8800 1500 50  0001 C CNN
	1    8800 1500
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5D4B2230
P 10250 1800
F 0 "C4" H 10365 1846 50  0000 L CNN
F 1 "100n" H 10365 1755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 10288 1650 50  0001 C CNN
F 3 "~" H 10250 1800 50  0001 C CNN
	1    10250 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5D4B27F1
P 8600 1250
F 0 "R8" H 8650 1350 50  0000 L CNN
F 1 "100k" H 8650 1250 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8530 1250 50  0001 C CNN
F 3 "~" H 8600 1250 50  0001 C CNN
	1    8600 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5D4B2ACA
P 9000 1800
F 0 "R10" H 9070 1846 50  0000 L CNN
F 1 "1M" H 9070 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8930 1800 50  0001 C CNN
F 3 "~" H 9000 1800 50  0001 C CNN
	1    9000 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV2
U 1 1 5D4B3FA0
P 10000 1500
F 0 "RV2" V 9793 1500 50  0000 C CNN
F 1 "1M" V 9884 1500 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Runtron_RM-063_Horizontal" H 10000 1500 50  0001 C CNN
F 3 "~" H 10000 1500 50  0001 C CNN
	1    10000 1500
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5D4B57F2
P 8300 1750
F 0 "SW2" V 8350 1600 50  0000 C CNN
F 1 "SW-420" V 8250 1550 50  0000 C CNN
F 2 "Project_Module:SW_420_L10.0mm_D5.5mm_P15.00mm_Horizontal" H 8300 1950 50  0001 C CNN
F 3 "~" H 8300 1950 50  0001 C CNN
	1    8300 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10350 1400 10350 1500
Wire Wire Line
	10150 1500 10250 1500
Connection ~ 10350 1500
Wire Wire Line
	10350 1500 10350 1600
Wire Wire Line
	10250 1650 10250 1500
Connection ~ 10250 1500
Wire Wire Line
	10250 1500 10350 1500
Wire Wire Line
	9850 1500 9800 1500
Wire Wire Line
	9800 1500 9800 1700
Wire Wire Line
	9800 1700 10000 1700
Wire Wire Line
	10000 1700 10000 1650
Connection ~ 9800 1500
Wire Wire Line
	9800 1500 9700 1500
Wire Wire Line
	9100 1600 9100 1500
Wire Wire Line
	8950 1500 9000 1500
Connection ~ 9100 1500
Wire Wire Line
	9100 1500 9100 1400
Wire Wire Line
	9000 1650 9000 1500
Connection ~ 9000 1500
Wire Wire Line
	9000 1500 9100 1500
Wire Wire Line
	8650 1500 8600 1500
Wire Wire Line
	8300 1500 8300 1550
Wire Wire Line
	8600 1400 8600 1500
Connection ~ 8600 1500
Wire Wire Line
	8600 1500 8300 1500
Wire Wire Line
	8600 1100 8600 1000
Wire Wire Line
	8300 1950 8300 2050
Wire Wire Line
	9000 1950 9000 2050
Wire Wire Line
	10250 1950 10250 2050
$Comp
L power:+3.3V #PWR012
U 1 1 5D4C9AAA
P 8600 1000
F 0 "#PWR012" H 8600 850 50  0001 C CNN
F 1 "+3.3V" H 8615 1173 50  0000 C CNN
F 2 "" H 8600 1000 50  0001 C CNN
F 3 "" H 8600 1000 50  0001 C CNN
	1    8600 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5D4CA43C
P 8300 2050
F 0 "#PWR011" H 8300 1800 50  0001 C CNN
F 1 "GND" H 8305 1877 50  0000 C CNN
F 2 "" H 8300 2050 50  0001 C CNN
F 3 "" H 8300 2050 50  0001 C CNN
	1    8300 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5D4CA7D3
P 9000 2050
F 0 "#PWR013" H 9000 1800 50  0001 C CNN
F 1 "GND" H 9005 1877 50  0000 C CNN
F 2 "" H 9000 2050 50  0001 C CNN
F 3 "" H 9000 2050 50  0001 C CNN
	1    9000 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5D4CAA73
P 10250 2050
F 0 "#PWR016" H 10250 1800 50  0001 C CNN
F 1 "GND" H 10255 1877 50  0000 C CNN
F 2 "" H 10250 2050 50  0001 C CNN
F 3 "" H 10250 2050 50  0001 C CNN
	1    10250 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 1500 11200 1500
Text Label 11200 1500 2    50   ~ 0
Tilt
Text Label 2400 2650 0    50   ~ 0
Tilt
Text Notes 9700 700  2    50   ~ 0
Tilt sensor
Wire Notes Line
	11200 2400 8050 2400
$Comp
L LED:IR204A D1
U 1 1 5D4F24B9
P 1200 5650
F 0 "D1" V 1250 5500 50  0000 R CNN
F 1 "IR204A" V 1150 5550 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O6.35mm_Z2.0mm" H 1200 5825 50  0001 C CNN
F 3 "http://www.everlight.com/file/ProductFile/IR204-A.pdf" H 1150 5650 50  0001 C CNN
	1    1200 5650
	0    -1   -1   0   
$EndComp
Text Label 9450 5750 2    50   ~ 0
Led_R
Text Label 9450 5950 2    50   ~ 0
Led_G
Text Label 9450 6150 2    50   ~ 0
Led_B
Text Label 1100 2150 2    50   ~ 0
Led_R
Text Label 1100 2250 2    50   ~ 0
Led_G
Text Label 1100 2350 2    50   ~ 0
Led_B
$Comp
L Device:R R13
U 1 1 5D53160B
P 9800 5750
F 0 "R13" V 9700 5650 50  0000 C CNN
F 1 "22" V 9700 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9730 5750 50  0001 C CNN
F 3 "~" H 9800 5750 50  0001 C CNN
	1    9800 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5D531B1B
P 9800 5950
F 0 "R14" V 9700 5850 50  0000 C CNN
F 1 "22" V 9700 6000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9730 5950 50  0001 C CNN
F 3 "~" H 9800 5950 50  0001 C CNN
	1    9800 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 5D531E85
P 9800 6150
F 0 "R15" V 9700 6050 50  0000 C CNN
F 1 "22" V 9700 6200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9730 6150 50  0001 C CNN
F 3 "~" H 9800 6150 50  0001 C CNN
	1    9800 6150
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 5750 9950 5750
Wire Wire Line
	10050 5950 9950 5950
Wire Wire Line
	10050 6150 9950 6150
Wire Wire Line
	9650 5750 9450 5750
Wire Wire Line
	9650 5950 9450 5950
Wire Wire Line
	9650 6150 9450 6150
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5D53CBCC
P 1700 6700
F 0 "Q1" H 1890 6746 50  0000 L CNN
F 1 "2N3904" H 1890 6655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1900 6625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 1700 6700 50  0001 L CNN
	1    1700 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5D53E6A9
P 1800 5850
F 0 "R3" H 1870 5896 50  0000 L CNN
F 1 "10" H 1870 5805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1730 5850 50  0001 C CNN
F 3 "~" H 1800 5850 50  0001 C CNN
	1    1800 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D53E9B0
P 1200 6700
F 0 "R1" V 993 6700 50  0000 C CNN
F 1 "1k" V 1084 6700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1130 6700 50  0001 C CNN
F 3 "~" H 1200 6700 50  0001 C CNN
	1    1200 6700
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 6900 1800 7050
Wire Wire Line
	1500 6700 1350 6700
Wire Wire Line
	1050 6700 900  6700
$Comp
L power:GND #PWR03
U 1 1 5D545341
P 1800 7050
F 0 "#PWR03" H 1800 6800 50  0001 C CNN
F 1 "GND" H 1805 6877 50  0000 C CNN
F 2 "" H 1800 7050 50  0001 C CNN
F 3 "" H 1800 7050 50  0001 C CNN
	1    1800 7050
	1    0    0    -1  
$EndComp
Text Label 900  6700 2    50   ~ 0
Led_IR
Text Label 2400 2450 0    50   ~ 0
Led_IR
Text Label 2400 1350 0    50   ~ 0
MOSI
Text Label 2400 1950 0    50   ~ 0
SCK
Text Label 2400 2050 0    50   ~ 0
CS
$Comp
L power:+3.3V #PWR01
U 1 1 5D427DAE
P 750 1200
F 0 "#PWR01" H 750 1050 50  0001 C CNN
F 1 "+3.3V" H 765 1373 50  0000 C CNN
F 2 "" H 750 1200 50  0001 C CNN
F 3 "" H 750 1200 50  0001 C CNN
	1    750  1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1250 750  1250
Wire Wire Line
	750  1250 750  1200
Wire Wire Line
	2400 2750 2650 2750
Wire Wire Line
	2650 2750 2650 2800
$Comp
L power:+3.3V #PWR02
U 1 1 5D544B3D
P 1800 5200
F 0 "#PWR02" H 1800 5050 50  0001 C CNN
F 1 "+3.3V" H 1815 5373 50  0000 C CNN
F 2 "" H 1800 5200 50  0001 C CNN
F 3 "" H 1800 5200 50  0001 C CNN
	1    1800 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D4955C3
P 1800 5450
F 0 "R2" H 1870 5496 50  0000 L CNN
F 1 "10" H 1870 5405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1730 5450 50  0001 C CNN
F 3 "~" H 1800 5450 50  0001 C CNN
	1    1800 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5300 1800 5200
Wire Wire Line
	1800 5700 1800 5600
Text Notes 1950 4800 2    50   ~ 0
Infrared pulse control
Wire Notes Line
	11200 5300 8050 5300
Text Notes 8700 5950 2    50   ~ 0
RGB LED
Wire Notes Line
	8050 500  8050 6500
Text Notes 8700 2700 2    50   ~ 0
Push buttons
Text Notes 7450 4750 2    50   ~ 0
Rorary encoder / Swicth button
Text Label 7650 1250 0    50   ~ 0
MOSI
Text Label 7650 1450 0    50   ~ 0
SCK
Text Label 7650 1150 0    50   ~ 0
CS
Text Notes 6200 650  2    50   ~ 0
TFT 2.4"
NoConn ~ 6050 950 
NoConn ~ 6050 1050
NoConn ~ 6050 1150
NoConn ~ 6050 1250
NoConn ~ 6050 1350
NoConn ~ 7650 1350
Text Label 7650 1050 0    50   ~ 0
DC
$Comp
L power:+3.3V #PWR07
U 1 1 5DE4BC90
P 6850 750
F 0 "#PWR07" H 6850 600 50  0001 C CNN
F 1 "+3.3V" H 6865 923 50  0000 C CNN
F 2 "" H 6850 750 50  0001 C CNN
F 3 "" H 6850 750 50  0001 C CNN
	1    6850 750 
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q2
U 1 1 5DE4DBB2
P 6750 2200
F 0 "Q2" H 6940 2246 50  0000 L CNN
F 1 "2N3904" H 6940 2155 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6950 2125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 6750 2200 50  0001 L CNN
	1    6750 2200
	1    0    0    -1  
$EndComp
$Comp
L Driver_Display:CR2013-MI2120 U3
U 1 1 5DE3FBE4
P 6850 1350
F 0 "U3" H 7250 2050 50  0000 C CNN
F 1 "TFT_2_4_SPI_240x320" H 7300 1950 50  0000 C CNN
F 2 "Project_Module:TFT_2_4_SPI_240x320" H 6850 650 50  0001 C CNN
F 3 "http://pan.baidu.com/s/11Y990" H 6200 1850 50  0001 C CNN
	1    6850 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5DE50879
P 6850 2450
F 0 "#PWR08" H 6850 2200 50  0001 C CNN
F 1 "GND" H 6855 2277 50  0000 C CNN
F 2 "" H 6850 2450 50  0001 C CNN
F 3 "" H 6850 2450 50  0001 C CNN
	1    6850 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5DE51221
P 6350 2200
F 0 "R5" V 6143 2200 50  0000 C CNN
F 1 "1k" V 6234 2200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6280 2200 50  0001 C CNN
F 3 "~" H 6350 2200 50  0001 C CNN
	1    6350 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 2000 6850 1950
Wire Wire Line
	6850 2450 6850 2400
Wire Wire Line
	6550 2200 6500 2200
Text Label 6200 2200 2    50   ~ 0
TFT_Pwr
$Comp
L Timer:ICM7555 U2
U 1 1 5DE561F5
P 6500 3650
F 0 "U2" H 6700 4200 50  0000 C CNN
F 1 "ICM7555" H 6750 4050 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 6500 3650 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/icm7/icm7555-56.pdf" H 6500 3650 50  0001 C CNN
	1    6500 3650
	1    0    0    -1  
$EndComp
Text Label 7650 1550 0    50   ~ 0
LED
Text Label 7100 2900 0    50   ~ 0
LED
$Comp
L power:GND #PWR06
U 1 1 5DE5EDBE
P 6500 4250
F 0 "#PWR06" H 6500 4000 50  0001 C CNN
F 1 "GND" H 6505 4077 50  0000 C CNN
F 2 "" H 6500 4250 50  0001 C CNN
F 3 "" H 6500 4250 50  0001 C CNN
	1    6500 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5DE5F7C2
P 7650 4050
F 0 "C2" H 7765 4096 50  0000 L CNN
F 1 "10n" H 7765 4005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 7688 3900 50  0001 C CNN
F 3 "~" H 7650 4050 50  0001 C CNN
	1    7650 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5DE5FB2E
P 5750 4050
F 0 "C1" H 5865 4096 50  0000 L CNN
F 1 "10n" H 5865 4005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 5788 3900 50  0001 C CNN
F 3 "~" H 5750 4050 50  0001 C CNN
	1    5750 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5DE60D8C
P 7650 3650
F 0 "RV1" H 7580 3604 50  0000 R CNN
F 1 "10k" H 7580 3695 50  0000 R CNN
F 2 "Project_Module:Potentiometer_Thumbwheel_D16mm_H2mm_Horizontal" H 7650 3650 50  0001 C CNN
F 3 "~" H 7650 3650 50  0001 C CNN
	1    7650 3650
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5DE61E2B
P 6500 3100
F 0 "#PWR05" H 6500 2950 50  0001 C CNN
F 1 "+3.3V" H 6515 3273 50  0000 C CNN
F 2 "" H 6500 3100 50  0001 C CNN
F 3 "" H 6500 3100 50  0001 C CNN
	1    6500 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3650 7400 3650
Wire Wire Line
	7650 3800 7650 3850
Wire Wire Line
	7000 3850 7650 3850
Connection ~ 7650 3850
Wire Wire Line
	7650 3850 7650 3900
Wire Wire Line
	7650 4200 6500 4200
Wire Wire Line
	6500 4200 6500 4050
Wire Wire Line
	6500 4250 6500 4200
Connection ~ 6500 4200
Wire Wire Line
	7650 3500 7650 3200
Wire Wire Line
	7650 3200 6500 3200
Wire Wire Line
	6500 3200 6500 3250
Wire Wire Line
	6500 3100 6500 3200
Connection ~ 6500 3200
Wire Wire Line
	7650 3850 7900 3850
Text Label 7900 3850 0    50   ~ 0
TR
Text Label 6000 3450 2    50   ~ 0
TR
Wire Wire Line
	6500 4200 5750 4200
Wire Wire Line
	5750 3900 5750 3650
Wire Wire Line
	5750 3650 6000 3650
Wire Wire Line
	6000 3850 5850 3850
Wire Wire Line
	5850 3850 5850 3200
Wire Wire Line
	5850 3200 6500 3200
Text Notes 6450 2850 2    50   ~ 0
TFT backlight dimmer
Text Label 2400 1750 0    50   ~ 0
DC
Text Label 2400 2350 0    50   ~ 0
TFT_Pwr
Text Label 1100 2450 2    50   ~ 0
Btn_White
Text Label 1100 1650 2    50   ~ 0
Enc_Rot_Btn
Text Label 1100 1450 2    50   ~ 0
Enc_Rot_P1
Text Label 1100 1550 2    50   ~ 0
Enc_Rot_P2
Text Label 7550 5650 0    50   ~ 0
Enc_Rot_Btn
Text Label 6050 5650 2    50   ~ 0
Enc_Rot_P1
Text Label 6050 5850 2    50   ~ 0
Enc_Rot_P2
$Comp
L power:GND #PWR010
U 1 1 5DEA88F1
P 7000 6100
F 0 "#PWR010" H 7000 5850 50  0001 C CNN
F 1 "GND" H 7005 5927 50  0000 C CNN
F 2 "" H 7000 6100 50  0001 C CNN
F 3 "" H 7000 6100 50  0001 C CNN
	1    7000 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR09
U 1 1 5DEA8FF9
P 7000 5150
F 0 "#PWR09" H 7000 5000 50  0001 C CNN
F 1 "+3.3V" H 7015 5323 50  0000 C CNN
F 2 "" H 7000 5150 50  0001 C CNN
F 3 "" H 7000 5150 50  0001 C CNN
	1    7000 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5DEA9C04
P 7450 5400
F 0 "R7" H 7380 5354 50  0000 R CNN
F 1 "10k" H 7380 5445 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7380 5400 50  0001 C CNN
F 3 "~" H 7450 5400 50  0001 C CNN
	1    7450 5400
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR017
U 1 1 5DEC09EB
P 10600 5950
F 0 "#PWR017" H 10600 5800 50  0001 C CNN
F 1 "+3.3V" H 10615 6123 50  0000 C CNN
F 2 "" H 10600 5950 50  0001 C CNN
F 3 "" H 10600 5950 50  0001 C CNN
	1    10600 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5DEC9139
P 6500 5400
F 0 "R6" H 6350 5450 50  0000 L CNN
F 1 "10k" H 6300 5350 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6430 5400 50  0001 C CNN
F 3 "~" H 6500 5400 50  0001 C CNN
	1    6500 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 5650 7450 5650
Wire Wire Line
	7450 5650 7450 5550
Wire Wire Line
	7450 5250 7450 5200
Wire Wire Line
	7550 5650 7450 5650
Connection ~ 7450 5650
$Comp
L Device:R R4
U 1 1 5DF0F95C
P 6200 5400
F 0 "R4" H 6050 5450 50  0000 L CNN
F 1 "10k" H 6000 5350 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6130 5400 50  0001 C CNN
F 3 "~" H 6200 5400 50  0001 C CNN
	1    6200 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 5200 7000 5200
Wire Wire Line
	6200 5200 6200 5250
Wire Wire Line
	6500 5250 6500 5200
Connection ~ 6500 5200
Wire Wire Line
	6500 5200 6200 5200
Wire Wire Line
	7000 5200 7000 5150
Connection ~ 7000 5200
Wire Wire Line
	7000 5200 6500 5200
Wire Wire Line
	6700 5650 6500 5650
Wire Wire Line
	6500 5650 6500 5550
Wire Wire Line
	6700 5850 6200 5850
Wire Wire Line
	6200 5850 6200 5550
Wire Wire Line
	6500 5650 6050 5650
Connection ~ 6500 5650
Wire Wire Line
	6200 5850 6050 5850
Connection ~ 6200 5850
Wire Wire Line
	7300 5850 7450 5850
Wire Wire Line
	7450 5850 7450 6050
Wire Wire Line
	7450 6050 7000 6050
Wire Wire Line
	7000 6050 7000 6100
Wire Wire Line
	7000 6050 6500 6050
Wire Wire Line
	6500 6050 6500 5750
Wire Wire Line
	6500 5750 6700 5750
Connection ~ 7000 6050
Wire Notes Line
	6950 6550 5550 6550
Wire Notes Line
	5550 6550 5550 500 
Wire Notes Line
	5550 2700 8050 2700
Wire Notes Line
	5550 4500 8050 4500
NoConn ~ 1100 1350
NoConn ~ 1100 2750
NoConn ~ 1100 2650
NoConn ~ 1100 2550
Text Label 2400 2550 0    50   ~ 0
Buzzer
$Comp
L Connector:TestPoint TP1
U 1 1 5DF41A81
P 7100 3100
F 0 "TP1" V 7000 3300 50  0000 L CNN
F 1 "TP_LED" V 7100 3300 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7300 3100 50  0001 C CNN
F 3 "~" H 7300 3100 50  0001 C CNN
	1    7100 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 2900 7100 3100
Wire Wire Line
	7100 3450 7000 3450
$Comp
L Connector:TestPoint TP2
U 1 1 5DF48133
P 7400 3650
F 0 "TP2" H 7350 3950 50  0000 L CNN
F 1 "TP_POT" H 7250 3850 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 7600 3650 50  0001 C CNN
F 3 "~" H 7600 3650 50  0001 C CNN
	1    7400 3650
	1    0    0    -1  
$EndComp
Connection ~ 7400 3650
Wire Wire Line
	7400 3650 7500 3650
Connection ~ 7100 3100
Wire Wire Line
	7100 3100 7100 3450
Text Label 7650 1650 0    50   ~ 0
Reset
Text Label 2400 1450 0    50   ~ 0
Reset
$Comp
L Switch:SW_Push SW7
U 1 1 5DF9617D
P 10650 3450
F 0 "SW7" H 10650 3735 50  0000 C CNN
F 1 "SW_Push_White" H 10650 3644 50  0000 C CNN
F 2 "Project_Module:project_SW_PUSH-12mm-WHITE" H 10650 3650 50  0001 C CNN
F 3 "~" H 10650 3650 50  0001 C CNN
	1    10650 3450
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 5DF9FD00
P 9750 3000
F 0 "#PWR014" H 9750 2850 50  0001 C CNN
F 1 "+3.3V" H 9765 3173 50  0000 C CNN
F 2 "" H 9750 3000 50  0001 C CNN
F 3 "" H 9750 3000 50  0001 C CNN
	1    9750 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5DFA0ACF
P 9750 4800
F 0 "#PWR015" H 9750 4550 50  0001 C CNN
F 1 "GND" H 9755 4627 50  0000 C CNN
F 2 "" H 9750 4800 50  0001 C CNN
F 3 "" H 9750 4800 50  0001 C CNN
	1    9750 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5DFA1595
P 8850 4450
F 0 "R9" H 8920 4496 50  0000 L CNN
F 1 "10k" H 8920 4405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8780 4450 50  0001 C CNN
F 3 "~" H 8850 4450 50  0001 C CNN
	1    8850 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5DFA1AEA
P 9300 4450
F 0 "R11" H 9370 4496 50  0000 L CNN
F 1 "10k" H 9370 4405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9230 4450 50  0001 C CNN
F 3 "~" H 9300 4450 50  0001 C CNN
	1    9300 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5DFA1F36
P 9750 4450
F 0 "R12" H 9820 4496 50  0000 L CNN
F 1 "10k" H 9820 4405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9680 4450 50  0001 C CNN
F 3 "~" H 9750 4450 50  0001 C CNN
	1    9750 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5DFA23EA
P 10200 4450
F 0 "R16" H 10270 4496 50  0000 L CNN
F 1 "10k" H 10270 4405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10130 4450 50  0001 C CNN
F 3 "~" H 10200 4450 50  0001 C CNN
	1    10200 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5DFA283B
P 10650 4450
F 0 "R17" H 10720 4496 50  0000 L CNN
F 1 "10k" H 10720 4405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 10580 4450 50  0001 C CNN
F 3 "~" H 10650 4450 50  0001 C CNN
	1    10650 4450
	1    0    0    -1  
$EndComp
Text Label 8700 4200 2    50   ~ 0
Btn_White
Wire Wire Line
	8850 3250 8850 3100
Wire Wire Line
	8850 3100 9300 3100
Wire Wire Line
	10650 3100 10650 3250
Wire Wire Line
	9750 3250 9750 3100
Connection ~ 9750 3100
Wire Wire Line
	9750 3100 10200 3100
Wire Wire Line
	9300 3250 9300 3100
Connection ~ 9300 3100
Wire Wire Line
	9300 3100 9750 3100
Wire Wire Line
	10200 3250 10200 3100
Connection ~ 10200 3100
Wire Wire Line
	10200 3100 10650 3100
Wire Wire Line
	9750 3100 9750 3000
Wire Wire Line
	9750 4300 9750 4000
Wire Wire Line
	10200 4300 10200 4100
Wire Wire Line
	10650 4300 10650 4200
Wire Wire Line
	9300 4300 9300 3900
Wire Wire Line
	8850 4300 8850 3800
Wire Wire Line
	8850 4600 8850 4700
Wire Wire Line
	8850 4700 9300 4700
Wire Wire Line
	10650 4700 10650 4600
Wire Wire Line
	9750 4600 9750 4700
Connection ~ 9750 4700
Wire Wire Line
	9750 4700 10200 4700
Wire Wire Line
	9300 4600 9300 4700
Connection ~ 9300 4700
Wire Wire Line
	9300 4700 9750 4700
Wire Wire Line
	10200 4600 10200 4700
Connection ~ 10200 4700
Wire Wire Line
	10200 4700 10650 4700
Wire Wire Line
	9750 4800 9750 4700
Wire Wire Line
	8700 4200 10650 4200
Connection ~ 10650 4200
Wire Wire Line
	10650 4200 10650 3650
Wire Wire Line
	8700 4100 10200 4100
Connection ~ 10200 4100
Wire Wire Line
	10200 4100 10200 3650
Wire Wire Line
	8700 4000 9750 4000
Connection ~ 9750 4000
Wire Wire Line
	9750 4000 9750 3650
Wire Wire Line
	8700 3900 9300 3900
Connection ~ 9300 3900
Wire Wire Line
	9300 3900 9300 3650
Wire Wire Line
	8700 3800 8850 3800
Connection ~ 8850 3800
Wire Wire Line
	8850 3800 8850 3650
$Comp
L Device:LED_RAGB D2
U 1 1 5E090DB1
P 10250 5950
F 0 "D2" H 10250 6447 50  0000 C CNN
F 1 "LED_RAGB" H 10250 6356 50  0000 C CNN
F 2 "Project_Module:LED_RAGB_RECT_5.0mm_2.45mm" H 10250 5900 50  0001 C CNN
F 3 "~" H 10250 5900 50  0001 C CNN
	1    10250 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5E0CFC7D
P 4750 6300
F 0 "BZ1" H 4902 6329 50  0000 L CNN
F 1 "Buzzer" H 4902 6238 50  0000 L CNN
F 2 "Project_Module:Buzzer_D9.5mm_H5.5mm_P5mm" V 4725 6400 50  0001 C CNN
F 3 "~" V 4725 6400 50  0001 C CNN
	1    4750 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E0D083E
P 4550 7000
F 0 "#PWR0101" H 4550 6750 50  0001 C CNN
F 1 "GND" H 4555 6827 50  0000 C CNN
F 2 "" H 4550 7000 50  0001 C CNN
F 3 "" H 4550 7000 50  0001 C CNN
	1    4550 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5E0D0F41
P 4550 6100
F 0 "#PWR0102" H 4550 5950 50  0001 C CNN
F 1 "+3.3V" H 4565 6273 50  0000 C CNN
F 2 "" H 4550 6100 50  0001 C CNN
F 3 "" H 4550 6100 50  0001 C CNN
	1    4550 6100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3904 Q3
U 1 1 5E0D1BAA
P 4450 6700
F 0 "Q3" H 4640 6746 50  0000 L CNN
F 1 "2N3904" H 4640 6655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4650 6625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 4450 6700 50  0001 L CNN
	1    4450 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 5E0D2AB6
P 4000 6700
F 0 "R18" V 3793 6700 50  0000 C CNN
F 1 "1k" V 3884 6700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3930 6700 50  0001 C CNN
F 3 "~" H 4000 6700 50  0001 C CNN
	1    4000 6700
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 6400 4550 6400
Wire Wire Line
	4550 6400 4550 6500
Wire Wire Line
	4650 6200 4550 6200
Wire Wire Line
	4550 6200 4550 6100
Wire Wire Line
	4550 7000 4550 6900
Wire Wire Line
	4250 6700 4150 6700
Text Label 3850 6700 2    50   ~ 0
Buzzer
$Comp
L Connector:TestPoint TP3
U 1 1 5E14B6DD
P 8300 1500
F 0 "TP3" H 8250 1850 50  0000 L CNN
F 1 "TP_TiltIn" H 8150 1750 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8500 1500 50  0001 C CNN
F 3 "~" H 8500 1500 50  0001 C CNN
	1    8300 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 5E14BA4E
P 9700 1500
F 0 "TP4" H 9650 1850 50  0000 L CNN
F 1 "TP_TiltM" H 9550 1750 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 9900 1500 50  0001 C CNN
F 3 "~" H 9900 1500 50  0001 C CNN
	1    9700 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 5E14BBA2
P 10950 1500
F 0 "TP5" H 10900 1850 50  0000 L CNN
F 1 "TP_TiltOut" H 10800 1750 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 11150 1500 50  0001 C CNN
F 3 "~" H 11150 1500 50  0001 C CNN
	1    10950 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 5950 10600 5950
Connection ~ 8300 1500
Connection ~ 9700 1500
Connection ~ 10950 1500
Text Label 2400 1850 0    50   ~ 0
Future1
Text Label 1350 3850 0    50   ~ 0
Future1
$Comp
L power:GND #PWR0103
U 1 1 5DF19A1A
P 1900 3750
F 0 "#PWR0103" H 1900 3500 50  0001 C CNN
F 1 "GND" H 1905 3577 50  0000 C CNN
F 2 "" H 1900 3750 50  0001 C CNN
F 3 "" H 1900 3750 50  0001 C CNN
	1    1900 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5DF1A1CD
P 1900 3650
F 0 "#PWR0104" H 1900 3500 50  0001 C CNN
F 1 "+3.3V" H 1915 3823 50  0000 C CNN
F 2 "" H 1900 3650 50  0001 C CNN
F 3 "" H 1900 3650 50  0001 C CNN
	1    1900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3650 1900 3650
Wire Wire Line
	1350 3750 1900 3750
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 5DFFBF3A
P 1150 3850
F 0 "J1" H 1258 4231 50  0000 C CNN
F 1 "Conn_01x05_Male" H 1258 4140 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B5B-XH-A_1x05_P2.50mm_Vertical" H 1150 3850 50  0001 C CNN
F 3 "~" H 1150 3850 50  0001 C CNN
	1    1150 3850
	1    0    0    -1  
$EndComp
Text Label 2400 1650 0    50   ~ 0
Future2
Text Label 2400 1550 0    50   ~ 0
Future3
Text Label 1350 3950 0    50   ~ 0
Future2
Text Label 1350 4050 0    50   ~ 0
Future3
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J2
U 1 1 5DF4ED76
P 4250 1850
F 0 "J2" H 4300 2767 50  0000 C CNN
F 1 "Conn_02x15_Odd_Even" H 4300 2676 50  0000 C CNN
F 2 "Connector_PinSocket_1.27mm:PinSocket_2x15_P1.27mm_Horizontal" H 4250 1850 50  0001 C CNN
F 3 "~" H 4250 1850 50  0001 C CNN
	1    4250 1850
	1    0    0    -1  
$EndComp
Text Label 4050 1150 2    50   ~ 0
+3V3
Text Label 4050 1350 2    50   ~ 0
Enc_Rot_P1
Text Label 4050 1450 2    50   ~ 0
Enc_Rot_P2
Text Label 4050 1550 2    50   ~ 0
Enc_Rot_Btn
Text Label 4050 1650 2    50   ~ 0
Btn_Red
Text Label 4050 1750 2    50   ~ 0
Btn_Green
Text Label 4050 1850 2    50   ~ 0
Btn_Yellow
Text Label 4050 1950 2    50   ~ 0
Btn_Blue
Text Label 4050 2050 2    50   ~ 0
Led_R
Text Label 4050 2150 2    50   ~ 0
Led_G
Text Label 4050 2250 2    50   ~ 0
Led_B
Text Label 4050 2350 2    50   ~ 0
Btn_White
Text Label 4550 1150 0    50   ~ 0
GND
Text Label 4550 1250 0    50   ~ 0
MOSI
Text Label 4550 1350 0    50   ~ 0
Reset
Text Label 4550 1450 0    50   ~ 0
Future3
Text Label 4550 1550 0    50   ~ 0
Future2
Text Label 4550 1650 0    50   ~ 0
DC
Text Label 4550 1750 0    50   ~ 0
Future1
Text Label 4550 1850 0    50   ~ 0
SCK
Text Label 4550 1950 0    50   ~ 0
CS
Text Label 4550 2050 0    50   ~ 0
TFT_Pwr
Text Label 4550 2150 0    50   ~ 0
Led_IR
Text Label 4550 2250 0    50   ~ 0
Buzzer
Text Label 4550 2350 0    50   ~ 0
Tilt
NoConn ~ 4550 2450
NoConn ~ 4550 2550
NoConn ~ 4050 2550
NoConn ~ 4050 2450
NoConn ~ 4050 1250
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5DFE6640
P 2000 6200
F 0 "J3" H 2150 6250 50  0000 C CNN
F 1 "Conn_01x02" H 2300 6150 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 2000 6200 50  0001 C CNN
F 3 "~" H 2000 6200 50  0001 C CNN
	1    2000 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6000 1800 6200
Wire Wire Line
	1800 6300 1800 6500
Text Label 1800 6200 2    50   ~ 0
Led_IR_vcc
Text Label 1200 5550 2    50   ~ 0
Led_IR_vcc
Text Label 1800 6300 2    50   ~ 0
Led_IR_gnd
Text Label 1200 5850 2    50   ~ 0
Led_IR_gnd
$Comp
L Connector_Generic:Conn_02x15_Odd_Even J4
U 1 1 5E0C5C29
P 4250 3650
F 0 "J4" H 4300 4567 50  0000 C CNN
F 1 "Conn_02x15_Odd_Even" H 4300 4476 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x15_P1.27mm_Horizontal" H 4250 3650 50  0001 C CNN
F 3 "~" H 4250 3650 50  0001 C CNN
	1    4250 3650
	1    0    0    -1  
$EndComp
Text Label 4550 2950 0    50   ~ 0
GND
Text Label 4550 3050 0    50   ~ 0
MOSI
Text Label 4550 3150 0    50   ~ 0
Reset
Text Label 4550 3250 0    50   ~ 0
Future3
Text Label 4550 3350 0    50   ~ 0
Future2
Text Label 4550 3450 0    50   ~ 0
DC
Text Label 4550 3550 0    50   ~ 0
Future1
Text Label 4550 3650 0    50   ~ 0
SCK
Text Label 4550 3750 0    50   ~ 0
CS
Text Label 4550 3850 0    50   ~ 0
TFT_Pwr
Text Label 4550 3950 0    50   ~ 0
Led_IR
Text Label 4550 4050 0    50   ~ 0
Buzzer
Text Label 4550 4150 0    50   ~ 0
Tilt
Text Label 4050 2950 2    50   ~ 0
+3V3
Text Label 4050 3150 2    50   ~ 0
Enc_Rot_P1
Text Label 4050 3250 2    50   ~ 0
Enc_Rot_P2
Text Label 4050 3350 2    50   ~ 0
Enc_Rot_Btn
Text Label 4050 3450 2    50   ~ 0
Btn_Red
Text Label 4050 3550 2    50   ~ 0
Btn_Green
Text Label 4050 3650 2    50   ~ 0
Btn_Yellow
Text Label 4050 3750 2    50   ~ 0
Btn_Blue
Text Label 4050 3850 2    50   ~ 0
Led_R
Text Label 4050 3950 2    50   ~ 0
Led_G
Text Label 4050 4050 2    50   ~ 0
Led_B
Text Label 4050 4150 2    50   ~ 0
Btn_White
NoConn ~ 4550 4250
NoConn ~ 4550 4350
NoConn ~ 4050 4350
NoConn ~ 4050 4250
$EndSCHEMATC
