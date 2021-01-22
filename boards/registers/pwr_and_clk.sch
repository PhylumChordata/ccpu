EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 10
Title "Clock, reset, and power input"
Date "2021-01-18"
Rev "2"
Comp ""
Comment1 "Licensed under the TAPR Open Hardware License (www.tapr.org/OHL)"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 6650 1850 2    50   Output ~ 0
clk
Text HLabel 6200 3000 2    50   Output ~ 0
~rst
Text HLabel 6650 1650 2    50   Output ~ 0
~clk
$Comp
L 74xx:74HC14 U34
U 1 1 5EF0663E
P 3550 1750
F 0 "U34" H 3550 2067 50  0000 C CNN
F 1 "SN74LV14APW" H 3550 1976 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3550 1750 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74lv14a.pdf" H 3550 1750 50  0001 C CNN
	1    3550 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R171
U 1 1 5EF09E34
P 3550 1200
F 0 "R171" V 3343 1200 50  0000 C CNN
F 1 "100k" V 3434 1200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 1200 50  0001 C CNN
F 3 "~" H 3550 1200 50  0001 C CNN
	1    3550 1200
	0    1    1    0   
$EndComp
$Comp
L Device:C C34
U 1 1 5EF0A8C4
P 2800 1900
F 0 "C34" H 2915 1946 50  0000 L CNN
F 1 "C" H 2915 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2838 1750 50  0001 C CNN
F 3 "~" H 2800 1900 50  0001 C CNN
	1    2800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1750 2800 1200
Wire Wire Line
	3700 1200 3850 1200
Wire Wire Line
	3850 1200 3850 1650
$Comp
L power:GND #PWR0221
U 1 1 5EF0B4A1
P 2800 2050
F 0 "#PWR0221" H 2800 1800 50  0001 C CNN
F 1 "GND" H 2805 1877 50  0000 C CNN
F 2 "" H 2800 2050 50  0001 C CNN
F 3 "" H 2800 2050 50  0001 C CNN
	1    2800 2050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U34
U 2 1 5EF0B79E
P 3550 3000
F 0 "U34" H 3550 3317 50  0000 C CNN
F 1 "SN74LV14APW" H 3550 3226 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3550 3000 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74lv14a.pdf" H 3550 3000 50  0001 C CNN
	2    3550 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R168
U 1 1 5EF0F1E2
P 3100 1750
F 0 "R168" V 2893 1750 50  0000 C CNN
F 1 "10k" V 2984 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3030 1750 50  0001 C CNN
F 3 "~" H 3100 1750 50  0001 C CNN
	1    3100 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 1750 2800 1750
Connection ~ 2800 1750
Wire Wire Line
	2800 1200 3400 1200
$Comp
L Device:R R166
U 1 1 5EF0FCD1
P 2650 2850
F 0 "R166" H 2900 2800 50  0000 R CNN
F 1 "100k" H 2900 2900 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2580 2850 50  0001 C CNN
F 3 "~" H 2650 2850 50  0001 C CNN
	1    2650 2850
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74HC14 U34
U 3 1 5EF10AA7
P 4800 3000
F 0 "U34" H 4800 3317 50  0000 C CNN
F 1 "SN74LV14APW" H 4800 3226 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 4800 3000 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74lv14a.pdf" H 4800 3000 50  0001 C CNN
	3    4800 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R169
U 1 1 5EF12F5C
P 3100 3000
F 0 "R169" V 3200 3000 50  0000 C CNN
F 1 "10k" V 3300 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3030 3000 50  0001 C CNN
F 3 "~" H 3100 3000 50  0001 C CNN
	1    3100 3000
	0    1    1    0   
$EndComp
$Comp
L Device:C C35
U 1 1 5EF136E4
P 2850 2850
F 0 "C35" H 2965 2896 50  0000 L CNN
F 1 "220n" H 2965 2805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2888 2700 50  0001 C CNN
F 3 "~" H 2850 2850 50  0001 C CNN
	1    2850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3000 2850 3000
$Comp
L 74xx:74HC14 U34
U 4 1 5EF1CCB5
P 3550 4400
F 0 "U34" H 3550 4717 50  0000 C CNN
F 1 "SN74LV14APW" H 3550 4626 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3550 4400 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74lv14a.pdf" H 3550 4400 50  0001 C CNN
	4    3550 4400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U34
U 5 1 5EF2B385
P 4800 3550
F 0 "U34" H 4800 3867 50  0000 C CNN
F 1 "SN74LV14APW" H 4800 3776 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 4800 3550 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74lv14a.pdf" H 4800 3550 50  0001 C CNN
	5    4800 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R167
