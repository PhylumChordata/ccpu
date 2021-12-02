EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 3
Title "Stack pointer"
Date "2021-12-01"
Rev "1"
Comp "Licensed under the TAPR Open Hardware License (www.tapr.org/OHL)"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74xx:74LS193 U?
U 1 1 61ABB64C
P 4600 1800
AR Path="/61ABB64C" Ref="U?"  Part="1" 
AR Path="/61AB7A95/61ABB64C" Ref="U3"  Part="1" 
AR Path="/61AE30E6/61ABB64C" Ref="U?"  Part="1" 
AR Path="/61AE3972/61ABB64C" Ref="U7"  Part="1" 
F 0 "U7" H 5100 1250 50  0000 C CNN
F 1 "SN74HC193PWR" H 5100 1100 50  0000 C CNN
F 2 "" H 4600 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls193.pdf" H 4600 1800 50  0001 C CNN
	1    4600 1800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS193 U?
U 1 1 61ABB652
P 4600 4300
AR Path="/61ABB652" Ref="U?"  Part="1" 
AR Path="/61AB7A95/61ABB652" Ref="U4"  Part="1" 
AR Path="/61AE30E6/61ABB652" Ref="U?"  Part="1" 
AR Path="/61AE3972/61ABB652" Ref="U8"  Part="1" 
F 0 "U8" H 5100 3750 50  0000 C CNN
F 1 "SN74HC193PWR" H 5100 3600 50  0000 C CNN
F 2 "" H 4600 4300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74ls193.pdf" H 4600 4300 50  0001 C CNN
	1    4600 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ABB658
P 4600 5100
AR Path="/61ABB658" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61ABB658" Ref="#PWR024"  Part="1" 
AR Path="/61AE30E6/61ABB658" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61ABB658" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 4600 4850 50  0001 C CNN
F 1 "GND" H 4605 4927 50  0000 C CNN
F 2 "" H 4600 5100 50  0001 C CNN
F 3 "" H 4600 5100 50  0001 C CNN
	1    4600 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ABB65E
P 4600 2600
AR Path="/61ABB65E" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61ABB65E" Ref="#PWR022"  Part="1" 
AR Path="/61AE30E6/61ABB65E" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61ABB65E" Ref="#PWR046"  Part="1" 
F 0 "#PWR046" H 4600 2350 50  0001 C CNN
F 1 "GND" H 4605 2427 50  0000 C CNN
F 2 "" H 4600 2600 50  0001 C CNN
F 3 "" H 4600 2600 50  0001 C CNN
	1    4600 2600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61ABB664
P 4600 1100
AR Path="/61ABB664" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61ABB664" Ref="#PWR021"  Part="1" 
AR Path="/61AE30E6/61ABB664" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61ABB664" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 4600 950 50  0001 C CNN
F 1 "VCC" H 4615 1273 50  0000 C CNN
F 2 "" H 4600 1100 50  0001 C CNN
F 3 "" H 4600 1100 50  0001 C CNN
	1    4600 1100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61ABB66A
P 4600 3600
AR Path="/61ABB66A" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61ABB66A" Ref="#PWR023"  Part="1" 
AR Path="/61AE30E6/61ABB66A" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61ABB66A" Ref="#PWR047"  Part="1" 
F 0 "#PWR047" H 4600 3450 50  0001 C CNN
F 1 "VCC" H 4615 3773 50  0000 C CNN
F 2 "" H 4600 3600 50  0001 C CNN
F 3 "" H 4600 3600 50  0001 C CNN
	1    4600 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1900 5450 1900
Wire Wire Line
	5450 1900 5450 2900
Wire Wire Line
	5450 2900 3750 2900
Wire Wire Line
	3750 2900 3750 4600
Wire Wire Line
	3750 4600 4100 4600
Wire Wire Line
	4100 4700 3650 4700
Wire Wire Line
	3650 4700 3650 2800
Wire Wire Line
	3650 2800 5350 2800
Wire Wire Line
	5350 2800 5350 2100
Wire Wire Line
	5350 2100 5100 2100
