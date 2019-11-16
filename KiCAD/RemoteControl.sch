EESchema Schematic File Version 4
LIBS:RemoteControl-cache
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
L Switch:SW_Push SW1
U 1 1 5D425AD3
P 5500 5150
F 0 "SW1" H 5500 5435 50  0000 C CNN
F 1 "SW_Push_Red" H 5500 5344 50  0000 C CNN
F 2 "Project_Module:project_SW_PUSH-12mm-RED" H 5500 5350 50  0001 C CNN
F 3 "~" H 5500 5350 50  0001 C CNN
	1    5500 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D428379
P 3300 3300
F 0 "#PWR02" H 3300 3050 50  0001 C CNN
F 1 "GND" H 3305 3127 50  0000 C CNN
F 2 "" H 3300 3300 50  0001 C CNN
F 3 "" H 3300 3300 50  0001 C CNN
	1    3300 3300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 5D42920F
P 6850 5150
F 0 "SW4" H 6850 5435 50  0000 C CNN
F 1 "SW_Push_Green" H 6850 5344 50  0000 C CNN
F 2 "Project_Module:project_SW_PUSH-12mm-GREEN" H 6850 5350 50  0001 C CNN
F 3 "~" H 6850 5350 50  0001 C CNN
	1    6850 5150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5D42983F
P 5500 6000
F 0 "SW2" H 5500 6285 50  0000 C CNN
F 1 "SW_Push_Yellow" H 5500 6194 50  0000 C CNN
F 2 "Project_Module:project_SW_PUSH-12mm-YELLOW" H 5500 6200 50  0001 C CNN
F 3 "~" H 5500 6200 50  0001 C CNN
	1    5500 6000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5D429E78
P 6850 6000
F 0 "SW5" H 6850 6285 50  0000 C CNN
F 1 "SW_Push_Blue" H 6850 6194 50  0000 C CNN
F 2 "Project_Module:project_SW_PUSH-12mm-BLUE" H 6850 6200 50  0001 C CNN
F 3 "~" H 6850 6200 50  0001 C CNN
	1    6850 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW3
U 1 1 5D42C200
P 5750 7350
F 0 "SW3" H 5750 7717 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 5750 7626 50  0000 C CNN
F 2 "Project_Module:project_RotaryEncoder_Alps_EC11E-Switch_Vertical_H20mm" H 5600 7510 50  0001 C CNN
F 3 "~" H 5750 7610 50  0001 C CNN
	1    5750 7350
	1    0    0    -1  
$EndComp
$Comp
L project:TFT_1_8_SPI_128x160 U2
U 1 1 5D438FC2
P 5950 1500
F 0 "U2" H 6250 1650 50  0000 L CNN
F 1 "TFT_1_8_SPI_128x160" H 5900 -200 50  0000 L CNN
F 2 "Project_Module:TFT_1_8_SPI_128x160_PinSocket_1x16_P2.54mm_Vertical" H 5950 1500 50  0001 C CNN
F 3 "" H 5950 1500 50  0001 C CNN
	1    5950 1500
	1    0    0    -1  
$EndComp
Text Label 5950 1800 2    50   ~ 0
MOSI
Text Label 5950 1900 2    50   ~ 0
MISO
Text Label 5950 2000 2    50   ~ 0
SCK
Text Label 5950 2100 2    50   ~ 0
CS
Text Label 5950 2200 2    50   ~ 0
SCL
Text Label 5950 2300 2    50   ~ 0
SDA
Text Label 5950 2900 2    50   ~ 0
+3V3
Text Label 5950 3000 2    50   ~ 0
GND
Text Notes 6450 1250 2    50   ~ 0
TFT 1.8"
Text Notes 2650 1250 2    50   ~ 0
Wemos Lolin D32 Pro
Text Label 3050 1750 0    50   ~ 0
GND
Text Label 3050 3250 0    50   ~ 0
GND
Text Label 1750 2250 2    50   ~ 0
Btn_Red
$Comp
L project:D32Pro U1
U 1 1 5D41ED62
P 2400 2500
F 0 "U1" H 2400 3565 50  0000 C CNN
F 1 "D32Pro" H 2400 3474 50  0000 C CNN
F 2 "Project_Module:D32Pro_PinSocket_2x1x16_P2.54mm_Vertical" H 2450 2500 50  0001 C CNN
F 3 "" H 2450 2500 50  0001 C CNN
	1    2400 2500
	1    0    0    -1  