U 1 1 5EF33330
P 2650 4250
F 0 "R167" H 2750 4500 50  0000 R CNN
F 1 "100k" H 2750 4600 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2580 4250 50  0001 C CNN
F 3 "~" H 2650 4250 50  0001 C CNN
	1    2650 4250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R170
U 1 1 5EF3333C
P 3100 4400
F 0 "R170" V 3200 4400 50  0000 C CNN
F 1 "10k" V 3300 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3030 4400 50  0001 C CNN
F 3 "~" H 3100 4400 50  0001 C CNN
	1    3100 4400
	0    1    1    0   
$EndComp
$Comp
L Device:C C36
U 1 1 5EF33342
P 2950 4250
F 0 "C36" H 3065 4296 50  0000 L CNN
F 1 "220n" H 3065 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2988 4100 50  0001 C CNN
F 3 "~" H 2950 4250 50  0001 C CNN
	1    2950 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4400 2950 4400
Connection ~ 2950 4400
Wire Wire Line
	2650 4400 2450 4400
Connection ~ 2650 4400
$Comp
L Switch:SW_SPDT SW3
U 1 1 5EF35857
P 4450 1750
F 0 "SW3" H 4500 2000 50  0000 C CNN
F 1 "OS102011MS2QN1" H 4250 2100 50  0000 C CNN
F 2 "Button_Switch_THT:SW_Slide_1P2T_CK_OS102011MS2Q" H 4450 1750 50  0001 C CNN
F 3 "~" H 4450 1750 50  0001 C CNN
	1    4450 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 1650 3850 1650
Connection ~ 3850 1650
Wire Wire Line
	3850 1650 3850 1750
Wire Wire Line
	4250 4400 3850 4400
$Comp
L power:VCC #PWR0220
U 1 1 5EF38BAF
P 2650 4100
F 0 "#PWR0220" H 2650 3950 50  0001 C CNN
F 1 "VCC" H 2667 4273 50  0000 C CNN
F 2 "" H 2650 4100 50  0001 C CNN
F 3 "" H 2650 4100 50  0001 C CNN
	1    2650 4100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0223
U 1 1 5EF39516
P 2950 4100
F 0 "#PWR0223" H 2950 3950 50  0001 C CNN
F 1 "VCC" H 2967 4273 50  0000 C CNN
F 2 "" H 2950 4100 50  0001 C CNN
F 3 "" H 2950 4100 50  0001 C CNN
	1    2950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1850 4250 4400
$Comp
L 74xx:74HC14 U34
U 6 1 5EF430CB
P 9450 2850
F 0 "U34" H 9450 3167 50  0000 C CNN
F 1 "SN74LV14APW" H 9450 3076 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 9450 2850 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74lv14a.pdf" H 9450 2850 50  0001 C CNN
	6    9450 2850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U34
U 7 1 5EF46B20
P 3050 6450
F 0 "U34" H 3280 6496 50  0000 L CNN
F 1 "SN74LV14APW" H 3280 6405 50  0000 L CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3050 6450 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74lv14a.pdf" H 3050 6450 50  0001 C CNN
	7    3050 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0226
U 1 1 5EF48330
P 3050 6950
F 0 "#PWR0226" H 3050 6700 50  0001 C CNN
F 1 "GND" H 3055 6777 50  0000 C CNN
F 2 "" H 3050 6950 50  0001 C CNN
F 3 "" H 3050 6950 50  0001 C CNN
	1    3050 6950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0225
U 1 1 5EF489A9
P 3050 5950
F 0 "#PWR0225" H 3050 5800 50  0001 C CNN
F 1 "VCC" H 3067 6123 50  0000 C CNN
F 2 "" H 3050 5950 50  0001 C CNN
F 3 "" H 3050 5950 50  0001 C CNN
	1    3050 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C38
U 1 1 5EF4DEE4
P 9000 1350
F 0 "C38" H 9118 1396 50  0000 L CNN
F 1 "100u" H 9118 1305 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 9038 1200 50  0001 C CNN
F 3 "~" H 9000 1350 50  0001 C CNN
	1    9000 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0232
U 1 1 5EF4E88F
P 9000 1500
F 0 "#PWR0232" H 9000 1250 50  0001 C CNN
F 1 "GND" H 9005 1327 50  0000 C CNN
F 2 "" H 9000 1500 50  0001 C CNN
F 3 "" H 9000 1500 50  0001 C CNN
	1    9000 1500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0231