NoConn ~ 5100 4400
NoConn ~ 5100 4600
Text Label 4100 1400 2    50   ~ 0
d0
Text Label 4100 1500 2    50   ~ 0
d1
Text Label 4100 1600 2    50   ~ 0
d2
Text Label 4100 1700 2    50   ~ 0
d3
Text Label 4100 3900 2    50   ~ 0
d4
Text Label 4100 4000 2    50   ~ 0
d5
Text Label 4100 4100 2    50   ~ 0
d6
Text Label 4100 4200 2    50   ~ 0
d7
Text Label 5400 1900 2    50   ~ 0
~carry
Text Label 5350 2100 2    50   ~ 0
~borrow
Text HLabel 1050 1200 0    50   BiDi ~ 0
d[0..7]
Entry Wire Line
	3800 1400 3900 1500
Entry Wire Line
	3800 1300 3900 1400
Entry Wire Line
	3800 1500 3900 1600
Entry Wire Line
	3800 1600 3900 1700
Entry Wire Line
	3800 3800 3900 3900
Entry Wire Line
	3800 3900 3900 4000
Entry Wire Line
	3800 4000 3900 4100
Entry Wire Line
	3800 4100 3900 4200
Wire Wire Line
	3900 4200 4100 4200
Wire Wire Line
	4100 4100 3900 4100
Wire Wire Line
	3900 4000 4100 4000
Wire Wire Line
	4100 3900 3900 3900
Wire Wire Line
	4100 1700 3900 1700
Wire Wire Line
	4100 1600 3900 1600
Wire Wire Line
	3900 1500 4100 1500
Wire Wire Line
	4100 1400 3900 1400
Wire Bus Line
	1050 1200 3800 1200
$Comp
L 74xx:74HC244 U5
U 1 1 61ABFADE
P 8000 1850
AR Path="/61AB7A95/61ABFADE" Ref="U5"  Part="1" 
AR Path="/61AE30E6/61ABFADE" Ref="U?"  Part="1" 
AR Path="/61AE3972/61ABFADE" Ref="U9"  Part="1" 
F 0 "U9" H 8450 1300 50  0000 C CNN
F 1 "74HC244" H 8550 1150 50  0000 C CNN
F 2 "" H 8000 1850 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 8000 1850 50  0001 C CNN
	1    8000 1850
	1    0    0    -1  
$EndComp
Text Label 5100 1400 0    50   ~ 0
c0
Text Label 5100 1500 0    50   ~ 0
c1
Text Label 5100 1600 0    50   ~ 0
c2
Text Label 5100 1700 0    50   ~ 0
c3
Text Label 5100 3900 0    50   ~ 0
c4
Text Label 5100 4000 0    50   ~ 0
c5
Text Label 5100 4100 0    50   ~ 0
c6
Text Label 5100 4200 0    50   ~ 0
c7
Entry Wire Line
	8750 1350 8850 1450
Entry Wire Line
	8750 1450 8850 1550
Entry Wire Line
	8750 1550 8850 1650
Entry Wire Line
	8750 1650 8850 1750
Entry Wire Line
	8750 1750 8850 1850
Entry Wire Line
	8750 1850 8850 1950
Entry Wire Line
	8750 1950 8850 2050
Entry Wire Line
	8750 2050 8850 2150
Wire Bus Line
	8850 700  3800 700 
Wire Bus Line
	3800 700  3800 1200
Connection ~ 3800 1200
Wire Wire Line
	8750 1350 8500 1350
Wire Wire Line
	8500 1450 8750 1450
Wire Wire Line
	8750 1550 8500 1550
Wire Wire Line
	8500 1650 8750 1650
Wire Wire Line
	8750 1750 8500 1750
Wire Wire Line
	8500 1850 8750 1850
Wire Wire Line
	8750 1950 8500 1950
Wire Wire Line
	8500 2050 8750 2050
Text Label 8500 1350 0    50   ~ 0
d0
Text Label 8500 1450 0    50   ~ 0
d1
Text Label 8500 1550 0    50   ~ 0
d2
Text Label 8500 1650 0    50   ~ 0
d3
Text Label 8500 1750 0    50   ~ 0
d4
Text Label 8500 1850 0    50   ~ 0
d5
Text Label 8500 1950 0    50   ~ 0
d6
Text Label 8500 2050 0    50   ~ 0
d7
Text Label 7500 1350 2    50   ~ 0
c0
Text Label 7500 1450 2    50   ~ 0
c1
Text Label 7500 1550 2    50   ~ 0
c2
Text Label 7500 1650 2    50   ~ 0
c3
Text Label 7500 1750 2    50   ~ 0
c4
Text Label 7500 1850 2    50   ~ 0
c5
Text Label 7500 1950 2    50   ~ 0
c6
Text Label 7500 2050 2    50   ~ 0
c7
$Comp
L power:GND #PWR?
U 1 1 61AC7EBD
P 8000 2650
AR Path="/61AC7EBD" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61AC7EBD" Ref="#PWR038"  Part="1" 
AR Path="/61AE30E6/61AC7EBD" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61AC7EBD" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 8000 2400 50  0001 C CNN
F 1 "GND" H 8005 2477 50  0000 C CNN
F 2 "" H 8000 2650 50  0001 C CNN
F 3 "" H 8000 2650 50  0001 C CNN
	1    8000 2650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61AC8D70
