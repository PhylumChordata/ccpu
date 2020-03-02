EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 10
Title "Pointer pair"
Date "2019-12-28"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1400 1500 0    50   Input ~ 0
clk
Text HLabel 1400 1600 0    50   Input ~ 0
~rst
Text HLabel 1400 1800 0    50   Input ~ 0
di[0..7]
Text HLabel 1400 2250 0    50   Input ~ 0
~oe_dh
Text HLabel 1400 2400 0    50   Input ~ 0
~oe_dl
Text HLabel 1400 2550 0    50   Input ~ 0
cnt
Text HLabel 1400 2700 0    50   Input ~ 0
~we_h
Text HLabel 1400 2850 0    50   Input ~ 0
~we_l
Text HLabel 1400 3000 0    50   Input ~ 0
selector
Text HLabel 8100 1650 2    50   3State ~ 0
addr_out[0..15]
Text HLabel 8100 1750 2    50   3State ~ 0
data_out[0..7]
$Sheet
S 6450 1450 1100 1200
U 5E066B0D
F0 "reg_a" 50
F1 "pointer_reg.sch" 50
F2 "clk" I L 6450 1500 50
F3 "~rst" I L 6450 1600 50
F4 "di[0..7]" I L 6450 1800 50
F5 "~oe_addr" I L 6450 1950 50
F6 "cnt" I L 6450 2100 50
F7 "~we_l" I L 6450 2250 50
F8 "~we_h" I L 6450 2350 50
F9 "~oe_dh" I L 6450 2450 50
F10 "~oe_dl" I L 6450 2550 50
F11 "a_out[0..15]" I R 7550 1650 50
F12 "d_out[0..7]" I R 7550 1750 50
$EndSheet
$Sheet
S 6450 4600 1100 1200
U 5E5C90D9
F0 "reg_b" 50
F1 "pointer_reg.sch" 50
F2 "clk" I L 6450 4650 50
F3 "~rst" I L 6450 4750 50
F4 "di[0..7]" I L 6450 4950 50
F5 "~oe_addr" I L 6450 5100 50
F6 "cnt" I L 6450 5250 50
F7 "~we_l" I L 6450 5400 50
F8 "~we_h" I L 6450 5500 50
F9 "~oe_dh" I L 6450 5600 50
F10 "~oe_dl" I L 6450 5700 50
F11 "a_out[0..15]" I R 7550 4800 50
F12 "d_out[0..7]" I R 7550 4900 50
$EndSheet
Wire Wire Line
	1400 3000 1750 3000
Text Label 4150 3850 2    50   ~ 0
~a_oe_addr
Text Label 4150 4550 2    50   ~ 0
~b_oe_addr
Text Label 3600 6400 2    50   ~ 0
~selector
$Comp
L 74xx:74LS32 U7
U 1 1 5E5E4A1D
P 5450 5350
F 0 "U7" H 5450 5675 50  0000 C CNN
F 1 "74ACT32" H 5450 5584 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5450 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5450 5350 50  0001 C CNN
	1    5450 5350
	1    0    0    -1
$EndComp
$Comp
L 74xx:74LS32 U7
U 2 1 5E5EAD7A
P 5450 5900
F 0 "U7" H 5450 6225 50  0000 C CNN
F 1 "74ACT32" H 5450 6134 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5450 5900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5450 5900 50  0001 C CNN
	2    5450 5900
	1    0    0    -1
$EndComp
$Comp
L 74xx:74LS32 U7
U 3 1 5E5ED11D
P 5450 6450
F 0 "U7" H 5450 6775 50  0000 C CNN
F 1 "74ACT32" H 5450 6684 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5450 6450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5450 6450 50  0001 C CNN
	3    5450 6450
	1    0    0    -1
$EndComp
$Comp
L 74xx:74LS32 U7
U 4 1 5E5EFA15
P 5450 7050
F 0 "U7" H 5450 7375 50  0000 C CNN
F 1 "74ACT32" H 5450 7284 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5450 7050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5450 7050 50  0001 C CNN
	4    5450 7050
	1    0    0    -1
$EndComp
$Comp
L 74xx:74LS32 U8
U 5 1 5E5F17C1
P 9000 4450
F 0 "U8" H 9230 4496 50  0000 L CNN
F 1 "74ACT32" H 9230 4405 50  0000 L CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 9000 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 9000 4450 50  0001 C CNN
	5    9000 4450
	1    0    0    -1