$EndComp
Text Label 1750 1750 2    50   ~ 0
+3V3
Text Label 5700 5150 0    50   ~ 0
Btn_Red
Text Label 5300 5150 2    50   ~ 0
+3V3
Text Label 5300 6000 2    50   ~ 0
+3V3
Text Label 6650 6000 2    50   ~ 0
+3V3
Text Label 6650 5150 2    50   ~ 0
+3V3
Text Label 1750 2350 2    50   ~ 0
Btn_Green
Text Label 7050 5150 0    50   ~ 0
Btn_Green
Text Label 5700 6000 0    50   ~ 0
Btn_Yellow
Text Label 7050 6000 0    50   ~ 0
Btn_Blue
Text Label 1750 2450 2    50   ~ 0
Btn_Yellow
Text Label 1750 2550 2    50   ~ 0
Btn_Blue
$Comp
L 4xxx:HEF4093B U3
U 1 1 5D4AD10D
P 9400 1500
F 0 "U3" H 9400 1825 50  0000 C CNN
F 1 "CD4093BE" H 9400 1734 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 9400 1500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF4093B.pdf" H 9400 1500 50  0001 C CNN
	1    9400 1500
	1    0    0    -1  
$EndComp
$Comp
L 4xxx:HEF4093B U3
U 2 1 5D4AFAF1
P 10650 1500
F 0 "U3" H 10650 1825 50  0000 C CNN
F 1 "CD4093BE" H 10650 1734 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 10650 1500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF4093B.pdf" H 10650 1500 50  0001 C CNN
	2    10650 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D4B202A
P 8750 1500
F 0 "C1" V 8498 1500 50  0000 C CNN
F 1 "100n" V 8589 1500 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 8788 1350 50  0001 C CNN
F 3 "~" H 8750 1500 50  0001 C CNN
	1    8750 1500
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5D4B2230
P 10250 1800
F 0 "C2" H 10365 1846 50  0000 L CNN
F 1 "100n" H 10365 1755 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.8mm_W2.6mm_P2.50mm" H 10288 1650 50  0001 C CNN
F 3 "~" H 10250 1800 50  0001 C CNN
	1    10250 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5D4B27F1
P 8500 1250
F 0 "R6" H 8300 1300 50  0000 L CNN
F 1 "100k" H 8250 1200 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8430 1250 50  0001 C CNN
F 3 "~" H 8500 1250 50  0001 C CNN
	1    8500 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5D4B2ACA
P 9000 1800
F 0 "R7" H 9070 1846 50  0000 L CNN
F 1 "1M" H 9070 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 8930 1800 50  0001 C CNN
F 3 "~" H 9000 1800 50  0001 C CNN
	1    9000 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5D4B3FA0
P 10000 1500
F 0 "RV1" V 9793 1500 50  0000 C CNN
F 1 "1M" V 9884 1500 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3296W_Vertical" H 10000 1500 50  0001 C CNN
F 3 "~" H 10000 1500 50  0001 C CNN
	1    10000 1500
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5D4B57F2
P 8300 1750
F 0 "SW6" V 8350 1600 50  0000 C CNN
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
	9850 1500 9750 1500
Wire Wire Line
	9750 1500 9750 1700
Wire Wire Line
	9750 1700 10000 1700
Wire Wire Line
	10000 1700 10000 1650
Connection ~ 9750 1500
Wire Wire Line
	9750 1500 9700 1500
Wire Wire Line
	9100 1600 9100 1500
Wire Wire Line
	8900 1500 9000 1500
Connection ~ 9100 1500
Wire Wire Line
	9100 1500 9100 1400
