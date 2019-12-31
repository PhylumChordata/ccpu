EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 6
Title "CPU registers and memory module"
Date "2019-12-28"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 10150 1050 1250 1900
U 5E0666E8
F0 "pointer_pair" 50
F1 "pointer_pair.sch" 50
F2 "clk" I L 10150 1150 50 
F3 "~rst" I L 10150 1250 50 
F4 "di[0..7]" I L 10150 1500 50 
F5 "~oe_addr_ip" I L 10150 1800 50 
F6 "~oe_addr_dp" I L 10150 1900 50 
F7 "~oe_dh" I L 10150 2100 50 
F8 "~oe_dl" I L 10150 2200 50 
F9 "cnt" I L 10150 2800 50 
F10 "~we_h" I L 10150 2300 50 
F11 "~we_l" I L 10150 2400 50 
F12 "selector" I L 10150 2600 50 
F13 "addr_out[0..15]" I R 11400 1350 50 
F14 "data_out[0..7]" I R 11400 1450 50 
$EndSheet
Wire Bus Line
	10150 1500 9900 1500
Text Label 9900 1500 2    50   ~ 0
di[0..7]
Wire Bus Line
	11400 1450 11600 1450
Text Label 11600 1450 0    50   ~ 0
alu_b[0..7]
Wire Bus Line
	11400 1350 11600 1350
Text Label 11600 1350 0    50   ~ 0
a[0..15]
$Comp
L 74xx:74HCT273 U?
U 1 1 5E6ECBBA
P 5350 4200
F 0 "U?" H 5700 3650 50  0000 C CNN
F 1 "74AC273" H 5800 3550 50  0000 C CNN
F 2 "" H 5350 4200 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT273.pdf" H 5350 4200 50  0001 C CNN
	1    5350 4200
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC244 U?
U 1 1 5E6F3C0E
P 5350 1600
F 0 "U?" H 5700 1050 50  0000 C CNN
F 1 "74ACT244" H 5650 950 50  0000 C CNN
F 2 "" H 5350 1600 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT244.pdf" H 5350 1600 50  0001 C CNN
	1    5350 1600
	1    0    0    -1  
$EndComp
Text Notes 5400 4450 2    50   ~ 0
IR
Entry Wire Line
	6300 3700 6400 3600
Entry Wire Line
	6300 3800 6400 3700
Entry Wire Line
	6300 3900 6400 3800
Entry Wire Line
	6300 4000 6400 3900
Entry Wire Line
	6300 4100 6400 4000
Entry Wire Line
	6300 4200 6400 4100
Entry Wire Line
	6300 4300 6400 4200
Entry Wire Line
	6300 4400 6400 4300
Text Label 6400 4550 3    50   ~ 0
ir_out[0..7]
Wire Wire Line
	5850 3700 6300 3700
Wire Wire Line
	5850 3800 6300 3800
Wire Wire Line
	5850 3900 6300 3900
Wire Wire Line
	5850 4000 6300 4000
Wire Wire Line
	5850 4100 6300 4100
Wire Wire Line
	5850 4200 6300 4200
Wire Wire Line
	5850 4300 6300 4300
Wire Wire Line
	5850 4400 6300 4400
Text Label 6250 3700 2    50   ~ 0
ir_out0
Text Label 6250 3800 2    50   ~ 0
ir_out1
Text Label 6250 3900 2    50   ~ 0
ir_out2
Text Label 6250 4000 2    50   ~ 0
ir_out3
Text Label 6250 4100 2    50   ~ 0
ir_out4
Text Label 6250 4200 2    50   ~ 0
ir_out5
Text Label 6250 4300 2    50   ~ 0
ir_out6
Text Label 6250 4400 2    50   ~ 0
ir_out7
Entry Wire Line
	6400 5250 6500 5150
Entry Wire Line
	6400 5350 6500 5250
Entry Wire Line
	6400 5450 6500 5350
Entry Wire Line
	6400 5550 6500 5450
Entry Wire Line
	6400 5650 6500 5550
Entry Wire Line
	6400 5750 6500 5650
Entry Wire Line
	6400 5850 6500 5750
Entry Wire Line
	6400 5950 6500 5850
Text Label 6500 5150 0    50   ~ 0
ir_out0
Text Label 6500 5250 0    50   ~ 0
ir_out1
Text Label 6500 5350 0    50   ~ 0
ir_out2
Text Label 6500 5450 0    50   ~ 0
ir_out3
Text Label 6500 5550 0    50   ~ 0
ir_out4
Text Label 6500 5650 0    50   ~ 0
ir_out5
Text Label 6500 5750 0    50   ~ 0
ir_out6
Text Label 6500 5850 0    50   ~ 0
ir_out7
$Comp
L Device:LED D?
U 1 1 5E702470
P 6950 5150
F 0 "D?" H 6100 5150 50  0000 C CNN
F 1 "LED" H 6943 4986 50  0001 C CNN
F 2 "" H 6950 5150 50  0001 C CNN
F 3 "~" H 6950 5150 50  0001 C CNN
	1    6950 5150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E70339D
P 7250 5150
F 0 "R?" V 7250 5900 50  0000 C CNN
F 1 "LED" V 7250 6100 50  0000 C CNN
F 2 "" V 7180 5150 50  0001 C CNN
F 3 "~" H 7250 5150 50  0001 C CNN
	1    7250 5150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E703D3D
P 7400 5150
F 0 "#PWR?" H 7400 4900 50  0001 C CNN
F 1 "GND" V 7405 5022 50  0000 R CNN
F 2 "" H 7400 5150 50  0001 C CNN
F 3 "" H 7400 5150 50  0001 C CNN
	1    7400 5150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 5150 6500 5150