$EndComp
Wire Wire Line
	5750 5350 6200 5350
Wire Wire Line
	6200 5350 6200 5400
Wire Wire Line
	6200 5400 6450 5400
Wire Wire Line
	5750 5900 6050 5900
Wire Wire Line
	6050 5900 6050 5500
Wire Wire Line
	6050 5500 6450 5500
Wire Wire Line
	5750 6450 6100 6450
Wire Wire Line
	6100 6450 6100 5600
Wire Wire Line
	6100 5600 6450 5600
Wire Wire Line
	5750 7050 6150 7050
Wire Wire Line
	6150 7050 6150 5700
Wire Wire Line
	6150 5700 6450 5700
Wire Wire Line
	4800 7150 5150 7150
Wire Wire Line
	5150 6550 4800 6550
Connection ~ 4800 6550
Wire Wire Line
	4800 6550 4800 7150
Wire Wire Line
	5150 5450 4800 5450
Wire Wire Line
	4800 5450 4800 6000
Wire Wire Line
	5150 6000 4800 6000
Connection ~ 4800 6000
$Comp
L 74xx:74LS32 U8
U 1 1 5E6244D0
P 5500 2250
F 0 "U8" H 5500 2575 50  0000 C CNN
F 1 "74ACT32" H 5500 2484 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5500 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5500 2250 50  0001 C CNN
	1    5500 2250
	1    0    0    -1
$EndComp
$Comp
L 74xx:74LS32 U8
U 2 1 5E6244D6
P 5500 2800
F 0 "U8" H 5500 3125 50  0000 C CNN
F 1 "74ACT32" H 5500 3034 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5500 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5500 2800 50  0001 C CNN
	2    5500 2800
	1    0    0    -1
$EndComp
$Comp
L 74xx:74LS32 U8
U 3 1 5E6244DC
P 5500 3350
F 0 "U8" H 5500 3675 50  0000 C CNN
F 1 "74ACT32" H 5500 3584 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5500 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5500 3350 50  0001 C CNN
	3    5500 3350
	1    0    0    -1
$EndComp
$Comp
L 74xx:74LS32 U8
U 4 1 5E6244E2
P 5500 3950
F 0 "U8" H 5500 4275 50  0000 C CNN
F 1 "74ACT32" H 5500 4184 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5500 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 5500 3950 50  0001 C CNN
	4    5500 3950
	1    0    0    -1
$EndComp
Wire Wire Line
	4850 4050 5200 4050
Wire Wire Line
	5200 3450 4850 3450
Wire Wire Line
	5200 2350 4850 2350
Wire Wire Line
	5200 2900 4850 2900
Wire Wire Line
	4800 6000 4800 6550
Wire Wire Line
	4700 6400 4700 4950
Wire Wire Line
	4700 4950 4850 4950
Wire Wire Line
	4850 4950 4850 4050
Connection ~ 4850 2900
Wire Wire Line
	4850 2900 4850 2350
Connection ~ 4850 3450
Wire Wire Line
	4850 3450 4850 2900
Connection ~ 4850 4050
Wire Wire Line
	4800 7150 1750 7150
Connection ~ 4800 7150
Wire Wire Line
	6450 5100 5800 5100
Wire Wire Line
	5800 5100 5800 4550
Wire Wire Line
	5650 1950 5650 1850
Wire Wire Line
	5650 1850 4450 1850
Wire Wire Line
	4450 1850 4450 3850
Wire Wire Line
	5150 5250 5100 5250
Wire Wire Line
	5100 5250 5100 2150
Wire Wire Line
	5100 2150 5200 2150
Wire Wire Line
	5150 5800 5050 5800
Wire Wire Line
	5050 5800 5050 2700
Wire Wire Line
	5050 2700 5200 2700
Wire Wire Line
	5150 6350 5000 6350
Wire Wire Line
	5000 6350 5000 3250
Wire Wire Line
	5000 3250 5200 3250
Wire Wire Line
	5150 6950 4950 6950
Wire Wire Line
	4950 6950 4950 3850
Wire Wire Line
	4950 3850 5200 3850
Wire Wire Line
	5800 2800 6000 2800
Wire Wire Line
	6000 2800 6000 2350
Wire Wire Line
	5800 3350 6050 3350