Wire Wire Line
	9000 1650 9000 1500
Connection ~ 9000 1500
Wire Wire Line
	9000 1500 9100 1500
Wire Wire Line
	8600 1500 8500 1500
Wire Wire Line
	8300 1500 8300 1550
Wire Wire Line
	8500 1400 8500 1500
Connection ~ 8500 1500
Wire Wire Line
	8500 1500 8300 1500
Wire Wire Line
	8500 1100 8500 1000
Wire Wire Line
	8300 1950 8300 2050
Wire Wire Line
	9000 1950 9000 2050
Wire Wire Line
	10250 1950 10250 2050
$Comp
L power:+3.3V #PWR06
U 1 1 5D4C9AAA
P 8500 1000
F 0 "#PWR06" H 8500 850 50  0001 C CNN
F 1 "+3.3V" H 8515 1173 50  0000 C CNN
F 2 "" H 8500 1000 50  0001 C CNN
F 3 "" H 8500 1000 50  0001 C CNN
	1    8500 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D4CA43C
P 8300 2050
F 0 "#PWR05" H 8300 1800 50  0001 C CNN
F 1 "GND" H 8305 1877 50  0000 C CNN
F 2 "" H 8300 2050 50  0001 C CNN
F 3 "" H 8300 2050 50  0001 C CNN
	1    8300 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5D4CA7D3
P 9000 2050
F 0 "#PWR07" H 9000 1800 50  0001 C CNN
F 1 "GND" H 9005 1877 50  0000 C CNN
F 2 "" H 9000 2050 50  0001 C CNN
F 3 "" H 9000 2050 50  0001 C CNN
	1    9000 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5D4CAA73
P 10250 2050
F 0 "#PWR08" H 10250 1800 50  0001 C CNN
F 1 "GND" H 10255 1877 50  0000 C CNN
F 2 "" H 10250 2050 50  0001 C CNN
F 3 "" H 10250 2050 50  0001 C CNN
	1    10250 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 1500 11100 1500
Text Label 11100 1500 2    50   ~ 0
Tilt
Text Label 1750 2150 2    50   ~ 0
Tilt
Text Notes 9700 700  2    50   ~ 0
Tilt sensor
Wire Notes Line
	11200 2400 8050 2400
$Comp
L LED:IR204A D1
U 1 1 5D4F24B9
P 9950 4050
F 0 "D1" V 9946 3973 50  0000 R CNN
F 1 "IR204A" V 9855 3973 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_Horizontal_O6.35mm_Z2.0mm" H 9950 4225 50  0001 C CNN
F 3 "http://www.everlight.com/file/ProductFile/IR204-A.pdf" H 9900 4050 50  0001 C CNN
	1    9950 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_RGBA D2
U 1 1 5D4F35BC
P 10250 5950
F 0 "D2" H 10250 6447 50  0000 C CNN
F 1 "LED_RGBA" H 10250 6356 50  0000 C CNN
F 2 "Project_Module:LED_RGBA_RECT_5.0mm_2.45mm" H 10250 5900 50  0001 C CNN
F 3 "~" H 10250 5900 50  0001 C CNN
	1    10250 5950
	1    0    0    -1  
$EndComp
Text Label 9450 5750 2    50   ~ 0
Led_R
Text Label 9450 5950 2    50   ~ 0
Led_G
Text Label 9450 6150 2    50   ~ 0
Led_B
Text Label 10700 5950 0    50   ~ 0
+3V3
Text Label 1750 2650 2    50   ~ 0
Led_R
Text Label 1750 2750 2    50   ~ 0
Led_G
Text Label 1750 2850 2    50   ~ 0
Led_B
$Comp
L Device:R R3
U 1 1 5D53160B
P 9800 5750
F 0 "R3" V 9700 5650 50  0000 C CNN
F 1 "22" V 9700 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9730 5750 50  0001 C CNN
F 3 "~" H 9800 5750 50  0001 C CNN
	1    9800 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5D531B1B