$Comp
L Device:LED D?
U 1 1 5E707A95
P 6950 5250
F 0 "D?" H 6100 5250 50  0000 C CNN
F 1 "LED" H 6943 5086 50  0001 C CNN
F 2 "" H 6950 5250 50  0001 C CNN
F 3 "~" H 6950 5250 50  0001 C CNN
	1    6950 5250
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E707A9B
P 7250 5250
F 0 "R?" V 7250 6000 50  0000 C CNN
F 1 "LED" V 7250 6200 50  0000 C CNN
F 2 "" V 7180 5250 50  0001 C CNN
F 3 "~" H 7250 5250 50  0001 C CNN
	1    7250 5250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E707AA1
P 7400 5250
F 0 "#PWR?" H 7400 5000 50  0001 C CNN
F 1 "GND" V 7405 5122 50  0000 R CNN
F 2 "" H 7400 5250 50  0001 C CNN
F 3 "" H 7400 5250 50  0001 C CNN
	1    7400 5250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 5250 6500 5250
$Comp
L Device:LED D?
U 1 1 5E70866C
P 6950 5350
F 0 "D?" H 6100 5350 50  0000 C CNN
F 1 "LED" H 6943 5186 50  0001 C CNN
F 2 "" H 6950 5350 50  0001 C CNN
F 3 "~" H 6950 5350 50  0001 C CNN
	1    6950 5350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E708672
P 7250 5350
F 0 "R?" V 7250 6100 50  0000 C CNN
F 1 "LED" V 7250 6300 50  0000 C CNN
F 2 "" V 7180 5350 50  0001 C CNN
F 3 "~" H 7250 5350 50  0001 C CNN
	1    7250 5350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E708678
P 7400 5350
F 0 "#PWR?" H 7400 5100 50  0001 C CNN
F 1 "GND" V 7405 5222 50  0000 R CNN
F 2 "" H 7400 5350 50  0001 C CNN
F 3 "" H 7400 5350 50  0001 C CNN
	1    7400 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 5350 6500 5350
$Comp
L Device:LED D?
U 1 1 5E708CE1
P 6950 5450
F 0 "D?" H 6100 5450 50  0000 C CNN
F 1 "LED" H 6943 5286 50  0001 C CNN
F 2 "" H 6950 5450 50  0001 C CNN
F 3 "~" H 6950 5450 50  0001 C CNN
	1    6950 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E708CE7
P 7250 5450
F 0 "R?" V 7250 6200 50  0000 C CNN
F 1 "LED" V 7250 6400 50  0000 C CNN
F 2 "" V 7180 5450 50  0001 C CNN
F 3 "~" H 7250 5450 50  0001 C CNN
	1    7250 5450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E708CED
P 7400 5450
F 0 "#PWR?" H 7400 5200 50  0001 C CNN
F 1 "GND" V 7405 5322 50  0000 R CNN
F 2 "" H 7400 5450 50  0001 C CNN
F 3 "" H 7400 5450 50  0001 C CNN
	1    7400 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 5450 6500 5450
$Comp
L Device:LED D?
U 1 1 5E708EF7
P 6950 5550
F 0 "D?" H 6100 5550 50  0000 C CNN
F 1 "LED" H 6943 5386 50  0001 C CNN
F 2 "" H 6950 5550 50  0001 C CNN
F 3 "~" H 6950 5550 50  0001 C CNN
	1    6950 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E708EFD
P 7250 5550
F 0 "R?" V 7250 6300 50  0000 C CNN
F 1 "LED" V 7250 6500 50  0000 C CNN
F 2 "" V 7180 5550 50  0001 C CNN
F 3 "~" H 7250 5550 50  0001 C CNN
	1    7250 5550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E708F03
P 7400 5550
F 0 "#PWR?" H 7400 5300 50  0001 C CNN
F 1 "GND" V 7405 5422 50  0000 R CNN
F 2 "" H 7400 5550 50  0001 C CNN
F 3 "" H 7400 5550 50  0001 C CNN
	1    7400 5550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 5550 6500 5550
$Comp
L Device:LED D?
U 1 1 5E709531
P 6950 5650
F 0 "D?" H 6100 5650 50  0000 C CNN
F 1 "LED" H 6943 5486 50  0001 C CNN
F 2 "" H 6950 5650 50  0001 C CNN
F 3 "~" H 6950 5650 50  0001 C CNN
	1    6950 5650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E709537
P 7250 5650
F 0 "R?" V 7250 6400 50  0000 C CNN
F 1 "LED" V 7250 6600 50  0000 C CNN
F 2 "" V 7180 5650 50  0001 C CNN
F 3 "~" H 7250 5650 50  0001 C CNN
	1    7250 5650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E70953D
P 7400 5650
F 0 "#PWR?" H 7400 5400 50  0001 C CNN
F 1 "GND" V 7405 5522 50  0000 R CNN
F 2 "" H 7400 5650 50  0001 C CNN
F 3 "" H 7400 5650 50  0001 C CNN
	1    7400 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 5650 6500 5650
$Comp
L Device:LED D?
U 1 1 5E709752
P 6950 5750
F 0 "D?" H 6100 5750 50  0000 C CNN
F 1 "LED" H 6943 5586 50  0001 C CNN
F 2 "" H 6950 5750 50  0001 C CNN
F 3 "~" H 6950 5750 50  0001 C CNN
	1    6950 5750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E709758
P 7250 5750
F 0 "R?" V 7250 6500 50  0000 C CNN
F 1 "LED" V 7250 6700 50  0000 C CNN
F 2 "" V 7180 5750 50  0001 C CNN
F 3 "~" H 7250 5750 50  0001 C CNN
	1    7250 5750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E70975E
P 7400 5750
F 0 "#PWR?" H 7400 5500 50  0001 C CNN
F 1 "GND" V 7405 5622 50  0000 R CNN
F 2 "" H 7400 5750 50  0001 C CNN
F 3 "" H 7400 5750 50  0001 C CNN
	1    7400 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 5750 6500 5750