P 8000 1050
AR Path="/61AC8D70" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61AC8D70" Ref="#PWR037"  Part="1" 
AR Path="/61AE30E6/61AC8D70" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61AC8D70" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 8000 900 50  0001 C CNN
F 1 "VCC" H 8015 1223 50  0000 C CNN
F 2 "" H 8000 1050 50  0001 C CNN
F 3 "" H 8000 1050 50  0001 C CNN
	1    8000 1050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC244 U6
U 1 1 61ACAA16
P 8000 4200
AR Path="/61AB7A95/61ACAA16" Ref="U6"  Part="1" 
AR Path="/61AE30E6/61ACAA16" Ref="U?"  Part="1" 
AR Path="/61AE3972/61ACAA16" Ref="U10"  Part="1" 
F 0 "U10" H 8450 3650 50  0000 C CNN
F 1 "74HC244" H 8550 3500 50  0000 C CNN
F 2 "" H 8000 4200 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 8000 4200 50  0001 C CNN
	1    8000 4200
	1    0    0    -1  
$EndComp
Text Label 7500 3700 2    50   ~ 0
c0
Text Label 7500 3800 2    50   ~ 0
c1
Text Label 7500 3900 2    50   ~ 0
c2
Text Label 7500 4000 2    50   ~ 0
c3
Text Label 7500 4100 2    50   ~ 0
c4
Text Label 7500 4200 2    50   ~ 0
c5
Text Label 7500 4300 2    50   ~ 0
c6
Text Label 7500 4400 2    50   ~ 0
c7
$Comp
L power:GND #PWR?
U 1 1 61ACAA24
P 8000 5000
AR Path="/61ACAA24" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61ACAA24" Ref="#PWR040"  Part="1" 
AR Path="/61AE30E6/61ACAA24" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61ACAA24" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 8000 4750 50  0001 C CNN
F 1 "GND" H 8005 4827 50  0000 C CNN
F 2 "" H 8000 5000 50  0001 C CNN
F 3 "" H 8000 5000 50  0001 C CNN
	1    8000 5000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61ACAA2A
P 8000 3400
AR Path="/61ACAA2A" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61ACAA2A" Ref="#PWR039"  Part="1" 
AR Path="/61AE30E6/61ACAA2A" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61ACAA2A" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 8000 3250 50  0001 C CNN
F 1 "VCC" H 8015 3573 50  0000 C CNN
F 2 "" H 8000 3400 50  0001 C CNN
F 3 "" H 8000 3400 50  0001 C CNN
	1    8000 3400
	1    0    0    -1  
$EndComp
Text HLabel 9300 3350 2    50   Output ~ 0
ia[11..18]
Entry Wire Line
	8750 3700 8850 3800
Entry Wire Line
	8750 3800 8850 3900
Entry Wire Line
	8750 3900 8850 4000
Entry Wire Line
	8750 4000 8850 4100
Entry Wire Line
	8750 4100 8850 4200
Entry Wire Line
	8750 4200 8850 4300
Entry Wire Line
	8750 4300 8850 4400
Entry Wire Line
	8750 4400 8850 4500
Wire Wire Line
	8500 3700 8750 3700
Wire Wire Line
	8750 3800 8500 3800
Wire Wire Line
	8500 3900 8750 3900
Wire Wire Line
	8750 4000 8500 4000
Wire Wire Line
	8500 4100 8750 4100
Wire Wire Line
	8750 4200 8500 4200
Wire Wire Line
	8500 4300 8750 4300
Wire Wire Line
	8750 4400 8500 4400