U 1 1 5EF4ED4D
P 9000 1200
F 0 "#PWR0231" H 9000 1050 50  0001 C CNN
F 1 "VCC" H 9017 1373 50  0000 C CNN
F 2 "" H 9000 1200 50  0001 C CNN
F 3 "" H 9000 1200 50  0001 C CNN
	1    9000 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C37
U 1 1 5EF50873
P 2550 7150
F 0 "C37" H 2665 7196 50  0000 L CNN
F 1 "0.1u" H 2665 7105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2588 7000 50  0001 C CNN
F 3 "~" H 2550 7150 50  0001 C CNN
	1    2550 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0228
U 1 1 5EF50EFD
P 2550 7300
F 0 "#PWR0228" H 2550 7050 50  0001 C CNN
F 1 "GND" H 2555 7127 50  0000 C CNN
F 2 "" H 2550 7300 50  0001 C CNN
F 3 "" H 2550 7300 50  0001 C CNN
	1    2550 7300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0227
U 1 1 5EF5151C
P 2550 7000
F 0 "#PWR0227" H 2550 6850 50  0001 C CNN
F 1 "VCC" H 2567 7173 50  0000 C CNN
F 2 "" H 2550 7000 50  0001 C CNN
F 3 "" H 2550 7000 50  0001 C CNN
	1    2550 7000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5EF82079
P 9650 1200
F 0 "#FLG01" H 9650 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 9650 1373 50  0000 C CNN
F 2 "" H 9650 1200 50  0001 C CNN
F 3 "~" H 9650 1200 50  0001 C CNN
	1    9650 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0233
U 1 1 5EF830E9
P 9650 1200
F 0 "#PWR0233" H 9650 950 50  0001 C CNN
F 1 "GND" H 9655 1027 50  0000 C CNN
F 2 "" H 9650 1200 50  0001 C CNN
F 3 "" H 9650 1200 50  0001 C CNN
	1    9650 1200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0234
U 1 1 5EF8368B
P 10050 1200
F 0 "#PWR0234" H 10050 1050 50  0001 C CNN
F 1 "VCC" H 10067 1373 50  0000 C CNN
F 2 "" H 10050 1200 50  0001 C CNN
F 3 "" H 10050 1200 50  0001 C CNN
	1    10050 1200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5EF840F1
P 10050 1200
F 0 "#FLG02" H 10050 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 10050 1373 50  0000 C CNN
F 2 "" H 10050 1200 50  0001 C CNN
F 3 "~" H 10050 1200 50  0001 C CNN
	1    10050 1200
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5FB8F28D
P 2250 4400
F 0 "SW2" H 2250 4685 50  0000 C CNN
F 1 "STEP" H 2250 4594 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2250 4600 50  0001 C CNN
F 3 "~" H 2250 4600 50  0001 C CNN
	1    2250 4400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5FB8F94E
P 2200 3000
F 0 "SW1" H 2200 3285 50  0000 C CNN
F 1 "RESET" H 2200 3194 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 2200 3200 50  0001 C CNN
F 3 "~" H 2200 3200 50  0001 C CNN
	1    2200 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FBA3876
P 2000 3000
F 0 "#PWR0101" H 2000 2750 50  0001 C CNN
F 1 "GND" V 2005 2872 50  0000 R CNN
F 2 "" H 2000 3000 50  0001 C CNN
F 3 "" H 2000 3000 50  0001 C CNN
	1    2000 3000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FBA3DBF
P 2050 4400
F 0 "#PWR0106" H 2050 4150 50  0001 C CNN
F 1 "GND" V 2055 4272 50  0000 R CNN
F 2 "" H 2050 4400 50  0001 C CNN
F 3 "" H 2050 4400 50  0001 C CNN
	1    2050 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 3000 2850 3000
Connection ~ 2850 3000
$Comp
L power:VCC #PWR0107
U 1 1 5FBA8516
P 2650 2700
F 0 "#PWR0107" H 2650 2550 50  0001 C CNN
F 1 "VCC" H 2667 2873 50  0000 C CNN
F 2 "" H 2650 2700 50  0001 C CNN
F 3 "" H 2650 2700 50  0001 C CNN
	1    2650 2700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0124
U 1 1 5FBA8A47
P 2850 2700
F 0 "#PWR0124" H 2850 2550 50  0001 C CNN
F 1 "VCC" H 2867 2873 50  0000 C CNN
F 2 "" H 2850 2700 50  0001 C CNN
F 3 "" H 2850 2700 50  0001 C CNN
	1    2850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3000 2650 3000