$Comp
L Device:LED D?
U 1 1 5E709E9D
P 6950 5850
F 0 "D?" H 6100 5850 50  0000 C CNN
F 1 "LED" H 6943 5686 50  0001 C CNN
F 2 "" H 6950 5850 50  0001 C CNN
F 3 "~" H 6950 5850 50  0001 C CNN
	1    6950 5850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E709EA3
P 7250 5850
F 0 "R?" V 7250 6600 50  0000 C CNN
F 1 "LED" V 7250 6800 50  0000 C CNN
F 2 "" V 7180 5850 50  0001 C CNN
F 3 "~" H 7250 5850 50  0001 C CNN
	1    7250 5850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E709EA9
P 7400 5850
F 0 "#PWR?" H 7400 5600 50  0001 C CNN
F 1 "GND" V 7405 5722 50  0000 R CNN
F 2 "" H 7400 5850 50  0001 C CNN
F 3 "" H 7400 5850 50  0001 C CNN
	1    7400 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 5850 6500 5850
Text Notes 6900 6000 0    50   ~ 0
5 mA each
$Comp
L power:GND #PWR?
U 1 1 5E70A5F4
P 5350 5000
F 0 "#PWR?" H 5350 4750 50  0001 C CNN
F 1 "GND" H 5355 4827 50  0000 C CNN
F 2 "" H 5350 5000 50  0001 C CNN
F 3 "" H 5350 5000 50  0001 C CNN
	1    5350 5000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E70B39F
P 5350 3400
F 0 "#PWR?" H 5350 3250 50  0001 C CNN
F 1 "VCC" H 5367 3573 50  0000 C CNN
F 2 "" H 5350 3400 50  0001 C CNN
F 3 "" H 5350 3400 50  0001 C CNN
	1    5350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1150 9900 1150
Wire Wire Line
	10150 1250 9900 1250
Text Label 9900 1250 2    50   ~ 0
~rst
Text Label 9900 1150 2    50   ~ 0
~clk
Entry Wire Line
	4400 1200 4500 1100
Entry Wire Line
	4400 1300 4500 1200
Entry Wire Line
	4400 1400 4500 1300
Entry Wire Line
	4400 1500 4500 1400
Entry Wire Line
	4400 1600 4500 1500
Entry Wire Line
	4400 1700 4500 1600
Entry Wire Line
	4400 1800 4500 1700
Entry Wire Line
	4400 1900 4500 1800
Entry Wire Line
	4400 3800 4500 3700
Entry Wire Line
	4400 3900 4500 3800
Entry Wire Line
	4400 4000 4500 3900
Entry Wire Line
	4400 4100 4500 4000
Entry Wire Line
	4400 4200 4500 4100
Entry Wire Line
	4400 4300 4500 4200
Entry Wire Line
	4400 4400 4500 4300
Entry Wire Line
	4400 4500 4500 4400
Wire Wire Line
	4850 4400 4500 4400
Wire Wire Line
	4500 4300 4850 4300
Wire Wire Line
	4850 4200 4500 4200
Wire Wire Line
	4500 4100 4850 4100
Wire Wire Line
	4850 4000 4500 4000
Wire Wire Line
	4500 3900 4850 3900
Wire Wire Line
	4850 3800 4500 3800
Wire Wire Line
	4500 3700 4850 3700
Wire Wire Line
	4500 1100 4850 1100
Wire Wire Line
	4850 1200 4500 1200
Wire Wire Line
	4500 1300 4850 1300
Wire Wire Line
	4850 1400 4500 1400
Wire Wire Line
	4500 1500 4850 1500
Wire Wire Line
	4850 1600 4500 1600
Wire Wire Line
	4500 1700 4850 1700
Wire Wire Line
	4850 1800 4500 1800
Wire Wire Line
	4850 2000 4850 2050
Text Label 4400 3050 3    50   ~ 0
d[0..7]
Text Label 4500 1100 0    50   ~ 0
d0
Text Label 4500 1200 0    50   ~ 0
d1
Text Label 4500 1300 0    50   ~ 0
d2
Text Label 4500 1400 0    50   ~ 0
d3
Text Label 4500 1500 0    50   ~ 0
d4
Text Label 4500 1600 0    50   ~ 0
d5
Text Label 4500 1700 0    50   ~ 0
d6
Text Label 4500 1800 0    50   ~ 0
d7
Text Label 4500 3700 0    50   ~ 0
d0
Text Label 4500 3800 0    50   ~ 0
d1
Text Label 4500 3900 0    50   ~ 0
d2
Text Label 4500 4000 0    50   ~ 0
d3
Text Label 4500 4100 0    50   ~ 0
d4
Text Label 4500 4200 0    50   ~ 0
d5
Text Label 4500 4300 0    50   ~ 0
d6
Text Label 4500 4400 0    50   ~ 0
d7
Entry Wire Line
	6350 1100 6450 1000
Entry Wire Line
	6350 1200 6450 1100
Entry Wire Line
	6350 1300 6450 1200
Entry Wire Line
	6350 1400 6450 1300
Entry Wire Line
	6350 1500 6450 1400
Entry Wire Line
	6350 1600 6450 1500
Entry Wire Line
	6350 1700 6450 1600
Entry Wire Line
	6350 1800 6450 1700
Wire Wire Line
	6350 1800 6150 1800
Wire Wire Line
	6150 1700 6350 1700
Wire Wire Line
	6350 1600 6150 1600
Wire Wire Line
	6150 1500 6350 1500
Wire Wire Line
	6350 1400 6150 1400
Wire Wire Line
	6150 1300 6350 1300
Wire Wire Line
	6350 1200 6150 1200
Wire Wire Line
	6150 1100 6350 1100
Text Label 6450 900  0    50   ~ 0
di[0..7]
Text Label 6200 1100 0    50   ~ 0
di0
Text Label 6200 1200 0    50   ~ 0
di1
Text Label 6200 1300 0    50   ~ 0
di2
Text Label 6200 1400 0    50   ~ 0
di3
Text Label 6200 1500 0    50   ~ 0
di4
Text Label 6200 1600 0    50   ~ 0
di5
Text Label 6200 1700 0    50   ~ 0
di6
Text Label 6200 1800 0    50   ~ 0
di7
Wire Wire Line
	4850 2050 4650 2050