Text Label 8650 3700 2    50   ~ 0
ia11
Text Label 8650 3800 2    50   ~ 0
ia12
Text Label 8650 3900 2    50   ~ 0
ia13
Text Label 8650 4000 2    50   ~ 0
ia14
Text Label 8650 4100 2    50   ~ 0
ia15
Text Label 8650 4200 2    50   ~ 0
ia16
Text Label 8650 4300 2    50   ~ 0
ia17
Text Label 8650 4400 2    50   ~ 0
ia18
Wire Bus Line
	8850 3350 9300 3350
Text HLabel 1050 1500 0    50   Input ~ 0
~load
Text HLabel 1050 1650 0    50   Input ~ 0
up
Text HLabel 1050 1800 0    50   Input ~ 0
down
Text HLabel 1050 1950 0    50   Input ~ 0
clr
Wire Wire Line
	4100 1900 3300 1900
Wire Wire Line
	3300 1900 3300 4400
Wire Wire Line
	3300 4400 4100 4400
Wire Wire Line
	1050 1500 3300 1500
Wire Wire Line
	3300 1500 3300 1900
Connection ~ 3300 1900
Wire Wire Line
	4100 2100 3200 2100
Wire Wire Line
	3200 2100 3200 1650
Wire Wire Line
	3200 1650 1050 1650
Wire Wire Line
	1050 1800 3050 1800
Wire Wire Line
	3050 1800 3050 2200
Wire Wire Line
	3050 2200 4100 2200
Wire Wire Line
	4100 4800 3200 4800
Wire Wire Line
	3200 4800 3200 2300
Wire Wire Line
	3200 2300 4100 2300
Wire Wire Line
	1050 1950 2900 1950
Wire Wire Line
	2900 1950 2900 2300
Wire Wire Line
	2900 2300 3200 2300
Connection ~ 3200 2300
Text Label 2850 1500 0    50   ~ 0
~load
Text Label 2850 1650 0    50   ~ 0
up
Text Label 2850 1800 0    50   ~ 0
down
Text Label 2800 1950 0    50   ~ 0
clr
Text HLabel 1000 3050 0    50   Input ~ 0
~oe_d
Text HLabel 1000 3150 0    50   Input ~ 0
~oe_ia
Wire Wire Line
	7500 2250 7500 2350
Wire Wire Line
	1000 3050 7500 3050
Wire Wire Line
	7500 3050 7500 2350
Connection ~ 7500 2350
Wire Wire Line
	7500 4700 7500 4650
Wire Wire Line
	1000 3150 7200 3150
Wire Wire Line
	7200 3150 7200 4650
Wire Wire Line
	7200 4650 7500 4650
Connection ~ 7500 4650
Wire Wire Line
	7500 4650 7500 4600
Text Label 1200 3050 0    50   ~ 0
~oe_d
Text Label 1200 3150 0    50   ~ 0
~oe_ia
$Comp
L Device:C C1
U 1 1 61B2CAB7
P 5900 2300
AR Path="/61AB7A95/61B2CAB7" Ref="C1"  Part="1" 
AR Path="/61AE3972/61B2CAB7" Ref="C5"  Part="1" 
F 0 "C5" H 6015 2346 50  0000 L CNN
F 1 "0.1" H 6015 2255 50  0000 L CNN
F 2 "" H 5938 2150 50  0001 C CNN
F 3 "~" H 5900 2300 50  0001 C CNN
	1    5900 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61B2D622
P 5900 2450
AR Path="/61B2D622" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61B2D622" Ref="#PWR034"  Part="1" 
AR Path="/61AE30E6/61B2D622" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61B2D622" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 5900 2200 50  0001 C CNN
F 1 "GND" H 5905 2277 50  0000 C CNN
F 2 "" H 5900 2450 50  0001 C CNN
F 3 "" H 5900 2450 50  0001 C CNN
	1    5900 2450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61B2DBBC
P 5900 2150
AR Path="/61B2DBBC" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61B2DBBC" Ref="#PWR033"  Part="1" 
AR Path="/61AE30E6/61B2DBBC" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61B2DBBC" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 5900 2000 50  0001 C CNN
F 1 "VCC" H 5915 2323 50  0000 C CNN
F 2 "" H 5900 2150 50  0001 C CNN
F 3 "" H 5900 2150 50  0001 C CNN
	1    5900 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 61B2F09D