Connection ~ 2650 3000
Text Notes 4550 1600 2    50   ~ 0
STEP/RUN
Text Notes 2300 3150 2    50   ~ 0
RESET
Text Notes 2350 4550 2    50   ~ 0
STEP
Wire Wire Line
	3850 3000 4400 3000
Text Label 4650 1750 0    50   ~ 0
src_clk
$Comp
L 74xx:74LS74 U30
U 1 1 600630E6
P 5750 1750
F 0 "U30" H 6100 1500 50  0000 C CNN
F 1 "74HC74PW" H 6050 1400 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5750 1750 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1648944.pdf" H 5750 1750 50  0001 C CNN
	1    5750 1750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U30
U 2 1 60063DFC
P 9900 4000
F 0 "U30" H 9900 4481 50  0000 C CNN
F 1 "74HC74PW" H 9900 4390 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 9900 4000 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1648944.pdf" H 9900 4000 50  0001 C CNN
	2    9900 4000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS74 U30
U 3 1 60064BD9
P 4150 6450
F 0 "U30" H 4380 6496 50  0000 L CNN
F 1 "74HC74PW" H 4380 6405 50  0000 L CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 4150 6450 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1648944.pdf" H 4150 6450 50  0001 C CNN
	3    4150 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1750 4650 1750
Wire Wire Line
	5100 3000 5750 3000
Wire Wire Line
	5750 2050 5750 3000
Connection ~ 5750 3000
Wire Wire Line
	5750 3000 6200 3000
Wire Wire Line
	6350 1850 6050 1850
Wire Wire Line
	6350 1650 6200 1650
$Comp
L 74xGxx:74AHC1G86 U31
U 1 1 600784E2
P 5750 1000
F 0 "U31" H 5725 733 50  0000 C CNN
F 1 "SN74AHC1G86DBVR" H 5725 824 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5750 1000 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/sn74ahc1g86.pdf" H 5750 1000 50  0001 C CNN
	1    5750 1000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 1650 5450 1000
Wire Wire Line
	5450 1000 5500 1000
Wire Wire Line
	6050 1050 6200 1050
Wire Wire Line
	6200 1050 6200 1650
Connection ~ 6200 1650
Wire Wire Line
	6200 1650 6050 1650
$Comp
L power:GND #PWR059
U 1 1 60081EC3
P 4150 6850
F 0 "#PWR059" H 4150 6600 50  0001 C CNN
F 1 "GND" H 4155 6677 50  0000 C CNN
F 2 "" H 4150 6850 50  0001 C CNN
F 3 "" H 4150 6850 50  0001 C CNN
	1    4150 6850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR058
U 1 1 60082465
P 4150 6050
F 0 "#PWR058" H 4150 5900 50  0001 C CNN
F 1 "VCC" H 4167 6223 50  0000 C CNN
F 2 "" H 4150 6050 50  0001 C CNN
F 3 "" H 4150 6050 50  0001 C CNN
	1    4150 6050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR083
U 1 1 60083746
P 9150 2850
F 0 "#PWR083" H 9150 2700 50  0001 C CNN
F 1 "VCC" H 9167 3023 50  0000 C CNN
F 2 "" H 9150 2850 50  0001 C CNN
F 3 "" H 9150 2850 50  0001 C CNN
	1    9150 2850
	0    -1   -1   0   
$EndComp
NoConn ~ 9750 2850
$Comp
L power:VCC #PWR091
U 1 1 60084C73
P 9900 4300
F 0 "#PWR091" H 9900 4150 50  0001 C CNN
F 1 "VCC" H 9917 4473 50  0000 C CNN
F 2 "" H 9900 4300 50  0001 C CNN
F 3 "" H 9900 4300 50  0001 C CNN
	1    9900 4300
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR084
U 1 1 600858E5
P 9600 3900
F 0 "#PWR084" H 9600 3750 50  0001 C CNN
F 1 "VCC" V 9617 4073 50  0000 C CNN
F 2 "" H 9600 3900 50  0001 C CNN
F 3 "" H 9600 3900 50  0001 C CNN
	1    9600 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR085
U 1 1 60086003
P 9600 4000
F 0 "#PWR085" H 9600 3850 50  0001 C CNN
F 1 "VCC" V 9617 4173 50  0000 C CNN
F 2 "" H 9600 4000 50  0001 C CNN
F 3 "" H 9600 4000 50  0001 C CNN
	1    9600 4000
	0    -1   -1   0   
$EndComp
$Comp
L power:VCC #PWR090
U 1 1 600862D3
P 9900 3700
F 0 "#PWR090" H 9900 3550 50  0001 C CNN
F 1 "VCC" V 9917 3873 50  0000 C CNN
F 2 "" H 9900 3700 50  0001 C CNN
F 3 "" H 9900 3700 50  0001 C CNN
	1    9900 3700
	0    -1   -1   0   