Wire Wire Line
	4650 2050 4650 2500
Connection ~ 4850 2050
Wire Wire Line
	4850 2050 4850 2100
Text Label 4650 2500 0    50   ~ 0
~d_to_di_oe
$Comp
L power:VCC #PWR?
U 1 1 5E72BF9A
P 5350 800
F 0 "#PWR?" H 5350 650 50  0001 C CNN
F 1 "VCC" H 5367 973 50  0000 C CNN
F 2 "" H 5350 800 50  0001 C CNN
F 3 "" H 5350 800 50  0001 C CNN
	1    5350 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E72C3A1
P 5350 2400
F 0 "#PWR?" H 5350 2150 50  0001 C CNN
F 1 "GND" H 5355 2227 50  0000 C CNN
F 2 "" H 5350 2400 50  0001 C CNN
F 3 "" H 5350 2400 50  0001 C CNN
	1    5350 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4700 4750 4700
Text Label 4750 4700 2    50   ~ 0
~rst
$Comp
L 74xx:74LS08 U?
U 1 1 5E72E562
P 4100 5400
F 0 "U?" H 4100 5725 50  0000 C CNN
F 1 "74LS08" H 4100 5634 50  0000 C CNN
F 2 "" H 4100 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4100 5400 50  0001 C CNN
	1    4100 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5400 4600 5400
Wire Wire Line
	4600 5400 4600 4600
Wire Wire Line
	4600 4600 4850 4600
Wire Wire Line
	3800 5300 3600 5300
Wire Wire Line
	3800 5500 3600 5500
Text Label 3600 5300 2    50   ~ 0
clk
Text Label 3600 5500 2    50   ~ 0
ir_we
$Sheet
S 10150 3300 1250 1300
U 5E73B7F6
F0 "gp_reg_a" 50
F1 "gp_reg.sch" 50
F2 "w_clk" I L 10150 3450 50 
F3 "~rst" I L 10150 3550 50 
F4 "~oea" I L 10150 3750 50 
F5 "~oeb" I L 10150 3850 50 
F6 "di[0..7]" I L 10150 4050 50 
F7 "doa[0..7]" I R 11400 3550 50 
F8 "dob[0..7]" I R 11400 4350 50 
$EndSheet
$Sheet
S 10150 4900 1250 1300
U 5E7CA397
F0 "gp_reg_b" 50
F1 "gp_reg.sch" 50
F2 "w_clk" I L 10150 5050 50 
F3 "~rst" I L 10150 5150 50 
F4 "~oea" I L 10150 5350 50 
F5 "~oeb" I L 10150 5450 50 
F6 "di[0..7]" I L 10150 5650 50 
F7 "doa[0..7]" I R 11400 5150 50 
F8 "dob[0..7]" I R 11400 5950 50 
$EndSheet
$Comp
L 74xx:74LS08 U?
U 2 1 5E7CF9EF
P 9150 3450
F 0 "U?" H 9150 3775 50  0000 C CNN
F 1 "74LS08" H 9150 3684 50  0000 C CNN
F 2 "" H 9150 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 9150 3450 50  0001 C CNN
	2    9150 3450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 3 1 5E7D6380
P 9150 5050
F 0 "U?" H 9150 5375 50  0000 C CNN
F 1 "74LS08" H 9150 5284 50  0000 C CNN
F 2 "" H 9150 5050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 9150 5050 50  0001 C CNN
	3    9150 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 3450 10150 3450
Wire Wire Line
	10150 5050 9450 5050
Text Label 8850 3350 2    50   ~ 0
~clk
Text Label 8850 3550 2    50   ~ 0
a_we
Wire Wire Line
	10150 3550 10000 3550
Text Label 10000 3550 2    50   ~ 0
~rst
Wire Wire Line
	10150 3750 10000 3750
Wire Wire Line
	10150 3850 10000 3850
Wire Bus Line
	10150 4050 10000 4050
Text Label 10000 4050 2    50   ~ 0
di[0..7]
Text Label 10000 3750 2    50   ~ 0
oe_a_d
$Comp
L power:GND #PWR?
U 1 1 5E7EB4E9
P 10000 3850
F 0 "#PWR?" H 10000 3600 50  0001 C CNN
F 1 "GND" V 10005 3722 50  0000 R CNN
F 2 "" H 10000 3850 50  0001 C CNN
F 3 "" H 10000 3850 50  0001 C CNN
	1    10000 3850
	0    1    1    0   
$EndComp
Text Notes 10600 3900 0    50   ~ 0
TODO\nremove extra chip
Wire Bus Line
	11400 3550 11600 3550
Text Label 11600 4350 0    50   ~ 0
alu_a[0..7]
Text Label 11600 3550 0    50   ~ 0
d[0..7]
Wire Bus Line
	11600 4350 11400 4350
Wire Bus Line
	11400 5150 11600 5150
Text Label 11600 5950 0    50   ~ 0
alu_b[0..7]
Text Label 11600 5150 0    50   ~ 0
d[0..7]
Wire Wire Line
	10150 5150 10000 5150
Text Label 10000 5150 2    50   ~ 0
~rst
Wire Wire Line
	10150 5350 10000 5350
Wire Wire Line
	10150 5450 10000 5450
Wire Bus Line
	10150 5650 10000 5650
Text Label 10000 5650 2    50   ~ 0
di[0..7]
Text Label 10000 5350 2    50   ~ 0
oe_b_d
Text Label 10000 5450 2    50   ~ 0
oe_b_alu
Text Label 8850 4950 2    50   ~ 0
~clk
Text Label 8850 5150 2    50   ~ 0
b_we
Wire Wire Line
	10150 1800 9900 1800
Wire Wire Line
	10150 1900 9900 1900