Wire Wire Line
	6050 3350 6050 2450
Wire Wire Line
	5800 3950 6100 3950
Wire Wire Line
	6100 3950 6100 2550
Wire Wire Line
	1400 2400 4650 2400
Wire Wire Line
	4650 2400 4650 3850
Wire Wire Line
	4650 3850 4950 3850
Connection ~ 4950 3850
Wire Wire Line
	5000 3250 4700 3250
Wire Wire Line
	4700 3250 4700 2250
Wire Wire Line
	1400 2250 4700 2250
Connection ~ 5000 3250
Wire Wire Line
	1400 2700 5050 2700
Connection ~ 5050 2700
Wire Wire Line
	1400 2850 3850 2850
Wire Wire Line
	3850 2850 3850 2150
Wire Wire Line
	3850 2150 5100 2150
Connection ~ 5100 2150
$Comp
L power:GND #PWR047
U 1 1 5E651ABF
P 9000 4950
F 0 "#PWR047" H 9000 4700 50  0001 C CNN
F 1 "GND" H 9005 4777 50  0000 C CNN
F 2 "" H 9000 4950 50  0001 C CNN
F 3 "" H 9000 4950 50  0001 C CNN
	1    9000 4950
	1    0    0    -1
$EndComp
$Comp
L power:VCC #PWR046
U 1 1 5E651F92
P 9000 3950
F 0 "#PWR046" H 9000 3800 50  0001 C CNN
F 1 "VCC" H 9017 4123 50  0000 C CNN
F 2 "" H 9000 3950 50  0001 C CNN
F 3 "" H 9000 3950 50  0001 C CNN
	1    9000 3950
	1    0    0    -1
$EndComp
$Comp
L 74xx:74LS32 U7
U 5 1 5E6558E3
P 8250 4450
F 0 "U7" H 8480 4496 50  0000 L CNN
F 1 "74ACT32" H 8480 4405 50  0000 L CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 8250 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8250 4450 50  0001 C CNN
	5    8250 4450
	1    0    0    -1
$EndComp
$Comp
L power:GND #PWR045
U 1 1 5E6558E9
P 8250 4950
F 0 "#PWR045" H 8250 4700 50  0001 C CNN
F 1 "GND" H 8255 4777 50  0000 C CNN
F 2 "" H 8250 4950 50  0001 C CNN
F 3 "" H 8250 4950 50  0001 C CNN
	1    8250 4950
	1    0    0    -1
$EndComp
$Comp
L power:VCC #PWR044
U 1 1 5E6558EF
P 8250 3950
F 0 "#PWR044" H 8250 3800 50  0001 C CNN
F 1 "VCC" H 8267 4123 50  0000 C CNN
F 2 "" H 8250 3950 50  0001 C CNN
F 3 "" H 8250 3950 50  0001 C CNN
	1    8250 3950
	1    0    0    -1
$EndComp
$Comp
L 74xx:74LS08 U6
U 1 1 5E658B19
P 4000 3150
F 0 "U6" H 4000 3475 50  0000 C CNN
F 1 "74ACT08" H 4000 3384 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 4000 3150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4000 3150 50  0001 C CNN
	1    4000 3150
	1    0    0    -1
$EndComp
Wire Wire Line
	1400 2550 3550 2550
Wire Wire Line
	3550 2550 3550 3050
Wire Wire Line
	3550 3050 3700 3050
Wire Wire Line
	4300 3150 4350 3150
Wire Wire Line
	4350 3150 4350 1700
Wire Wire Line
	4350 1700 5900 1700
Wire Wire Line
	5900 1700 5900 2100
Wire Wire Line
	4850 4050 4850 3450
Wire Wire Line
	4850 3450 3700 3450
Wire Wire Line
	3700 3450 3700 3250
$Comp
L 74xx:74LS08 U6
U 2 1 5E66DDE5
P 4050 5150
F 0 "U6" H 4050 5475 50  0000 C CNN
F 1 "74ACT08" H 4050 5384 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 4050 5150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4050 5150 50  0001 C CNN
	2    4050 5150
	1    0    0    -1
$EndComp
Wire Wire Line
	3550 3050 3550 5050
Wire Wire Line
	3550 5050 3750 5050
Connection ~ 3550 3050
Wire Wire Line
	4350 5150 4600 5150
Wire Wire Line
	4600 5150 4600 4750