P 9800 5950
F 0 "R4" V 9700 5850 50  0000 C CNN
F 1 "22" V 9700 6000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9730 5950 50  0001 C CNN
F 3 "~" H 9800 5950 50  0001 C CNN
	1    9800 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5D531E85
P 9800 6150
F 0 "R5" V 9700 6050 50  0000 C CNN
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
Wire Wire Line
	10450 5950 10700 5950
$Comp
L Transistor_BJT:2N3904 Q1
U 1 1 5D53CBCC
P 9850 4550
F 0 "Q1" H 10040 4596 50  0000 L CNN
F 1 "2N3904" H 10040 4505 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10050 4475 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 9850 4550 50  0001 L CNN
	1    9850 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D53E6A9
P 9950 3700
F 0 "R2" H 10020 3746 50  0000 L CNN
F 1 "10" H 10020 3655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9880 3700 50  0001 C CNN
F 3 "~" H 9950 3700 50  0001 C CNN
	1    9950 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D53E9B0
P 9350 4550
F 0 "R1" V 9143 4550 50  0000 C CNN
F 1 "1k" V 9234 4550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9280 4550 50  0001 C CNN
F 3 "~" H 9350 4550 50  0001 C CNN
	1    9350 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	9950 4750 9950 4900
Wire Wire Line
	9950 4350 9950 4250
Wire Wire Line
	9950 3950 9950 3850
Wire Wire Line
	9650 4550 9500 4550
Wire Wire Line
	9200 4550 9050 4550
$Comp
L power:GND #PWR04
U 1 1 5D545341
P 9950 4900
F 0 "#PWR04" H 9950 4650 50  0001 C CNN
F 1 "GND" H 9955 4727 50  0000 C CNN
F 2 "" H 9950 4900 50  0001 C CNN
F 3 "" H 9950 4900 50  0001 C CNN
	1    9950 4900
	1    0    0    -1  
$EndComp
Text Label 9050 4550 2    50   ~ 0
Led_IR
Text Label 1750 2950 2    50   ~ 0
Led_IR
Text Label 3050 1850 0    50   ~ 0
MOSI
Text Label 3050 2350 0    50   ~ 0
MISO
Text Label 3050 2450 0    50   ~ 0
SCK
Text Label 3050 1950 0    50   ~ 0
SCL
Text Label 3050 2250 0    50   ~ 0
SDA
Text Label 3050 2850 0    50   ~ 0
CS
$Comp
L power:+3.3V #PWR01
U 1 1 5D427DAE
P 1400 1700
F 0 "#PWR01" H 1400 1550 50  0001 C CNN
F 1 "+3.3V" H 1415 1873 50  0000 C CNN
F 2 "" H 1400 1700 50  0001 C CNN
F 3 "" H 1400 1700 50  0001 C CNN
	1    1400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1750 1400 1750
Wire Wire Line
	1400 1750 1400 1700
Wire Wire Line
	3050 3250 3300 3250
Wire Wire Line
	3300 3250 3300 3300
$Comp
L power:+3.3V #PWR03
U 1 1 5D544B3D
P 9950 3050
F 0 "#PWR03" H 9950 2900 50  0001 C CNN
F 1 "+3.3V" H 9965 3223 50  0000 C CNN
F 2 "" H 9950 3050 50  0001 C CNN
F 3 "" H 9950 3050 50  0001 C CNN
	1    9950 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5D4955C3
P 9950 3300
F 0 "R8" H 10020 3346 50  0000 L CNN
F 1 "10" H 10020 3255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9880 3300 50  0001 C CNN
F 3 "~" H 9950 3300 50  0001 C CNN
	1    9950 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 3150 9950 3050
Wire Wire Line
	9950 3550 9950 3450
Text Notes 10100 2650 2    50   ~ 0
Infrared pulse control
Wire Notes Line
	11200 5300 8050 5300
Text Notes 8700 5950 2    50   ~ 0
RGB LED
Wire Notes Line
	8050 500  8050 6500
Wire Notes Line
	4600 7750 4600 500 