Wire Wire Line
	10150 2100 9900 2100
Wire Wire Line
	10150 2200 9900 2200
Wire Wire Line
	10150 2300 9900 2300
Wire Wire Line
	10150 2400 9900 2400
Wire Wire Line
	10150 2600 9900 2600
Wire Wire Line
	10150 2800 9900 2800
$Comp
L Device:R R?
U 1 1 5E80BBFA
P 11400 6700
F 0 "R?" V 11400 5850 50  0000 C CNN
F 1 "10k" V 11400 6100 50  0000 C CNN
F 2 "" V 11330 6700 50  0001 C CNN
F 3 "~" H 11400 6700 50  0001 C CNN
	1    11400 6700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E80F228
P 11250 6700
F 0 "#PWR?" H 11250 6450 50  0001 C CNN
F 1 "GND" V 11250 6550 50  0000 R CNN
F 2 "" H 11250 6700 50  0001 C CNN
F 3 "" H 11250 6700 50  0001 C CNN
	1    11250 6700
	0    1    1    0   
$EndComp
Entry Wire Line
	11950 6700 12050 6600
Wire Wire Line
	11550 6700 11950 6700
Text Label 11650 6700 0    50   ~ 0
alu_b0
$Comp
L Device:R R?
U 1 1 5E8168AD
P 11400 6850
F 0 "R?" V 11400 6000 50  0000 C CNN
F 1 "10k" V 11400 6250 50  0000 C CNN
F 2 "" V 11330 6850 50  0001 C CNN
F 3 "~" H 11400 6850 50  0001 C CNN
	1    11400 6850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8168B3
P 11250 6850
F 0 "#PWR?" H 11250 6600 50  0001 C CNN
F 1 "GND" V 11250 6700 50  0000 R CNN
F 2 "" H 11250 6850 50  0001 C CNN
F 3 "" H 11250 6850 50  0001 C CNN
	1    11250 6850
	0    1    1    0   
$EndComp
Entry Wire Line
	11950 6850 12050 6750
Wire Wire Line
	11550 6850 11950 6850
Text Label 11650 6850 0    50   ~ 0
alu_b1
$Comp
L Device:R R?
U 1 1 5E819029
P 11400 7000
F 0 "R?" V 11400 6150 50  0000 C CNN
F 1 "10k" V 11400 6400 50  0000 C CNN
F 2 "" V 11330 7000 50  0001 C CNN
F 3 "~" H 11400 7000 50  0001 C CNN
	1    11400 7000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E81902F
P 11250 7000
F 0 "#PWR?" H 11250 6750 50  0001 C CNN
F 1 "GND" V 11250 6850 50  0000 R CNN
F 2 "" H 11250 7000 50  0001 C CNN
F 3 "" H 11250 7000 50  0001 C CNN
	1    11250 7000
	0    1    1    0   
$EndComp
Entry Wire Line
	11950 7000 12050 6900
Wire Wire Line
	11550 7000 11950 7000
Text Label 11650 7000 0    50   ~ 0
alu_b2
$Comp
L Device:R R?
U 1 1 5E81B976
P 11400 7150
F 0 "R?" V 11400 6300 50  0000 C CNN
F 1 "10k" V 11400 6550 50  0000 C CNN
F 2 "" V 11330 7150 50  0001 C CNN
F 3 "~" H 11400 7150 50  0001 C CNN
	1    11400 7150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E81B97C
P 11250 7150
F 0 "#PWR?" H 11250 6900 50  0001 C CNN
F 1 "GND" V 11250 7000 50  0000 R CNN
F 2 "" H 11250 7150 50  0001 C CNN
F 3 "" H 11250 7150 50  0001 C CNN
	1    11250 7150
	0    1    1    0   
$EndComp
Entry Wire Line
	11950 7150 12050 7050
Wire Wire Line
	11550 7150 11950 7150
Text Label 11650 7150 0    50   ~ 0
alu_b3
$Comp
L Device:R R?
U 1 1 5E81E3DA
P 11400 7300
F 0 "R?" V 11400 6450 50  0000 C CNN
F 1 "10k" V 11400 6700 50  0000 C CNN
F 2 "" V 11330 7300 50  0001 C CNN
F 3 "~" H 11400 7300 50  0001 C CNN
	1    11400 7300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E81E3E0
P 11250 7300
F 0 "#PWR?" H 11250 7050 50  0001 C CNN
F 1 "GND" V 11250 7150 50  0000 R CNN
F 2 "" H 11250 7300 50  0001 C CNN
F 3 "" H 11250 7300 50  0001 C CNN
	1    11250 7300
	0    1    1    0   
$EndComp
Entry Wire Line
	11950 7300 12050 7200
Wire Wire Line
	11550 7300 11950 7300
Text Label 11650 7300 0    50   ~ 0
alu_b4
$Comp
L Device:R R?
U 1 1 5E82157E
P 11400 7450
F 0 "R?" V 11400 6600 50  0000 C CNN
F 1 "10k" V 11400 6850 50  0000 C CNN
F 2 "" V 11330 7450 50  0001 C CNN
F 3 "~" H 11400 7450 50  0001 C CNN
	1    11400 7450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E821584
P 11250 7450
F 0 "#PWR?" H 11250 7200 50  0001 C CNN
F 1 "GND" V 11250 7300 50  0000 R CNN
F 2 "" H 11250 7450 50  0001 C CNN
F 3 "" H 11250 7450 50  0001 C CNN
	1    11250 7450
	0    1    1    0   
$EndComp
Entry Wire Line
	11950 7450 12050 7350
Wire Wire Line
	11550 7450 11950 7450
$Comp
L Device:R R?
U 1 1 5E823FD0
P 11400 7600
F 0 "R?" V 11400 6750 50  0000 C CNN
F 1 "10k" V 11400 7000 50  0000 C CNN
F 2 "" V 11330 7600 50  0001 C CNN
F 3 "~" H 11400 7600 50  0001 C CNN
	1    11400 7600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E823FD6