P 9150 2300
AR Path="/61AB7A95/61B2F09D" Ref="C3"  Part="1" 
AR Path="/61AE3972/61B2F09D" Ref="C7"  Part="1" 
F 0 "C7" H 9265 2346 50  0000 L CNN
F 1 "0.1" H 9265 2255 50  0000 L CNN
F 2 "" H 9188 2150 50  0001 C CNN
F 3 "~" H 9150 2300 50  0001 C CNN
	1    9150 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61B2F0A3
P 9150 2450
AR Path="/61B2F0A3" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61B2F0A3" Ref="#PWR042"  Part="1" 
AR Path="/61AE30E6/61B2F0A3" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61B2F0A3" Ref="#PWR066"  Part="1" 
F 0 "#PWR066" H 9150 2200 50  0001 C CNN
F 1 "GND" H 9155 2277 50  0000 C CNN
F 2 "" H 9150 2450 50  0001 C CNN
F 3 "" H 9150 2450 50  0001 C CNN
	1    9150 2450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61B2F0A9
P 9150 2150
AR Path="/61B2F0A9" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61B2F0A9" Ref="#PWR041"  Part="1" 
AR Path="/61AE30E6/61B2F0A9" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61B2F0A9" Ref="#PWR065"  Part="1" 
F 0 "#PWR065" H 9150 2000 50  0001 C CNN
F 1 "VCC" H 9165 2323 50  0000 C CNN
F 2 "" H 9150 2150 50  0001 C CNN
F 3 "" H 9150 2150 50  0001 C CNN
	1    9150 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 61B30EB9
P 5950 4950
AR Path="/61AB7A95/61B30EB9" Ref="C2"  Part="1" 
AR Path="/61AE3972/61B30EB9" Ref="C6"  Part="1" 
F 0 "C6" H 6065 4996 50  0000 L CNN
F 1 "0.1" H 6065 4905 50  0000 L CNN
F 2 "" H 5988 4800 50  0001 C CNN
F 3 "~" H 5950 4950 50  0001 C CNN
	1    5950 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61B30EBF
P 5950 5100
AR Path="/61B30EBF" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61B30EBF" Ref="#PWR036"  Part="1" 
AR Path="/61AE30E6/61B30EBF" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61B30EBF" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 5950 4850 50  0001 C CNN
F 1 "GND" H 5955 4927 50  0000 C CNN
F 2 "" H 5950 5100 50  0001 C CNN
F 3 "" H 5950 5100 50  0001 C CNN
	1    5950 5100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61B30EC5
P 5950 4800
AR Path="/61B30EC5" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61B30EC5" Ref="#PWR035"  Part="1" 
AR Path="/61AE30E6/61B30EC5" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61B30EC5" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 5950 4650 50  0001 C CNN
F 1 "VCC" H 5965 4973 50  0000 C CNN
F 2 "" H 5950 4800 50  0001 C CNN
F 3 "" H 5950 4800 50  0001 C CNN
	1    5950 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 61B33839
P 9200 4950
AR Path="/61AB7A95/61B33839" Ref="C4"  Part="1" 
AR Path="/61AE3972/61B33839" Ref="C8"  Part="1" 
F 0 "C8" H 9315 4996 50  0000 L CNN
F 1 "0.1" H 9315 4905 50  0000 L CNN
F 2 "" H 9238 4800 50  0001 C CNN
F 3 "~" H 9200 4950 50  0001 C CNN
	1    9200 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61B3383F
P 9200 5100
AR Path="/61B3383F" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61B3383F" Ref="#PWR044"  Part="1" 
AR Path="/61AE30E6/61B3383F" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61B3383F" Ref="#PWR068"  Part="1" 
F 0 "#PWR068" H 9200 4850 50  0001 C CNN
F 1 "GND" H 9205 4927 50  0000 C CNN
F 2 "" H 9200 5100 50  0001 C CNN
F 3 "" H 9200 5100 50  0001 C CNN
	1    9200 5100
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61B33845
P 9200 4800
AR Path="/61B33845" Ref="#PWR?"  Part="1" 
AR Path="/61AB7A95/61B33845" Ref="#PWR043"  Part="1" 
AR Path="/61AE30E6/61B33845" Ref="#PWR?"  Part="1" 
AR Path="/61AE3972/61B33845" Ref="#PWR067"  Part="1" 
F 0 "#PWR067" H 9200 4650 50  0001 C CNN
F 1 "VCC" H 9215 4973 50  0000 C CNN
F 2 "" H 9200 4800 50  0001 C CNN
F 3 "" H 9200 4800 50  0001 C CNN
	1    9200 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 61B35202