Wire Wire Line
	4600 4750 5700 4750
Wire Wire Line
	5700 4750 5700 5250
Wire Wire Line
	5700 5250 6450 5250
Wire Wire Line
	3750 5250 3750 6000
Wire Wire Line
	3750 6000 4800 6000
Wire Wire Line
	6100 2550 6450 2550
Wire Wire Line
	6050 2450 6450 2450
Wire Wire Line
	6000 2350 6450 2350
Wire Wire Line
	5800 2250 6450 2250
Wire Wire Line
	5900 2100 6450 2100
Wire Wire Line
	5650 1950 6450 1950
Wire Bus Line
	6450 4950 6200 4950
Wire Bus Line
	6200 4950 6200 1800
Wire Bus Line
	6200 1800 6450 1800
Wire Bus Line
	8100 1650 7800 1650
Wire Bus Line
	7550 4800 7800 4800
Wire Bus Line
	7800 4800 7800 1650
Connection ~ 7800 1650
Wire Bus Line
	7800 1650 7550 1650
Wire Bus Line
	7550 1750 7900 1750
Wire Bus Line
	7550 4900 7900 4900
Wire Bus Line
	7900 4900 7900 1750
Connection ~ 7900 1750
Wire Bus Line
	7900 1750 8100 1750
Wire Bus Line
	1400 1800 6200 1800
Connection ~ 6200 1800
Wire Wire Line
	1400 1600 6300 1600
Wire Wire Line
	1400 1500 6400 1500
Wire Wire Line
	6450 4750 6300 4750
Wire Wire Line
	6300 4750 6300 1600
Connection ~ 6300 1600
Wire Wire Line
	6300 1600 6450 1600
Wire Wire Line
	6450 4650 6400 4650
Wire Wire Line
	6400 4650 6400 1500
Connection ~ 6400 1500
Wire Wire Line
	6400 1500 6450 1500
$Comp
L Device:C C6
U 1 1 5E6C2B4E
P 9600 2650
F 0 "C6" H 9650 2550 50  0000 L CNN
F 1 "0.1u" H 9650 2450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9638 2500 50  0001 C CNN
F 3 "~" H 9600 2650 50  0001 C CNN
	1    9600 2650
	1    0    0    -1
$EndComp
$Comp
L power:GND #PWR049
U 1 1 5E6CC7A3
P 9600 2800
F 0 "#PWR049" H 9600 2550 50  0001 C CNN
F 1 "GND" H 9605 2627 50  0000 C CNN
F 2 "" H 9600 2800 50  0001 C CNN
F 3 "" H 9600 2800 50  0001 C CNN
	1    9600 2800
	1    0    0    -1
$EndComp
$Comp
L power:VCC #PWR048
U 1 1 5E6CD3AE
P 9600 2500
F 0 "#PWR048" H 9600 2350 50  0001 C CNN
F 1 "VCC" H 9617 2673 50  0000 C CNN
F 2 "" H 9600 2500 50  0001 C CNN
F 3 "" H 9600 2500 50  0001 C CNN
	1    9600 2500
	1    0    0    -1
$EndComp
$Comp
L Device:LED D13
U 1 1 5E6D3003
P 3900 6600
F 0 "D13" H 3950 6700 50  0000 C CNN
F 1 "KP-2012EC" H 3950 6800 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 3900 6600 50  0001 C CNN
F 3 "~" H 3900 6600 50  0001 C CNN
	1    3900 6600
	-1   0    0    1
$EndComp
$Comp
L Device:R R29
U 1 1 5E6D51CF
P 4200 6600
F 0 "R29" V 4300 6550 50  0000 C CNN
F 1 "620" V 4400 6550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4130 6600 50  0001 C CNN
F 3 "~" H 4200 6600 50  0001 C CNN
	1    4200 6600
	0    1    1    0
$EndComp
$Comp
L power:VCC #PWR043
U 1 1 5E6D64D5
P 3750 6600
F 0 "#PWR043" H 3750 6450 50  0001 C CNN
F 1 "VCC" V 3768 6727 50  0000 L CNN
F 2 "" H 3750 6600 50  0001 C CNN
F 3 "" H 3750 6600 50  0001 C CNN
	1    3750 6600
	0    -1   -1   0
$EndComp
Wire Wire Line
	3000 6400 3100 6400