P 11250 7600
F 0 "#PWR?" H 11250 7350 50  0001 C CNN
F 1 "GND" V 11250 7450 50  0000 R CNN
F 2 "" H 11250 7600 50  0001 C CNN
F 3 "" H 11250 7600 50  0001 C CNN
	1    11250 7600
	0    1    1    0   
$EndComp
Entry Wire Line
	11950 7600 12050 7500
Wire Wire Line
	11550 7600 11950 7600
Text Label 11650 7600 0    50   ~ 0
alu_b6
$Comp
L Device:R R?
U 1 1 5E826F86
P 11400 7750
F 0 "R?" V 11400 6900 50  0000 C CNN
F 1 "10k" V 11400 7150 50  0000 C CNN
F 2 "" V 11330 7750 50  0001 C CNN
F 3 "~" H 11400 7750 50  0001 C CNN
	1    11400 7750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E826F8C
P 11250 7750
F 0 "#PWR?" H 11250 7500 50  0001 C CNN
F 1 "GND" V 11250 7600 50  0000 R CNN
F 2 "" H 11250 7750 50  0001 C CNN
F 3 "" H 11250 7750 50  0001 C CNN
	1    11250 7750
	0    1    1    0   
$EndComp
Entry Wire Line
	11950 7750 12050 7650
Wire Wire Line
	11550 7750 11950 7750
Text Label 11650 7750 0    50   ~ 0
alu_b7
Text Label 11650 7450 0    50   ~ 0
alu_b5
Wire Bus Line
	11400 5950 12050 5950
$Comp
L power:GND #PWR?
U 1 1 5E83FA4B
P 5350 7650
F 0 "#PWR?" H 5350 7400 50  0001 C CNN
F 1 "GND" H 5355 7477 50  0000 C CNN
F 2 "" H 5350 7650 50  0001 C CNN
F 3 "" H 5350 7650 50  0001 C CNN
	1    5350 7650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E840228
P 5350 6050
F 0 "#PWR?" H 5350 5900 50  0001 C CNN
F 1 "VCC" H 5367 6223 50  0000 C CNN
F 2 "" H 5350 6050 50  0001 C CNN
F 3 "" H 5350 6050 50  0001 C CNN
	1    5350 6050
	1    0    0    -1  
$EndComp
Text Notes 5400 7150 0    50   ~ 0
FLAGS
Text Label 4850 7150 2    50   ~ 0
~clk
Text Label 4850 6850 2    50   ~ 0
~flags_we
$Comp
L 74xx:74LS161 U?
U 1 1 5E857F06
P 5350 6850
F 0 "U?" H 5700 6300 50  0000 C CNN
F 1 "74LS161" H 5650 6200 50  0000 C CNN
F 2 "" H 5350 6850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS161" H 5350 6850 50  0001 C CNN
	1    5350 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E85E09A
P 4600 7000
F 0 "#PWR?" H 4600 6750 50  0001 C CNN
F 1 "GND" V 4605 6872 50  0000 R CNN
F 2 "" H 4600 7000 50  0001 C CNN
F 3 "" H 4600 7000 50  0001 C CNN
	1    4600 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 6950 4600 6950
Wire Wire Line
	4600 6950 4600 7000
Wire Wire Line
	4850 7050 4600 7050
Wire Wire Line
	4600 7050 4600 7000
Connection ~ 4600 7000
NoConn ~ 5850 6850
Entry Wire Line
	6300 6350 6400 6250
Entry Wire Line
	6300 6450 6400 6350
Entry Wire Line
	6300 6550 6400 6450
Entry Wire Line
	6300 6650 6400 6550
Entry Wire Line
	4350 6450 4450 6350
Entry Wire Line
	4350 6550 4450 6450
Entry Wire Line
	4350 6650 4450 6550
Entry Wire Line
	4350 6750 4450 6650
Wire Wire Line
	4850 6650 4450 6650
Wire Wire Line
	4450 6550 4850 6550
Wire Wire Line
	4850 6450 4450 6450
Wire Wire Line
	4450 6350 4850 6350
Text Label 4850 7350 2    50   ~ 0
~rst
Text Label 5850 6350 0    50   ~ 0
flags_out0
Wire Wire Line
	5850 6350 6300 6350
Wire Wire Line
	5850 6450 6300 6450
Wire Wire Line
	5850 6550 6300 6550
Wire Wire Line
	5850 6650 6300 6650
Text Label 5850 6450 0    50   ~ 0
flags_out1
Text Label 5850 6550 0    50   ~ 0
flags_out2
Text Label 5850 6650 0    50   ~ 0
flags_out3
Text Label 4500 6350 0    50   ~ 0
flags_in0
Text Label 4500 6450 0    50   ~ 0
flags_in1
Text Label 4500 6550 0    50   ~ 0
flags_in2
Text Label 4500 6650 0    50   ~ 0
flags_in3
Entry Wire Line
	6400 7450 6500 7350
Entry Wire Line
	6400 7550 6500 7450
Entry Wire Line
	6400 7650 6500 7550
Entry Wire Line
	6400 7750 6500 7650
Text Label 6500 7350 0    50   ~ 0
flags_out0
Text Label 6500 7450 0    50   ~ 0
flags_out1
Text Label 6500 7550 0    50   ~ 0
flags_out2
Text Label 6500 7650 0    50   ~ 0
flags_out3
$Comp
L Device:LED D?
U 1 1 5E8A9198
P 6950 7350
F 0 "D?" H 6100 7350 50  0000 C CNN
F 1 "LED" H 6943 7186 50  0001 C CNN
F 2 "" H 6950 7350 50  0001 C CNN
F 3 "~" H 6950 7350 50  0001 C CNN
	1    6950 7350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E8A919E
P 7250 7350
F 0 "R?" V 7250 8100 50  0000 C CNN
F 1 "LED" V 7250 8300 50  0000 C CNN
F 2 "" V 7180 7350 50  0001 C CNN
F 3 "~" H 7250 7350 50  0001 C CNN
	1    7250 7350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8A91A4