P 5400 6100
AR Path="/61AB7A95/61B35202" Ref="D1"  Part="1" 
AR Path="/61AE3972/61B35202" Ref="D9"  Part="1" 
F 0 "D9" H 4550 6000 50  0000 C CNN
F 1 "LED" H 4550 6100 50  0000 C CNN
F 2 "" H 5400 6100 50  0001 C CNN
F 3 "~" H 5400 6100 50  0001 C CNN
	1    5400 6100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 61B35FAA
P 5700 6100
AR Path="/61AB7A95/61B35FAA" Ref="R1"  Part="1" 
AR Path="/61AE3972/61B35FAA" Ref="R9"  Part="1" 
F 0 "R9" V 5600 6900 50  0000 C CNN
F 1 "R" V 5700 6900 50  0000 C CNN
F 2 "" V 5630 6100 50  0001 C CNN
F 3 "~" H 5700 6100 50  0001 C CNN
	1    5700 6100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 61B367D9
P 5850 6100
AR Path="/61AB7A95/61B367D9" Ref="#PWR025"  Part="1" 
AR Path="/61AE3972/61B367D9" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 5850 5850 50  0001 C CNN
F 1 "GND" V 5855 5972 50  0000 R CNN
F 2 "" H 5850 6100 50  0001 C CNN
F 3 "" H 5850 6100 50  0001 C CNN
	1    5850 6100
	0    -1   -1   0   
$EndComp
Text Label 5250 6100 2    50   ~ 0
c0
$Comp
L Device:LED D2
U 1 1 61B38641
P 5400 6300
AR Path="/61AB7A95/61B38641" Ref="D2"  Part="1" 
AR Path="/61AE3972/61B38641" Ref="D10"  Part="1" 
F 0 "D10" H 4550 6200 50  0000 C CNN
F 1 "LED" H 4550 6300 50  0000 C CNN
F 2 "" H 5400 6300 50  0001 C CNN
F 3 "~" H 5400 6300 50  0001 C CNN
	1    5400 6300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 61B38647
P 5700 6300
AR Path="/61AB7A95/61B38647" Ref="R2"  Part="1" 
AR Path="/61AE3972/61B38647" Ref="R10"  Part="1" 
F 0 "R10" V 5600 7100 50  0000 C CNN
F 1 "R" V 5700 7100 50  0000 C CNN
F 2 "" V 5630 6300 50  0001 C CNN
F 3 "~" H 5700 6300 50  0001 C CNN
	1    5700 6300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR026
U 1 1 61B3864D
P 5850 6300
AR Path="/61AB7A95/61B3864D" Ref="#PWR026"  Part="1" 
AR Path="/61AE3972/61B3864D" Ref="#PWR050"  Part="1" 
F 0 "#PWR050" H 5850 6050 50  0001 C CNN
F 1 "GND" V 5855 6172 50  0000 R CNN
F 2 "" H 5850 6300 50  0001 C CNN
F 3 "" H 5850 6300 50  0001 C CNN
	1    5850 6300
	0    -1   -1   0   
$EndComp
Text Label 5250 6300 2    50   ~ 0
c1
$Comp
L Device:LED D3
U 1 1 61B3B16B
P 5400 6500
AR Path="/61AB7A95/61B3B16B" Ref="D3"  Part="1" 
AR Path="/61AE3972/61B3B16B" Ref="D11"  Part="1" 
F 0 "D11" H 4550 6400 50  0000 C CNN
F 1 "LED" H 4550 6500 50  0000 C CNN
F 2 "" H 5400 6500 50  0001 C CNN
F 3 "~" H 5400 6500 50  0001 C CNN
	1    5400 6500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 61B3B171
P 5700 6500
AR Path="/61AB7A95/61B3B171" Ref="R3"  Part="1" 
AR Path="/61AE3972/61B3B171" Ref="R11"  Part="1" 
F 0 "R11" V 5600 7300 50  0000 C CNN
F 1 "R" V 5700 7300 50  0000 C CNN
F 2 "" V 5630 6500 50  0001 C CNN
F 3 "~" H 5700 6500 50  0001 C CNN
	1    5700 6500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR027