Wire Wire Line
	4350 6600 4400 6600
Wire Wire Line
	4400 6600 4400 6400
Connection ~ 4400 6400
Wire Wire Line
	4400 6400 4700 6400
$Comp
L 74xx:74LS08 U6
U 5 1 5E6E224D
P 9750 4450
F 0 "U6" H 9980 4496 50  0000 L CNN
F 1 "74ACT08" H 9980 4405 50  0000 L CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 9750 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 9750 4450 50  0001 C CNN
	5    9750 4450
	1    0    0    -1
$EndComp
$Comp
L power:GND #PWR051
U 1 1 5E6E9084
P 9750 4950
F 0 "#PWR051" H 9750 4700 50  0001 C CNN
F 1 "GND" H 9755 4777 50  0000 C CNN
F 2 "" H 9750 4950 50  0001 C CNN
F 3 "" H 9750 4950 50  0001 C CNN
	1    9750 4950
	1    0    0    -1
$EndComp
$Comp
L power:VCC #PWR050
U 1 1 5E6E935B
P 9750 3950
F 0 "#PWR050" H 9750 3800 50  0001 C CNN
F 1 "VCC" H 9767 4123 50  0000 C CNN
F 2 "" H 9750 3950 50  0001 C CNN
F 3 "" H 9750 3950 50  0001 C CNN
	1    9750 3950
	1    0    0    -1
$EndComp
Text HLabel 1400 2100 0    50   Input ~ 0
addr_dp
$Comp
L 74xx:74HC86 U5
U 1 1 5EBBE71F
P 2700 6400
F 0 "U5" H 2700 6725 50  0000 C CNN
F 1 "74ACT86" H 2700 6634 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2700 6400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 2700 6400 50  0001 C CNN
	1    2700 6400
	1    0    0    -1
$EndComp
Wire Wire Line
	1750 3000 1750 3750
$Comp
L 74xx:74HC86 U5
U 2 1 5EBC1669
P 2650 3850
F 0 "U5" H 2650 4175 50  0000 C CNN
F 1 "74ACT86" H 2650 4084 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2650 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 2650 3850 50  0001 C CNN
	2    2650 3850
	1    0    0    -1
$EndComp
Wire Wire Line
	2400 6300 1750 6300
Connection ~ 1750 6300
Wire Wire Line
	1750 6300 1750 7150
$Comp
L power:VCC #PWR042
U 1 1 5EBCBCFF
P 2400 6500
F 0 "#PWR042" H 2400 6350 50  0001 C CNN
F 1 "VCC" V 2418 6627 50  0000 L CNN
F 2 "" H 2400 6500 50  0001 C CNN
F 3 "" H 2400 6500 50  0001 C CNN
	1    2400 6500
	0    -1   -1   0
$EndComp
$Comp
L 74xx:74HC86 U5
U 3 1 5EBCE12A
P 2650 4550
F 0 "U5" H 2650 4875 50  0000 C CNN
F 1 "74ACT86" H 2650 4784 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2650 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 2650 4550 50  0001 C CNN
	3    2650 4550
	1    0    0    -1
$EndComp
Wire Wire Line
	2950 3850 4450 3850
Wire Wire Line
	2950 4550 5800 4550
Wire Wire Line
	1400 2100 2100 2100
Wire Wire Line
	2100 2100 2100 3950
Wire Wire Line
	2100 4650 2350 4650
Wire Wire Line
	2350 3950 2100 3950
Connection ~ 2100 3950
Wire Wire Line
	2100 3950 2100 4650
Wire Wire Line
	2350 3750 1750 3750
Connection ~ 1750 3750
Wire Wire Line
	1750 3750 1750 6300
Wire Wire Line
	3100 6400 3100 5500
Wire Wire Line
	3100 5500 2250 5500
Wire Wire Line
	2250 5500 2250 4450
Wire Wire Line
	2250 4450 2350 4450
Connection ~ 3100 6400
Wire Wire Line
	3100 6400 4400 6400
$Comp
L 74xx:74HC86 U5
U 5 1 5EBF0254
P 10550 4450
F 0 "U5" H 10780 4496 50  0000 L CNN
F 1 "74ACT86" H 10780 4405 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10550 4450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC86" H 10550 4450 50  0001 C CNN
	5    10550 4450
	1    0    0    -1