P 7400 7350
F 0 "#PWR?" H 7400 7100 50  0001 C CNN
F 1 "GND" V 7405 7222 50  0000 R CNN
F 2 "" H 7400 7350 50  0001 C CNN
F 3 "" H 7400 7350 50  0001 C CNN
	1    7400 7350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 7350 6500 7350
$Comp
L Device:LED D?
U 1 1 5E8A91AB
P 6950 7450
F 0 "D?" H 6100 7450 50  0000 C CNN
F 1 "LED" H 6943 7286 50  0001 C CNN
F 2 "" H 6950 7450 50  0001 C CNN
F 3 "~" H 6950 7450 50  0001 C CNN
	1    6950 7450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E8A91B1
P 7250 7450
F 0 "R?" V 7250 8200 50  0000 C CNN
F 1 "LED" V 7250 8400 50  0000 C CNN
F 2 "" V 7180 7450 50  0001 C CNN
F 3 "~" H 7250 7450 50  0001 C CNN
	1    7250 7450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8A91B7
P 7400 7450
F 0 "#PWR?" H 7400 7200 50  0001 C CNN
F 1 "GND" V 7405 7322 50  0000 R CNN
F 2 "" H 7400 7450 50  0001 C CNN
F 3 "" H 7400 7450 50  0001 C CNN
	1    7400 7450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 7450 6500 7450
$Comp
L Device:LED D?
U 1 1 5E8A91BE
P 6950 7550
F 0 "D?" H 6100 7550 50  0000 C CNN
F 1 "LED" H 6943 7386 50  0001 C CNN
F 2 "" H 6950 7550 50  0001 C CNN
F 3 "~" H 6950 7550 50  0001 C CNN
	1    6950 7550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E8A91C4
P 7250 7550
F 0 "R?" V 7250 8300 50  0000 C CNN
F 1 "LED" V 7250 8500 50  0000 C CNN
F 2 "" V 7180 7550 50  0001 C CNN
F 3 "~" H 7250 7550 50  0001 C CNN
	1    7250 7550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8A91CA
P 7400 7550
F 0 "#PWR?" H 7400 7300 50  0001 C CNN
F 1 "GND" V 7405 7422 50  0000 R CNN
F 2 "" H 7400 7550 50  0001 C CNN
F 3 "" H 7400 7550 50  0001 C CNN
	1    7400 7550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 7550 6500 7550
$Comp
L Device:LED D?
U 1 1 5E8A91D1
P 6950 7650
F 0 "D?" H 6100 7650 50  0000 C CNN
F 1 "LED" H 6943 7486 50  0001 C CNN
F 2 "" H 6950 7650 50  0001 C CNN
F 3 "~" H 6950 7650 50  0001 C CNN
	1    6950 7650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E8A91D7
P 7250 7650
F 0 "R?" V 7250 8400 50  0000 C CNN
F 1 "LED" V 7250 8600 50  0000 C CNN
F 2 "" V 7180 7650 50  0001 C CNN
F 3 "~" H 7250 7650 50  0001 C CNN
	1    7250 7650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E8A91DD
P 7400 7650
F 0 "#PWR?" H 7400 7400 50  0001 C CNN
F 1 "GND" V 7405 7522 50  0000 R CNN
F 2 "" H 7400 7650 50  0001 C CNN
F 3 "" H 7400 7650 50  0001 C CNN
	1    7400 7650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6800 7650 6500 7650
Text Label 6400 7300 1    50   ~ 0
flags_out[0..3]
Text Label 4350 6400 1    50   ~ 0
flags_in[0..3]
Text Label 9900 1800 2    50   ~ 0
~ip_to_addr_oe
Text Label 9900 1900 2    50   ~ 0
~dp_to_addr_oe
Text Label 9900 2100 2    50   ~ 0
~ph_to_alu_oe
Text Label 9900 2200 2    50   ~ 0
~pl_to_alu_oe
Text Label 9900 2300 2    50   ~ 0
~ph_we
Text Label 9900 2400 2    50   ~ 0
~pl_we
Text Label 9900 2600 2    50   ~ 0
p_selector
Text Label 9900 2800 2    50   ~ 0
ip_cnt
$Comp
L 74xx:74LS08 U?
U 5 1 5E907A7F
P 1000 10500
F 0 "U?" H 1230 10546 50  0000 L CNN
F 1 "74LS08" H 1230 10455 50  0000 L CNN
F 2 "" H 1000 10500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 1000 10500 50  0001 C CNN
	5    1000 10500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E90CCA8
P 1000 11000
F 0 "#PWR?" H 1000 10750 50  0001 C CNN
F 1 "GND" H 1005 10827 50  0000 C CNN
F 2 "" H 1000 11000 50  0001 C CNN
F 3 "" H 1000 11000 50  0001 C CNN
	1    1000 11000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E90D1E3
P 1000 10000
F 0 "#PWR?" H 1000 9850 50  0001 C CNN
F 1 "VCC" H 1017 10173 50  0000 C CNN
F 2 "" H 1000 10000 50  0001 C CNN
F 3 "" H 1000 10000 50  0001 C CNN
	1    1000 10000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E90E340
P 1700 10500
F 0 "C?" H 1815 10546 50  0000 L CNN
F 1 "0.1u" H 1815 10455 50  0000 L CNN
F 2 "" H 1738 10350 50  0001 C CNN
F 3 "~" H 1700 10500 50  0001 C CNN
	1    1700 10500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E90E95C
P 1700 10350
F 0 "#PWR?" H 1700 10200 50  0001 C CNN
F 1 "VCC" H 1717 10523 50  0000 C CNN
F 2 "" H 1700 10350 50  0001 C CNN
F 3 "" H 1700 10350 50  0001 C CNN
	1    1700 10350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E90EDAB