U 1 1 61B3B177
P 5850 6500
AR Path="/61AB7A95/61B3B177" Ref="#PWR027"  Part="1" 
AR Path="/61AE3972/61B3B177" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 5850 6250 50  0001 C CNN
F 1 "GND" V 5855 6372 50  0000 R CNN
F 2 "" H 5850 6500 50  0001 C CNN
F 3 "" H 5850 6500 50  0001 C CNN
	1    5850 6500
	0    -1   -1   0   
$EndComp
Text Label 5250 6500 2    50   ~ 0
c2
$Comp
L Device:LED D4
U 1 1 61B3B17E
P 5400 6700
AR Path="/61AB7A95/61B3B17E" Ref="D4"  Part="1" 
AR Path="/61AE3972/61B3B17E" Ref="D12"  Part="1" 
F 0 "D12" H 4550 6600 50  0000 C CNN
F 1 "LED" H 4550 6700 50  0000 C CNN
F 2 "" H 5400 6700 50  0001 C CNN
F 3 "~" H 5400 6700 50  0001 C CNN
	1    5400 6700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 61B3B184
P 5700 6700
AR Path="/61AB7A95/61B3B184" Ref="R4"  Part="1" 
AR Path="/61AE3972/61B3B184" Ref="R12"  Part="1" 
F 0 "R12" V 5600 7500 50  0000 C CNN
F 1 "R" V 5700 7500 50  0000 C CNN
F 2 "" V 5630 6700 50  0001 C CNN
F 3 "~" H 5700 6700 50  0001 C CNN
	1    5700 6700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 61B3B18A
P 5850 6700
AR Path="/61AB7A95/61B3B18A" Ref="#PWR028"  Part="1" 
AR Path="/61AE3972/61B3B18A" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 5850 6450 50  0001 C CNN
F 1 "GND" V 5855 6572 50  0000 R CNN
F 2 "" H 5850 6700 50  0001 C CNN
F 3 "" H 5850 6700 50  0001 C CNN
	1    5850 6700
	0    -1   -1   0   
$EndComp
Text Label 5250 6700 2    50   ~ 0
c3
$Comp
L Device:LED D5
U 1 1 61B411A6
P 5400 6900
AR Path="/61AB7A95/61B411A6" Ref="D5"  Part="1" 
AR Path="/61AE3972/61B411A6" Ref="D13"  Part="1" 
F 0 "D13" H 4550 6800 50  0000 C CNN
F 1 "LED" H 4550 6900 50  0000 C CNN
F 2 "" H 5400 6900 50  0001 C CNN
F 3 "~" H 5400 6900 50  0001 C CNN
	1    5400 6900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 61B411AC
P 5700 6900
AR Path="/61AB7A95/61B411AC" Ref="R5"  Part="1" 
AR Path="/61AE3972/61B411AC" Ref="R13"  Part="1" 
F 0 "R13" V 5600 7700 50  0000 C CNN
F 1 "R" V 5700 7700 50  0000 C CNN
F 2 "" V 5630 6900 50  0001 C CNN
F 3 "~" H 5700 6900 50  0001 C CNN
	1    5700 6900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR029
U 1 1 61B411B2
P 5850 6900
AR Path="/61AB7A95/61B411B2" Ref="#PWR029"  Part="1" 
AR Path="/61AE3972/61B411B2" Ref="#PWR053"  Part="1" 
F 0 "#PWR053" H 5850 6650 50  0001 C CNN
F 1 "GND" V 5855 6772 50  0000 R CNN
F 2 "" H 5850 6900 50  0001 C CNN
F 3 "" H 5850 6900 50  0001 C CNN
	1    5850 6900
	0    -1   -1   0   
$EndComp
Text Label 5250 6900 2    50   ~ 0
c4
$Comp
L Device:LED D6
U 1 1 61B411B9
P 5400 7100
AR Path="/61AB7A95/61B411B9" Ref="D6"  Part="1" 
AR Path="/61AE3972/61B411B9" Ref="D14"  Part="1" 
F 0 "D14" H 4550 7000 50  0000 C CNN
F 1 "LED" H 4550 7100 50  0000 C CNN
F 2 "" H 5400 7100 50  0001 C CNN
F 3 "~" H 5400 7100 50  0001 C CNN
	1    5400 7100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 61B411BF