$EndComp
$Comp
L power:GND #PWR053
U 1 1 5EBFF603
P 10550 4950
F 0 "#PWR053" H 10550 4700 50  0001 C CNN
F 1 "GND" H 10555 4777 50  0000 C CNN
F 2 "" H 10550 4950 50  0001 C CNN
F 3 "" H 10550 4950 50  0001 C CNN
	1    10550 4950
	1    0    0    -1
$EndComp
$Comp
L power:VCC #PWR052
U 1 1 5EBFFB61
P 10550 3950
F 0 "#PWR052" H 10550 3800 50  0001 C CNN
F 1 "VCC" H 10567 4123 50  0000 C CNN
F 2 "" H 10550 3950 50  0001 C CNN
F 3 "" H 10550 3950 50  0001 C CNN
	1    10550 3950
	1    0    0    -1
$EndComp
$Comp
L 74xx:74LS08 U6
U 3 1 5E396484
P 9900 950
F 0 "U6" H 9900 1275 50  0000 C CNN
F 1 "74ACT08" H 9900 1184 50  0000 C CNN
F 2 "" H 9900 950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 9900 950 50  0001 C CNN
	3    9900 950
	1    0    0    -1
$EndComp
$Comp
L 74xx:74LS08 U6
U 4 1 5E39E32D
P 9900 1500
F 0 "U6" H 9900 1825 50  0000 C CNN
F 1 "74ACT08" H 9900 1734 50  0000 C CNN
F 2 "" H 9900 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 9900 1500 50  0001 C CNN
	4    9900 1500
	1    0    0    -1
$EndComp
$Comp
L power:GND #PWR0125
U 1 1 5E3A0364
P 9600 850
F 0 "#PWR0125" H 9600 600 50  0001 C CNN
F 1 "GND" H 9605 677 50  0000 C CNN
F 2 "" H 9600 850 50  0001 C CNN
F 3 "" H 9600 850 50  0001 C CNN
	1    9600 850
	0    1    1    0
$EndComp
$Comp
L power:GND #PWR0130
U 1 1 5E3A1055
P 9600 1050
F 0 "#PWR0130" H 9600 800 50  0001 C CNN
F 1 "GND" H 9605 877 50  0000 C CNN
F 2 "" H 9600 1050 50  0001 C CNN
F 3 "" H 9600 1050 50  0001 C CNN
	1    9600 1050
	0    1    1    0
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 5E3A133D
P 9600 1400
F 0 "#PWR0131" H 9600 1150 50  0001 C CNN
F 1 "GND" H 9605 1227 50  0000 C CNN
F 2 "" H 9600 1400 50  0001 C CNN
F 3 "" H 9600 1400 50  0001 C CNN
	1    9600 1400
	0    1    1    0
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5E3A1801
P 9600 1600
F 0 "#PWR0132" H 9600 1350 50  0001 C CNN
F 1 "GND" H 9605 1427 50  0000 C CNN
F 2 "" H 9600 1600 50  0001 C CNN
F 3 "" H 9600 1600 50  0001 C CNN
	1    9600 1600
	0    1    1    0
$EndComp
NoConn ~ 10200 950
NoConn ~ 10200 1500
$Comp
L 74xx:74LS86 U5
U 4 1 5E3DCDDF
P 9900 2050
F 0 "U5" H 9900 2375 50  0000 C CNN
F 1 "74ACT86" H 9900 2284 50  0000 C CNN
F 2 "" H 9900 2050 50  0001 C CNN
F 3 "74xx/74ls86.pdf" H 9900 2050 50  0001 C CNN
	4    9900 2050
	1    0    0    -1
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3E1729
P 9600 2150
F 0 "#PWR?" H 9600 1900 50  0001 C CNN
F 1 "GND" H 9605 1977 50  0000 C CNN
F 2 "" H 9600 2150 50  0001 C CNN
F 3 "" H 9600 2150 50  0001 C CNN
	1    9600 2150
	0    1    1    0
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3E1AD3
P 9600 1950
F 0 "#PWR?" H 9600 1700 50  0001 C CNN
F 1 "GND" H 9605 1777 50  0000 C CNN
F 2 "" H 9600 1950 50  0001 C CNN
F 3 "" H 9600 1950 50  0001 C CNN
	1    9600 1950
	0    1    1    0
$EndComp
NoConn ~ 10200 2050
$EndSCHEMATC