P 1700 10650
F 0 "#PWR?" H 1700 10400 50  0001 C CNN
F 1 "GND" H 1705 10477 50  0000 C CNN
F 2 "" H 1700 10650 50  0001 C CNN
F 3 "" H 1700 10650 50  0001 C CNN
	1    1700 10650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E91148F
P 4800 7850
F 0 "C?" H 4915 7896 50  0000 L CNN
F 1 "0.1u" H 4915 7805 50  0000 L CNN
F 2 "" H 4838 7700 50  0001 C CNN
F 3 "~" H 4800 7850 50  0001 C CNN
	1    4800 7850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E911495
P 4800 7700
F 0 "#PWR?" H 4800 7550 50  0001 C CNN
F 1 "VCC" H 4817 7873 50  0000 C CNN
F 2 "" H 4800 7700 50  0001 C CNN
F 3 "" H 4800 7700 50  0001 C CNN
	1    4800 7700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E91149B
P 4800 8000
F 0 "#PWR?" H 4800 7750 50  0001 C CNN
F 1 "GND" H 4805 7827 50  0000 C CNN
F 2 "" H 4800 8000 50  0001 C CNN
F 3 "" H 4800 8000 50  0001 C CNN
	1    4800 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E917009
P 4850 5200
F 0 "C?" H 4965 5246 50  0000 L CNN
F 1 "0.1u" H 4965 5155 50  0000 L CNN
F 2 "" H 4888 5050 50  0001 C CNN
F 3 "~" H 4850 5200 50  0001 C CNN
	1    4850 5200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E91700F
P 4850 5050
F 0 "#PWR?" H 4850 4900 50  0001 C CNN
F 1 "VCC" H 4867 5223 50  0000 C CNN
F 2 "" H 4850 5050 50  0001 C CNN
F 3 "" H 4850 5050 50  0001 C CNN
	1    4850 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E917015
P 4850 5350
F 0 "#PWR?" H 4850 5100 50  0001 C CNN
F 1 "GND" H 4855 5177 50  0000 C CNN
F 2 "" H 4850 5350 50  0001 C CNN
F 3 "" H 4850 5350 50  0001 C CNN
	1    4850 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E91C76E
P 6000 2250
F 0 "C?" H 6115 2296 50  0000 L CNN
F 1 "0.1u" H 6115 2205 50  0000 L CNN
F 2 "" H 6038 2100 50  0001 C CNN
F 3 "~" H 6000 2250 50  0001 C CNN
	1    6000 2250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E91C774
P 6000 2100
F 0 "#PWR?" H 6000 1950 50  0001 C CNN
F 1 "VCC" H 6017 2273 50  0000 C CNN
F 2 "" H 6000 2100 50  0001 C CNN
F 3 "" H 6000 2100 50  0001 C CNN
	1    6000 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E91C77A
P 6000 2400
F 0 "#PWR?" H 6000 2150 50  0001 C CNN
F 1 "GND" H 6005 2227 50  0000 C CNN
F 2 "" H 6000 2400 50  0001 C CNN
F 3 "" H 6000 2400 50  0001 C CNN
	1    6000 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E9A723F
P 6000 1100
F 0 "R?" V 6000 1900 50  0000 C CNN
F 1 "1k" V 6000 1750 50  0000 C CNN
F 2 "" V 5930 1100 50  0001 C CNN
F 3 "~" H 6000 1100 50  0001 C CNN
	1    6000 1100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E9A7245
P 6000 1200
F 0 "R?" V 6000 2000 50  0000 C CNN
F 1 "1k" V 6000 1850 50  0000 C CNN
F 2 "" V 5930 1200 50  0001 C CNN
F 3 "~" H 6000 1200 50  0001 C CNN
	1    6000 1200
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E9A724B
P 6000 1300
F 0 "R?" V 6000 2100 50  0000 C CNN
F 1 "1k" V 6000 1950 50  0000 C CNN
F 2 "" V 5930 1300 50  0001 C CNN
F 3 "~" H 6000 1300 50  0001 C CNN
	1    6000 1300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E9A7251
P 6000 1400
F 0 "R?" V 6000 2200 50  0000 C CNN
F 1 "1k" V 6000 2050 50  0000 C CNN
F 2 "" V 5930 1400 50  0001 C CNN
F 3 "~" H 6000 1400 50  0001 C CNN
	1    6000 1400
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E9A7257
P 6000 1500
F 0 "R?" V 6000 2300 50  0000 C CNN
F 1 "1k" V 6000 2150 50  0000 C CNN
F 2 "" V 5930 1500 50  0001 C CNN
F 3 "~" H 6000 1500 50  0001 C CNN
	1    6000 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E9A725D
P 6000 1600
F 0 "R?" V 6000 2400 50  0000 C CNN
F 1 "1k" V 6000 2250 50  0000 C CNN
F 2 "" V 5930 1600 50  0001 C CNN
F 3 "~" H 6000 1600 50  0001 C CNN
	1    6000 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E9A7263
P 6000 1700
F 0 "R?" V 6000 2500 50  0000 C CNN
F 1 "1k" V 6000 2350 50  0000 C CNN
F 2 "" V 5930 1700 50  0001 C CNN
F 3 "~" H 6000 1700 50  0001 C CNN
	1    6000 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E9A7269
P 6000 1800
F 0 "R?" V 6000 2600 50  0000 C CNN
F 1 "1k" V 6000 2450 50  0000 C CNN
F 2 "" V 5930 1800 50  0001 C CNN
F 3 "~" H 6000 1800 50  0001 C CNN
	1    6000 1800
	0    1    1    0   
$EndComp
Wire Bus Line
	4350 6100 4350 6750
Wire Bus Line
	6400 6250 6400 7750
Wire Bus Line
	6450 900  6450 1700
Wire Bus Line
	12050 5950 12050 7650
Wire Bus Line
	6400 3600 6400 5950
Wire Bus Line
	4400 1200 4400 4800
$EndSCHEMATC