P 5700 7100
AR Path="/61AB7A95/61B411BF" Ref="R6"  Part="1" 
AR Path="/61AE3972/61B411BF" Ref="R14"  Part="1" 
F 0 "R14" V 5600 7900 50  0000 C CNN
F 1 "R" V 5700 7900 50  0000 C CNN
F 2 "" V 5630 7100 50  0001 C CNN
F 3 "~" H 5700 7100 50  0001 C CNN
	1    5700 7100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR030
U 1 1 61B411C5
P 5850 7100
AR Path="/61AB7A95/61B411C5" Ref="#PWR030"  Part="1" 
AR Path="/61AE3972/61B411C5" Ref="#PWR054"  Part="1" 
F 0 "#PWR054" H 5850 6850 50  0001 C CNN
F 1 "GND" V 5855 6972 50  0000 R CNN
F 2 "" H 5850 7100 50  0001 C CNN
F 3 "" H 5850 7100 50  0001 C CNN
	1    5850 7100
	0    -1   -1   0   
$EndComp
Text Label 5250 7100 2    50   ~ 0
c5
$Comp
L Device:LED D7
U 1 1 61B411CC
P 5400 7300
AR Path="/61AB7A95/61B411CC" Ref="D7"  Part="1" 
AR Path="/61AE3972/61B411CC" Ref="D15"  Part="1" 
F 0 "D15" H 4550 7200 50  0000 C CNN
F 1 "LED" H 4550 7300 50  0000 C CNN
F 2 "" H 5400 7300 50  0001 C CNN
F 3 "~" H 5400 7300 50  0001 C CNN
	1    5400 7300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 61B411D2
P 5700 7300
AR Path="/61AB7A95/61B411D2" Ref="R7"  Part="1" 
AR Path="/61AE3972/61B411D2" Ref="R15"  Part="1" 
F 0 "R15" V 5600 8100 50  0000 C CNN
F 1 "R" V 5700 8100 50  0000 C CNN
F 2 "" V 5630 7300 50  0001 C CNN
F 3 "~" H 5700 7300 50  0001 C CNN
	1    5700 7300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 61B411D8
P 5850 7300
AR Path="/61AB7A95/61B411D8" Ref="#PWR031"  Part="1" 
AR Path="/61AE3972/61B411D8" Ref="#PWR055"  Part="1" 
F 0 "#PWR055" H 5850 7050 50  0001 C CNN
F 1 "GND" V 5855 7172 50  0000 R CNN
F 2 "" H 5850 7300 50  0001 C CNN
F 3 "" H 5850 7300 50  0001 C CNN
	1    5850 7300
	0    -1   -1   0   
$EndComp
Text Label 5250 7300 2    50   ~ 0
c6
$Comp
L Device:LED D8
U 1 1 61B411DF
P 5400 7500
AR Path="/61AB7A95/61B411DF" Ref="D8"  Part="1" 
AR Path="/61AE3972/61B411DF" Ref="D16"  Part="1" 
F 0 "D16" H 4550 7400 50  0000 C CNN
F 1 "LED" H 4550 7500 50  0000 C CNN
F 2 "" H 5400 7500 50  0001 C CNN
F 3 "~" H 5400 7500 50  0001 C CNN
	1    5400 7500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 61B411E5
P 5700 7500
AR Path="/61AB7A95/61B411E5" Ref="R8"  Part="1" 
AR Path="/61AE3972/61B411E5" Ref="R16"  Part="1" 
F 0 "R16" V 5600 8300 50  0000 C CNN
F 1 "R" V 5700 8300 50  0000 C CNN
F 2 "" V 5630 7500 50  0001 C CNN
F 3 "~" H 5700 7500 50  0001 C CNN
	1    5700 7500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR032
U 1 1 61B411EB
P 5850 7500
AR Path="/61AB7A95/61B411EB" Ref="#PWR032"  Part="1" 
AR Path="/61AE3972/61B411EB" Ref="#PWR056"  Part="1" 
F 0 "#PWR056" H 5850 7250 50  0001 C CNN
F 1 "GND" V 5855 7372 50  0000 R CNN
F 2 "" H 5850 7500 50  0001 C CNN
F 3 "" H 5850 7500 50  0001 C CNN
	1    5850 7500
	0    -1   -1   0   
$EndComp
Text Label 5250 7500 2    50   ~ 0
c7
Wire Bus Line
	3800 1200 3800 4100
Wire Bus Line
	8850 700  8850 2150
Wire Bus Line
	8850 3350 8850 4500
$EndSCHEMATC