Wire Notes Line
	6950 6550 4600 6550
Wire Notes Line
	8050 3850 4600 3850
Text Notes 6450 4400 2    50   ~ 0
Push buttons
Text Notes 6300 6700 2    50   ~ 0
Rorary encoder / Swicth button
$Comp
L Switch:SW_Push SW7
U 1 1 5DBED357
P 2900 7050
F 0 "SW7" H 2900 7335 50  0000 C CNN
F 1 "switch" H 2900 7244 50  0000 C CIN
F 2 "Project_Module:project_SW_PUSH-12mm-RED" H 2900 7250 50  0001 C CNN
F 3 "~" H 2900 7250 50  0001 C CNN
	1    2900 7050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5DBEFF3C
P 3000 6500
F 0 "R9" H 3070 6546 50  0000 L CNN
F 1 "20k" H 3070 6455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2930 6500 50  0001 C CNN
F 3 "~" H 3000 6500 50  0001 C CNN
	1    3000 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5DBF0469
P 3250 6800
F 0 "R10" V 3150 6800 50  0000 C CNN
F 1 "47k" V 3350 6800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3180 6800 50  0001 C CNN
F 3 "~" H 3250 6800 50  0001 C CNN
	1    3250 6800
	0    1    1    0   
$EndComp
$Comp
L 4xxx:HEF4093B U4
U 1 1 5DBF180A
P 3900 6800
F 0 "U4" H 3900 7125 50  0000 C CNN
F 1 "CD4093BE" H 3900 7034 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm_Socket" H 3900 6800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/HEF4093B.pdf" H 3900 6800 50  0001 C CNN
	1    3900 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5DBF0B4D
P 3500 7200
F 0 "C3" H 3615 7246 50  0000 L CNN
F 1 "0.68u" H 3615 7155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 3538 7050 50  0001 C CNN
F 3 "~" H 3500 7200 50  0001 C CNN
	1    3500 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 6800 3000 6800
Wire Wire Line
	3000 6800 3000 6650
Wire Wire Line
	2900 6850 2900 6800
Wire Wire Line
	2900 6800 3000 6800
Connection ~ 3000 6800
$Comp
L power:GND #PWR0101
U 1 1 5DBFB418
P 3500 7450
F 0 "#PWR0101" H 3500 7200 50  0001 C CNN
F 1 "GND" H 3505 7277 50  0000 C CNN
F 2 "" H 3500 7450 50  0001 C CNN
F 3 "" H 3500 7450 50  0001 C CNN
	1    3500 7450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5DBFB56D
P 2900 7450
F 0 "#PWR0102" H 2900 7200 50  0001 C CNN
F 1 "GND" H 2905 7277 50  0000 C CNN
F 2 "" H 2900 7450 50  0001 C CNN
F 3 "" H 2900 7450 50  0001 C CNN
	1    2900 7450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 5DBFBD54
P 3000 6300
F 0 "#PWR0103" H 3000 6150 50  0001 C CNN
F 1 "VCC" H 3017 6473 50  0000 C CNN
F 2 "" H 3000 6300 50  0001 C CNN
F 3 "" H 3000 6300 50  0001 C CNN
	1    3000 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6350 3000 6300
Wire Wire Line
	3500 7450 3500 7350
Wire Wire Line
	2900 7450 2900 7250
Text GLabel 4250 6800 2    50   Input ~ 0
Input
Wire Wire Line
	4200 6800 4250 6800
Wire Wire Line
	3600 6900 3600 6800
Wire Wire Line
	3400 6800 3500 6800
Connection ~ 3600 6800
Wire Wire Line
	3600 6800 3600 6700
Wire Wire Line
	3500 7050 3500 6800
Connection ~ 3500 6800
Wire Wire Line
	3500 6800 3600 6800
Wire Notes Line
	4600 6000 2500 6000
Wire Notes Line
	2500 6000 2500 7800
Text Notes 3450 6150 0    50   ~ 0
Switch debouncer
$EndSCHEMATC