$EndComp
NoConn ~ 10200 3900
NoConn ~ 10200 4100
Wire Wire Line
	4500 3550 4400 3550
Wire Wire Line
	4400 3550 4400 3000
Connection ~ 4400 3000
Wire Wire Line
	4400 3000 4500 3000
Text HLabel 6200 3550 2    50   Output ~ 0
~ext_rst
Wire Wire Line
	6200 3550 5100 3550
$Comp
L Device:R R1
U 1 1 6008B9D9
P 6500 1650
F 0 "R1" V 6293 1650 50  0000 C CNN
F 1 "22" V 6384 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6430 1650 50  0001 C CNN
F 3 "~" H 6500 1650 50  0001 C CNN
	1    6500 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 6008C291
P 6500 1850
F 0 "R2" V 6293 1850 50  0000 C CNN
F 1 "22" V 6384 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6430 1850 50  0001 C CNN
F 3 "~" H 6500 1850 50  0001 C CNN
	1    6500 1850
	0    -1   -1   0   
$EndComp
Text Notes 5100 3700 0    50   ~ 0
separate reset signals to prevent possible interference
$Comp
L Device:C C1
U 1 1 60090D7B
P 3900 7200
F 0 "C1" H 4015 7246 50  0000 L CNN
F 1 "0.1u" H 4015 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3938 7050 50  0001 C CNN
F 3 "~" H 3900 7200 50  0001 C CNN
	1    3900 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 60090D81
P 3900 7350
F 0 "#PWR041" H 3900 7100 50  0001 C CNN
F 1 "GND" H 3905 7177 50  0000 C CNN
F 2 "" H 3900 7350 50  0001 C CNN
F 3 "" H 3900 7350 50  0001 C CNN
	1    3900 7350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR040
U 1 1 60090D87
P 3900 7050
F 0 "#PWR040" H 3900 6900 50  0001 C CNN
F 1 "VCC" H 3917 7223 50  0000 C CNN
F 2 "" H 3900 7050 50  0001 C CNN
F 3 "" H 3900 7050 50  0001 C CNN
	1    3900 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60091D1F
P 5100 1000
F 0 "C2" H 5215 1046 50  0000 L CNN
F 1 "0.1u" H 5215 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5138 850 50  0001 C CNN
F 3 "~" H 5100 1000 50  0001 C CNN
	1    5100 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR077
U 1 1 60091D25
P 5100 1150
F 0 "#PWR077" H 5100 900 50  0001 C CNN
F 1 "GND" H 5105 977 50  0000 C CNN
F 2 "" H 5100 1150 50  0001 C CNN
F 3 "" H 5100 1150 50  0001 C CNN
	1    5100 1150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR076
U 1 1 60091D2B
P 5100 850
F 0 "#PWR076" H 5100 700 50  0001 C CNN
F 1 "VCC" H 5117 1023 50  0000 C CNN
F 2 "" H 5100 850 50  0001 C CNN
F 3 "" H 5100 850 50  0001 C CNN
	1    5100 850 
	1    0    0    -1  
$EndComp
Text HLabel 6650 950  2    50   Input ~ 0
mem_rdy
Wire Wire Line
	6650 950  6450 950 
$Comp
L power:VCC #PWR082
U 1 1 6009337F
P 5750 1450
F 0 "#PWR082" H 5750 1300 50  0001 C CNN
F 1 "VCC" H 5767 1623 50  0000 C CNN
F 2 "" H 5750 1450 50  0001 C CNN
F 3 "" H 5750 1450 50  0001 C CNN
	1    5750 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 600B21B7
P 6450 800
F 0 "R3" H 6700 750 50  0000 R CNN
F 1 "10k" H 6700 850 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6380 800 50  0001 C CNN
F 3 "~" H 6450 800 50  0001 C CNN
	1    6450 800 
	-1   0    0    1   
$EndComp
Connection ~ 6450 950 
Wire Wire Line
	6450 950  6050 950 
$Comp
L power:VCC #PWR08
U 1 1 600B2FB1
P 6450 650
F 0 "#PWR08" H 6450 500 50  0001 C CNN
F 1 "VCC" H 6550 750 50  0000 C CNN
F 2 "" H 6450 650 50  0001 C CNN
F 3 "" H 6450 650 50  0001 C CNN
	1    6450 650 
	1    0    0    -1  
$EndComp
$EndSCHEMATC
