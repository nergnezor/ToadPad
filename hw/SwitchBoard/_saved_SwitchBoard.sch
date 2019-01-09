EESchema Schematic File Version 4
LIBS:SwitchBoard-cache
EELAYER 26 0
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
L Adafruit_bicolor_8x8-eagle-import:HT16K33_SOP28 U1
U 1 1 5C0E73BF
P 1500 4350
F 0 "U1" H 1500 5997 42  0000 C CNN
F 1 "HT16K33_SOP28" H 1500 5918 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOP28_300MIL" H 1500 4350 50  0001 C CNN
F 3 "" H 1500 4350 50  0001 C CNN
	1    1500 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 6600 2750 6600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D21
U 1 1 5C1B6DF6
P 2550 7050
F 0 "D21" H 2550 7150 42  0000 C CNN
F 1 "1N4148" H 2550 6950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 2550 7050 50  0001 C CNN
F 3 "" H 2550 7050 50  0001 C CNN
	1    2550 7050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW21
U 1 1 5C1C522A
P 2550 6600
F 0 "SW21" H 2550 6800 50  0000 C CNN
F 1 "SW_Push" H 2550 6450 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 2550 6900 50  0001 C CNN
F 3 "" H 2550 6900 50  0001 C CNN
	1    2550 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 7050 2800 7050
Wire Wire Line
	2800 6600 2800 7050
Wire Wire Line
	2400 7050 2400 7250
Wire Wire Line
	2400 7050 2450 7050
Connection ~ 2400 7250
Wire Wire Line
	3350 6600 3300 6600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D22
U 1 1 5C1C55FE
P 3100 7050
F 0 "D22" H 3100 7150 42  0000 C CNN
F 1 "1N4148" H 3100 6950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 3100 7050 50  0001 C CNN
F 3 "" H 3100 7050 50  0001 C CNN
	1    3100 7050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW22
U 1 1 5C1C5605
P 3100 6600
F 0 "SW22" H 3100 6800 50  0000 C CNN
F 1 "SW_Push" H 3100 6450 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 3100 6900 50  0001 C CNN
F 3 "" H 3100 6900 50  0001 C CNN
	1    3100 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7050 3350 7050
Wire Wire Line
	3350 6600 3350 7050
Wire Wire Line
	2950 7050 2950 7250
Wire Wire Line
	2950 7050 3000 7050
Connection ~ 2950 7250
Wire Wire Line
	2400 7250 2950 7250
Wire Wire Line
	2800 5800 2750 5800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D11
U 1 1 5C1E056E
P 2550 6250
F 0 "D11" H 2550 6350 42  0000 C CNN
F 1 "1N4148" H 2550 6150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 2550 6250 50  0001 C CNN
F 3 "" H 2550 6250 50  0001 C CNN
	1    2550 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 6250 2800 6250
Wire Wire Line
	2800 5800 2800 6250
Wire Wire Line
	2400 6250 2400 6450
Wire Wire Line
	2400 6250 2450 6250
Connection ~ 2400 6450
Wire Wire Line
	3350 5800 3300 5800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D12
U 1 1 5C1E0584
P 3100 6250
F 0 "D12" H 3100 6350 42  0000 C CNN
F 1 "1N4148" H 3100 6150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 3100 6250 50  0001 C CNN
F 3 "" H 3100 6250 50  0001 C CNN
	1    3100 6250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW12
U 1 1 5C1E058B
P 3100 5800
F 0 "SW12" H 3100 6000 50  0000 C CNN
F 1 "SW_Push" H 3100 5650 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 3100 6100 50  0001 C CNN
F 3 "" H 3100 6100 50  0001 C CNN
	1    3100 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6250 3350 6250
Wire Wire Line
	3350 5800 3350 6250
Wire Wire Line
	2950 6250 2950 6450
Wire Wire Line
	2300 5800 2350 5800
Wire Wire Line
	2850 5800 2900 5800
Wire Wire Line
	2950 6250 3000 6250
Wire Wire Line
	2350 6600 2300 6600
Wire Wire Line
	2400 6450 2950 6450
Wire Wire Line
	2850 5800 2850 6600
Wire Wire Line
	2850 6600 2900 6600
Wire Wire Line
	3900 6600 3850 6600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D23
U 1 1 5C1E8856
P 3650 7050
F 0 "D23" H 3650 7150 42  0000 C CNN
F 1 "1N4148" H 3650 6950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 3650 7050 50  0001 C CNN
F 3 "" H 3650 7050 50  0001 C CNN
	1    3650 7050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW23
U 1 1 5C1E885C
P 3650 6600
F 0 "SW23" H 3650 6800 50  0000 C CNN
F 1 "SW_Push" H 3650 6450 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 3650 6900 50  0001 C CNN
F 3 "" H 3650 6900 50  0001 C CNN
	1    3650 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 7050 3900 7050
Wire Wire Line
	3900 6600 3900 7050
Wire Wire Line
	3500 7050 3500 7250
Wire Wire Line
	3500 7050 3550 7050
Connection ~ 3500 7250
Wire Wire Line
	4450 6600 4400 6600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D24
U 1 1 5C1E8869
P 4200 7050
F 0 "D24" H 4200 7150 42  0000 C CNN
F 1 "1N4148" H 4200 6950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 4200 7050 50  0001 C CNN
F 3 "" H 4200 7050 50  0001 C CNN
	1    4200 7050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW24
U 1 1 5C1E886F
P 4200 6600
F 0 "SW24" H 4200 6800 50  0000 C CNN
F 1 "SW_Push" H 4200 6450 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 4200 6900 50  0001 C CNN
F 3 "" H 4200 6900 50  0001 C CNN
	1    4200 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 7050 4450 7050
Wire Wire Line
	4450 6600 4450 7050
Wire Wire Line
	4050 7050 4050 7250
Wire Wire Line
	4050 7050 4100 7050
Connection ~ 4050 7250
Wire Wire Line
	3500 7250 4050 7250
Wire Wire Line
	3900 5800 3850 5800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D13
U 1 1 5C1E887D
P 3650 6250
F 0 "D13" H 3650 6350 42  0000 C CNN
F 1 "1N4148" H 3650 6150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 3650 6250 50  0001 C CNN
F 3 "" H 3650 6250 50  0001 C CNN
	1    3650 6250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW13
U 1 1 5C1E8883
P 3650 5800
F 0 "SW13" H 3650 6000 50  0000 C CNN
F 1 "SW_Push" H 3650 5650 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 3650 6100 50  0001 C CNN
F 3 "" H 3650 6100 50  0001 C CNN
	1    3650 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6250 3900 6250
Wire Wire Line
	3900 5800 3900 6250
Wire Wire Line
	3500 6250 3500 6450
Wire Wire Line
	3500 6250 3550 6250
Connection ~ 3500 6450
Wire Wire Line
	4450 5800 4400 5800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D14
U 1 1 5C1E888F
P 4200 6250
F 0 "D14" H 4200 6350 42  0000 C CNN
F 1 "1N4148" H 4200 6150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 4200 6250 50  0001 C CNN
F 3 "" H 4200 6250 50  0001 C CNN
	1    4200 6250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW14
U 1 1 5C1E8895
P 4200 5800
F 0 "SW14" H 4200 6000 50  0000 C CNN
F 1 "SW_Push" H 4200 5650 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 4200 6100 50  0001 C CNN
F 3 "" H 4200 6100 50  0001 C CNN
	1    4200 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6250 4450 6250
Wire Wire Line
	4450 5800 4450 6250
Wire Wire Line
	4050 6250 4050 6450
Connection ~ 4050 6450
Wire Wire Line
	3400 5800 3450 5800
Wire Wire Line
	3950 5800 4000 5800
Wire Wire Line
	4050 6250 4100 6250
Wire Wire Line
	3450 6600 3400 6600
Wire Wire Line
	3500 6450 4050 6450
Wire Wire Line
	3950 5800 3950 6600
Wire Wire Line
	3950 6600 4000 6600
Wire Wire Line
	2950 7250 3500 7250
Connection ~ 2300 5800
Connection ~ 2850 5800
Connection ~ 3400 5800
Connection ~ 3950 5800
Wire Wire Line
	2800 5000 2750 5000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D1
U 1 1 5C1EED58
P 2550 5450
F 0 "D1" H 2550 5550 42  0000 C CNN
F 1 "1N4148" H 2550 5350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 2550 5450 50  0001 C CNN
F 3 "" H 2550 5450 50  0001 C CNN
	1    2550 5450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW1
U 1 1 5C1EED5F
P 2550 5000
F 0 "SW1" H 2550 5200 50  0000 C CNN
F 1 "SW_Push" H 2550 4850 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 2550 5300 50  0001 C CNN
F 3 "" H 2550 5300 50  0001 C CNN
	1    2550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 5450 2800 5450
Wire Wire Line
	2800 5000 2800 5450
Wire Wire Line
	2400 5450 2400 5650
Wire Wire Line
	2400 5450 2450 5450
Connection ~ 2400 5650
Wire Wire Line
	3350 5000 3300 5000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D2
U 1 1 5C1EED6C
P 3100 5450
F 0 "D2" H 3100 5550 42  0000 C CNN
F 1 "1N4148" H 3100 5350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 3100 5450 50  0001 C CNN
F 3 "" H 3100 5450 50  0001 C CNN
	1    3100 5450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW2
U 1 1 5C1EED73
P 3100 5000
F 0 "SW2" H 3100 5200 50  0000 C CNN
F 1 "SW_Push" H 3100 4850 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 3100 5300 50  0001 C CNN
F 3 "" H 3100 5300 50  0001 C CNN
	1    3100 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5450 3350 5450
Wire Wire Line
	3350 5000 3350 5450
Wire Wire Line
	2950 5450 2950 5650
Connection ~ 2950 5650
Wire Wire Line
	2300 5000 2350 5000
Wire Wire Line
	2850 5000 2900 5000
Wire Wire Line
	2950 5450 3000 5450
Wire Wire Line
	3900 5000 3850 5000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D3
U 1 1 5C1EED87
P 3650 5450
F 0 "D3" H 3650 5550 42  0000 C CNN
F 1 "1N4148" H 3650 5350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 3650 5450 50  0001 C CNN
F 3 "" H 3650 5450 50  0001 C CNN
	1    3650 5450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW3
U 1 1 5C1EED8E
P 3650 5000
F 0 "SW3" H 3650 5200 50  0000 C CNN
F 1 "SW_Push" H 3650 4850 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 3650 5300 50  0001 C CNN
F 3 "" H 3650 5300 50  0001 C CNN
	1    3650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5450 3900 5450
Wire Wire Line
	3900 5000 3900 5450
Wire Wire Line
	3500 5450 3500 5650
Wire Wire Line
	3500 5450 3550 5450
Connection ~ 3500 5650
Wire Wire Line
	4450 5000 4400 5000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D4
U 1 1 5C1EED9B
P 4200 5450
F 0 "D4" H 4200 5550 42  0000 C CNN
F 1 "1N4148" H 4200 5350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 4200 5450 50  0001 C CNN
F 3 "" H 4200 5450 50  0001 C CNN
	1    4200 5450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW4
U 1 1 5C1EEDA2
P 4200 5000
F 0 "SW4" H 4200 5200 50  0000 C CNN
F 1 "SW_Push" H 4200 4850 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 4200 5300 50  0001 C CNN
F 3 "" H 4200 5300 50  0001 C CNN
	1    4200 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5450 4450 5450
Wire Wire Line
	4450 5000 4450 5450
Wire Wire Line
	4050 5450 4050 5650
Connection ~ 4050 5650
Wire Wire Line
	3400 5000 3450 5000
Wire Wire Line
	3950 5000 4000 5000
Wire Wire Line
	4050 5450 4100 5450
Connection ~ 2300 5000
Connection ~ 2850 5000
Connection ~ 3400 5000
Connection ~ 3950 5000
Wire Wire Line
	5000 6600 4950 6600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D25
U 1 1 5C25FBD4
P 4750 7050
F 0 "D25" H 4750 7150 42  0000 C CNN
F 1 "1N4148" H 4750 6950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 4750 7050 50  0001 C CNN
F 3 "" H 4750 7050 50  0001 C CNN
	1    4750 7050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW25
U 1 1 5C25FBDB
P 4750 6600
F 0 "SW25" H 4750 6800 50  0000 C CNN
F 1 "SW_Push" H 4750 6450 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 4750 6900 50  0001 C CNN
F 3 "" H 4750 6900 50  0001 C CNN
	1    4750 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 7050 5000 7050
Wire Wire Line
	5000 6600 5000 7050
Wire Wire Line
	4600 7050 4600 7250
Wire Wire Line
	4600 7050 4650 7050
Wire Wire Line
	5000 5800 4950 5800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D15
U 1 1 5C25FBFD
P 4750 6250
F 0 "D15" H 4750 6350 42  0000 C CNN
F 1 "1N4148" H 4750 6150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 4750 6250 50  0001 C CNN
F 3 "" H 4750 6250 50  0001 C CNN
	1    4750 6250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW15
U 1 1 5C25FC04
P 4750 5800
F 0 "SW15" H 4750 6000 50  0000 C CNN
F 1 "SW_Push" H 4750 5650 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 4750 6100 50  0001 C CNN
F 3 "" H 4750 6100 50  0001 C CNN
	1    4750 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6250 5000 6250
Wire Wire Line
	5000 5800 5000 6250
Wire Wire Line
	4600 6250 4600 6450
Wire Wire Line
	4600 6250 4650 6250
Connection ~ 4600 6450
Wire Wire Line
	5550 5800 5500 5800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D16
U 1 1 5C25FC11
P 5300 6250
F 0 "D16" H 5300 6350 42  0000 C CNN
F 1 "1N4148" H 5300 6150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 5300 6250 50  0001 C CNN
F 3 "" H 5300 6250 50  0001 C CNN
	1    5300 6250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW16
U 1 1 5C25FC18
P 5300 5800
F 0 "SW16" H 5300 6000 50  0000 C CNN
F 1 "SW_Push" H 5300 5650 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 5300 6100 50  0001 C CNN
F 3 "" H 5300 6100 50  0001 C CNN
	1    5300 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 6250 5550 6250
Wire Wire Line
	5550 5800 5550 6250
Wire Wire Line
	5150 6250 5150 6450
Connection ~ 5150 6450
Wire Wire Line
	4500 5800 4550 5800
Wire Wire Line
	5050 5800 5100 5800
Wire Wire Line
	5150 6250 5200 6250
Wire Wire Line
	4550 6600 4500 6600
Wire Wire Line
	4600 6450 5150 6450
Wire Wire Line
	6100 5800 6050 5800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D17
U 1 1 5C25FC57
P 5850 6250
F 0 "D17" H 5850 6350 42  0000 C CNN
F 1 "1N4148" H 5850 6150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 5850 6250 50  0001 C CNN
F 3 "" H 5850 6250 50  0001 C CNN
	1    5850 6250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW17
U 1 1 5C25FC5E
P 5850 5800
F 0 "SW17" H 5850 6000 50  0000 C CNN
F 1 "SW_Push" H 5850 5650 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 5850 6100 50  0001 C CNN
F 3 "" H 5850 6100 50  0001 C CNN
	1    5850 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6250 6100 6250
Wire Wire Line
	6100 5800 6100 6250
Wire Wire Line
	5700 6250 5700 6450
Wire Wire Line
	5700 6250 5750 6250
Connection ~ 5700 6450
Wire Wire Line
	6650 5800 6600 5800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D18
U 1 1 5C25FC6B
P 6400 6250
F 0 "D18" H 6400 6350 42  0000 C CNN
F 1 "1N4148" H 6400 6150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 6400 6250 50  0001 C CNN
F 3 "" H 6400 6250 50  0001 C CNN
	1    6400 6250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW18
U 1 1 5C25FC72
P 6400 5800
F 0 "SW18" H 6400 6000 50  0000 C CNN
F 1 "SW_Push" H 6400 5650 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 6400 6100 50  0001 C CNN
F 3 "" H 6400 6100 50  0001 C CNN
	1    6400 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 6250 6650 6250
Wire Wire Line
	6650 5800 6650 6250
Wire Wire Line
	6250 6250 6250 6450
Wire Wire Line
	5600 5800 5650 5800
Wire Wire Line
	6150 5800 6200 5800
Wire Wire Line
	6250 6250 6300 6250
Wire Wire Line
	5700 6450 6250 6450
Connection ~ 4500 5800
Wire Wire Line
	5000 5000 4950 5000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D5
U 1 1 5C25FC95
P 4750 5450
F 0 "D5" H 4750 5550 42  0000 C CNN
F 1 "1N4148" H 4750 5350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 4750 5450 50  0001 C CNN
F 3 "" H 4750 5450 50  0001 C CNN
	1    4750 5450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW5
U 1 1 5C25FC9C
P 4750 5000
F 0 "SW5" H 4750 5200 50  0000 C CNN
F 1 "SW_Push" H 4750 4850 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 4750 5300 50  0001 C CNN
F 3 "" H 4750 5300 50  0001 C CNN
	1    4750 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 5450 5000 5450
Wire Wire Line
	5000 5000 5000 5450
Wire Wire Line
	4600 5450 4600 5650
Wire Wire Line
	4600 5450 4650 5450
Connection ~ 4600 5650
Wire Wire Line
	5550 5000 5500 5000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D6
U 1 1 5C25FCA9
P 5300 5450
F 0 "D6" H 5300 5550 42  0000 C CNN
F 1 "1N4148" H 5300 5350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 5300 5450 50  0001 C CNN
F 3 "" H 5300 5450 50  0001 C CNN
	1    5300 5450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW6
U 1 1 5C25FCB0
P 5300 5000
F 0 "SW6" H 5300 5200 50  0000 C CNN
F 1 "SW_Push" H 5300 4850 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 5300 5300 50  0001 C CNN
F 3 "" H 5300 5300 50  0001 C CNN
	1    5300 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5450 5550 5450
Wire Wire Line
	5550 5000 5550 5450
Wire Wire Line
	5150 5450 5150 5650
Connection ~ 5150 5650
Wire Wire Line
	4500 5000 4550 5000
Wire Wire Line
	5050 5000 5100 5000
Wire Wire Line
	5150 5450 5200 5450
Wire Wire Line
	6100 5000 6050 5000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D7
U 1 1 5C25FCC4
P 5850 5450
F 0 "D7" H 5850 5550 42  0000 C CNN
F 1 "1N4148" H 5850 5350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 5850 5450 50  0001 C CNN
F 3 "" H 5850 5450 50  0001 C CNN
	1    5850 5450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW7
U 1 1 5C25FCCB
P 5850 5000
F 0 "SW7" H 5850 5200 50  0000 C CNN
F 1 "SW_Push" H 5850 4850 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 5850 5300 50  0001 C CNN
F 3 "" H 5850 5300 50  0001 C CNN
	1    5850 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5450 6100 5450
Wire Wire Line
	6100 5000 6100 5450
Wire Wire Line
	5700 5450 5700 5650
Wire Wire Line
	5700 5450 5750 5450
Connection ~ 5700 5650
Wire Wire Line
	6650 5000 6600 5000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D8
U 1 1 5C25FCD8
P 6400 5450
F 0 "D8" H 6400 5550 42  0000 C CNN
F 1 "1N4148" H 6400 5350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 6400 5450 50  0001 C CNN
F 3 "" H 6400 5450 50  0001 C CNN
	1    6400 5450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW8
U 1 1 5C25FCDF
P 6400 5000
F 0 "SW8" H 6400 5200 50  0000 C CNN
F 1 "SW_Push" H 6400 4850 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 6400 5300 50  0001 C CNN
F 3 "" H 6400 5300 50  0001 C CNN
	1    6400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5450 6650 5450
Wire Wire Line
	6650 5000 6650 5450
Wire Wire Line
	6250 5450 6250 5650
Connection ~ 6250 5650
Wire Wire Line
	5600 5000 5650 5000
Wire Wire Line
	6150 5000 6200 5000
Wire Wire Line
	6250 5450 6300 5450
Connection ~ 4500 5000
Connection ~ 5050 5000
Connection ~ 5600 5000
Connection ~ 6150 5000
Wire Wire Line
	4050 7250 4600 7250
Wire Wire Line
	7200 5000 7150 5000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D9
U 1 1 5C26B4F2
P 6950 5450
F 0 "D9" H 6950 5550 42  0000 C CNN
F 1 "1N4148" H 6950 5350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 6950 5450 50  0001 C CNN
F 3 "" H 6950 5450 50  0001 C CNN
	1    6950 5450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW9
U 1 1 5C26B4F9
P 6950 5000
F 0 "SW9" H 6950 5200 50  0000 C CNN
F 1 "SW_Push" H 6950 4850 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 6950 5300 50  0001 C CNN
F 3 "" H 6950 5300 50  0001 C CNN
	1    6950 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5450 7200 5450
Wire Wire Line
	7200 5000 7200 5450
Wire Wire Line
	6800 5450 6800 5650
Wire Wire Line
	6800 5450 6850 5450
Wire Wire Line
	6700 5000 6750 5000
Connection ~ 6700 5000
Wire Wire Line
	6700 4450 2100 4450
Wire Wire Line
	6700 4450 6700 5000
Wire Wire Line
	6150 4350 2100 4350
Wire Wire Line
	6150 4350 6150 5000
Wire Wire Line
	5600 4250 2100 4250
Wire Wire Line
	5600 4250 5600 5000
Wire Wire Line
	5050 4150 2100 4150
Wire Wire Line
	5050 4150 5050 5000
Wire Wire Line
	4500 4050 2100 4050
Wire Wire Line
	4500 4050 4500 5000
Wire Wire Line
	3950 3950 2100 3950
Wire Wire Line
	3950 3950 3950 5000
Wire Wire Line
	3400 3850 2100 3850
Wire Wire Line
	3400 3850 3400 5000
Wire Wire Line
	2850 3750 2100 3750
Wire Wire Line
	2850 3750 2850 5000
Wire Wire Line
	2300 3650 2100 3650
Wire Wire Line
	2300 3650 2300 5000
Wire Wire Line
	2250 5650 2250 5250
Wire Wire Line
	2250 5250 2100 5250
Wire Wire Line
	2100 5350 2200 5350
Wire Wire Line
	2200 5350 2200 6450
Wire Wire Line
	2100 5450 2150 5450
Wire Wire Line
	2150 5450 2150 7250
Wire Wire Line
	2150 7250 2400 7250
Connection ~ 2950 6450
Wire Wire Line
	2200 6450 2300 6450
Wire Wire Line
	2300 5000 2300 5650
Wire Wire Line
	2850 5000 2850 5650
Wire Wire Line
	3400 5000 3400 5650
Wire Wire Line
	3950 5000 3950 5650
Wire Wire Line
	2950 6450 3400 6450
Wire Wire Line
	4050 6450 4500 6450
Wire Wire Line
	4500 5000 4500 5650
Wire Wire Line
	5050 5000 5050 5650
Wire Wire Line
	5600 5000 5600 5650
Wire Wire Line
	5150 6450 5700 6450
Wire Wire Line
	6150 5000 6150 5650
Connection ~ 6250 6450
Wire Wire Line
	6250 6450 6800 6450
Wire Wire Line
	6700 5000 6700 5650
Wire Wire Line
	6700 5800 6750 5800
Wire Wire Line
	6800 6250 6850 6250
Wire Wire Line
	6800 6250 6800 6450
Wire Wire Line
	7200 5800 7200 6250
Wire Wire Line
	7050 6250 7200 6250
$Comp
L switches:SW_Push SW19
U 1 1 5C26B461
P 6950 5800
F 0 "SW19" H 6950 6000 50  0000 C CNN
F 1 "SW_Push" H 6950 5650 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 6950 6100 50  0001 C CNN
F 3 "" H 6950 6100 50  0001 C CNN
	1    6950 5800
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D19
U 1 1 5C26B45A
P 6950 6250
F 0 "D19" H 6950 6350 42  0000 C CNN
F 1 "1N4148" H 6950 6150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 6950 6250 50  0001 C CNN
F 3 "" H 6950 6250 50  0001 C CNN
	1    6950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5800 7150 5800
Connection ~ 6800 6450
Wire Wire Line
	7250 4550 2100 4550
Connection ~ 6800 5650
Wire Wire Line
	7350 5450 7400 5450
Wire Wire Line
	7250 4550 7250 5000
Connection ~ 7250 5000
Wire Wire Line
	7250 5000 7300 5000
Wire Wire Line
	7350 5450 7350 5650
Wire Wire Line
	7750 5000 7750 5450
Wire Wire Line
	7600 5450 7750 5450
$Comp
L switches:SW_Push SW10
U 1 1 5C26B50D
P 7500 5000
F 0 "SW10" H 7500 5200 50  0000 C CNN
F 1 "SW_Push" H 7500 4850 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 7500 5300 50  0001 C CNN
F 3 "" H 7500 5300 50  0001 C CNN
	1    7500 5000
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D10
U 1 1 5C26B506
P 7500 5450
F 0 "D10" H 7500 5550 42  0000 C CNN
F 1 "1N4148" H 7500 5350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 7500 5450 50  0001 C CNN
F 3 "" H 7500 5450 50  0001 C CNN
	1    7500 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 5000 7700 5000
Wire Wire Line
	7350 6250 7400 6250
Wire Wire Line
	7250 5000 7250 5650
Wire Wire Line
	7250 5800 7300 5800
Wire Wire Line
	6800 6450 7350 6450
Wire Wire Line
	7350 6250 7350 6450
Wire Wire Line
	7750 5800 7750 6250
Wire Wire Line
	7600 6250 7750 6250
$Comp
L switches:SW_Push SW20
U 1 1 5C26B475
P 7500 5800
F 0 "SW20" H 7500 6000 50  0000 C CNN
F 1 "SW_Push" H 7500 5650 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 7500 6100 50  0001 C CNN
F 3 "" H 7500 6100 50  0001 C CNN
	1    7500 5800
	1    0    0    -1  
$EndComp
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D20
U 1 1 5C26B46E
P 7500 6250
F 0 "D20" H 7500 6350 42  0000 C CNN
F 1 "1N4148" H 7500 6150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 7500 6250 50  0001 C CNN
F 3 "" H 7500 6250 50  0001 C CNN
	1    7500 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 5800 7700 5800
Wire Wire Line
	2300 5650 2300 5800
Wire Wire Line
	2300 6450 2400 6450
Wire Wire Line
	2850 5650 2850 5800
Wire Wire Line
	3400 5650 3400 5800
Wire Wire Line
	3400 6450 3500 6450
Wire Wire Line
	3950 5650 3950 5800
Wire Wire Line
	4500 5650 4500 5800
Wire Wire Line
	4500 6450 4600 6450
Wire Wire Line
	5050 5650 5050 5800
Wire Wire Line
	5600 5650 5600 5800
Wire Wire Line
	6150 5650 6150 5800
Wire Wire Line
	6700 5650 6700 5800
Wire Wire Line
	7250 5650 7250 5800
$Comp
L switches:SW_Push SW11
U 1 1 5C1E0575
P 2550 5800
F 0 "SW11" H 2550 6000 50  0000 C CNN
F 1 "SW_Push" H 2550 5650 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 2550 6100 50  0001 C CNN
F 3 "" H 2550 6100 50  0001 C CNN
	1    2550 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5650 2400 5650
Wire Wire Line
	2400 5650 2950 5650
Wire Wire Line
	2950 5650 3500 5650
Wire Wire Line
	2300 5800 2300 6600
Wire Wire Line
	3400 5800 3400 6600
Wire Wire Line
	4500 5800 4500 6600
Wire Wire Line
	4600 5650 5150 5650
Wire Wire Line
	5150 5650 5700 5650
Wire Wire Line
	4050 5650 4600 5650
Wire Wire Line
	3500 5650 4050 5650
Wire Wire Line
	5700 5650 6250 5650
Wire Wire Line
	6250 5650 6800 5650
Wire Wire Line
	6800 5650 7350 5650
$Comp
L conn:Conn_01x04_Female J2
U 1 1 5C353DFC
P 2100 1050
F 0 "J2" H 1994 717 50  0000 C CNN
F 1 "Conn_01x04_Female" H 2127 935 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 2100 1050 50  0001 C CNN
F 3 "~" H 2100 1050 50  0001 C CNN
	1    2100 1050
	-1   0    0    1   
$EndComp
$Comp
L conn:Conn_01x04_Female J1
U 1 1 5C354215
P 1400 950
F 0 "J1" H 1427 880 50  0000 L CNN
F 1 "Conn_01x04_Female" H 1427 835 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 1400 950 50  0001 C CNN
F 3 "~" H 1400 950 50  0001 C CNN
	1    1400 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	600  5850 900  5850
Wire Wire Line
	600  850  1200 850 
Wire Wire Line
	2100 4850 2100 4900
Wire Wire Line
	2100 4900 750  4900
Wire Wire Line
	600  850  600  5850
Wire Wire Line
	1200 950  650  950 
Wire Wire Line
	650  950  650  3350
Wire Wire Line
	650  3350 900  3350
Wire Wire Line
	1200 1050 700  1050
Wire Wire Line
	700  1050 700  3650
Wire Wire Line
	700  3650 900  3650
Wire Wire Line
	1200 1150 750  1150
Wire Wire Line
	750  1150 750  4900
Text Label 800  850  0    50   ~ 0
GND
Text Label 850  950  0    50   ~ 0
VDD
Text Label 900  1050 0    50   ~ 0
SCL
Text Label 950  1150 0    50   ~ 0
INT
$Comp
L conn:Conn_01x04_Female J3
U 1 1 5C514A7E
P 7100 1600
F 0 "J3" H 7127 1530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 7127 1485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 7100 1600 50  0001 C CNN
F 3 "~" H 7100 1600 50  0001 C CNN
	1    7100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1500 6750 1500
Wire Wire Line
	6900 1600 6750 1600
Wire Wire Line
	6900 1700 6750 1700
Wire Wire Line
	6900 1800 6750 1800
Text Label 6750 1500 0    50   ~ 0
GND
Text Label 6750 1600 0    50   ~ 0
VDD
Text Label 6750 1700 0    50   ~ 0
SCL
Text Label 6750 1800 0    50   ~ 0
SDA1
Text Label 2300 850  0    50   ~ 0
SDA1
Text Label 2300 950  0    50   ~ 0
SDA2
Text Label 2300 1050 0    50   ~ 0
SDA3
Text Label 2300 1150 0    50   ~ 0
SDA4
NoConn ~ 8050 2200
$Comp
L conn:Conn_01x04_Female J4
U 1 1 5C6E1316
P 7600 1600
F 0 "J4" H 7627 1530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 7627 1485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 7600 1600 50  0001 C CNN
F 3 "~" H 7600 1600 50  0001 C CNN
	1    7600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1500 7250 1500
Wire Wire Line
	7400 1600 7250 1600
Wire Wire Line
	7400 1700 7250 1700
Wire Wire Line
	7400 1800 7250 1800
Text Label 7250 1500 0    50   ~ 0
GND
Text Label 7250 1600 0    50   ~ 0
VDD
Text Label 7250 1700 0    50   ~ 0
SCL
Text Label 7250 1800 0    50   ~ 0
SDA1
$Comp
L conn:Conn_01x04_Female J5
U 1 1 5C728A26
P 8100 1600
F 0 "J5" H 8127 1530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 8127 1485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 8100 1600 50  0001 C CNN
F 3 "~" H 8100 1600 50  0001 C CNN
	1    8100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1500 7750 1500
Wire Wire Line
	7900 1600 7750 1600
Wire Wire Line
	7900 1700 7750 1700
Wire Wire Line
	7900 1800 7750 1800
Text Label 7750 1500 0    50   ~ 0
GND
Text Label 7750 1600 0    50   ~ 0
VDD
Text Label 7750 1700 0    50   ~ 0
SCL
Text Label 7750 1800 0    50   ~ 0
SDA1
$Comp
L conn:Conn_01x04_Female J6
U 1 1 5C728A35
P 8600 1600
F 0 "J6" H 8627 1530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 8627 1485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 8600 1600 50  0001 C CNN
F 3 "~" H 8600 1600 50  0001 C CNN
	1    8600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1500 8250 1500
Wire Wire Line
	8400 1600 8250 1600
Wire Wire Line
	8400 1700 8250 1700
Wire Wire Line
	8400 1800 8250 1800
Text Label 8250 1500 0    50   ~ 0
GND
Text Label 8250 1600 0    50   ~ 0
VDD
Text Label 8250 1700 0    50   ~ 0
SCL
Text Label 8250 1800 0    50   ~ 0
SDA1
$Comp
L conn:Conn_01x04_Female J7
U 1 1 5C73A9A6
P 9100 1600
F 0 "J7" H 9127 1530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 9127 1485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 9100 1600 50  0001 C CNN
F 3 "~" H 9100 1600 50  0001 C CNN
	1    9100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1500 8750 1500
Wire Wire Line
	8900 1600 8750 1600
Wire Wire Line
	8900 1700 8750 1700
Wire Wire Line
	8900 1800 8750 1800
Text Label 8750 1500 0    50   ~ 0
GND
Text Label 8750 1600 0    50   ~ 0
VDD
Text Label 8750 1700 0    50   ~ 0
SCL
Text Label 8750 1800 0    50   ~ 0
SDA1
$Comp
L conn:Conn_01x04_Female J8
U 1 1 5C73A9B5
P 9600 1600
F 0 "J8" H 9627 1530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 9627 1485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 9600 1600 50  0001 C CNN
F 3 "~" H 9600 1600 50  0001 C CNN
	1    9600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1500 9250 1500
Wire Wire Line
	9400 1600 9250 1600
Wire Wire Line
	9400 1700 9250 1700
Wire Wire Line
	9400 1800 9250 1800
Text Label 9250 1500 0    50   ~ 0
GND
Text Label 9250 1600 0    50   ~ 0
VDD
Text Label 9250 1700 0    50   ~ 0
SCL
Text Label 9250 1800 0    50   ~ 0
SDA1
$Comp
L conn:Conn_01x04_Female J9
U 1 1 5C74E689
P 10100 1600
F 0 "J9" H 10127 1530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 10127 1485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 10100 1600 50  0001 C CNN
F 3 "~" H 10100 1600 50  0001 C CNN
	1    10100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 1500 9750 1500
Wire Wire Line
	9900 1600 9750 1600
Wire Wire Line
	9900 1700 9750 1700
Wire Wire Line
	9900 1800 9750 1800
Text Label 9750 1500 0    50   ~ 0
GND
Text Label 9750 1600 0    50   ~ 0
VDD
Text Label 9750 1700 0    50   ~ 0
SCL
Text Label 9750 1800 0    50   ~ 0
SDA1
$Comp
L conn:Conn_01x04_Female J10
U 1 1 5C74E698
P 10600 1600
F 0 "J10" H 10627 1530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 10627 1485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 10600 1600 50  0001 C CNN
F 3 "~" H 10600 1600 50  0001 C CNN
	1    10600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 1500 10250 1500
Wire Wire Line
	10400 1600 10250 1600
Wire Wire Line
	10400 1700 10250 1700
Wire Wire Line
	10400 1800 10250 1800
Text Label 10250 1500 0    50   ~ 0
GND
Text Label 10250 1600 0    50   ~ 0
VDD
Text Label 10250 1700 0    50   ~ 0
SCL
Text Label 10250 1800 0    50   ~ 0
SDA1
$Comp
L conn:Conn_01x04_Female J11
U 1 1 5C77724B
P 7100 2100
F 0 "J11" H 7127 2030 50  0000 L CNN
F 1 "Conn_01x04_Female" H 7127 1985 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 7100 2100 50  0001 C CNN
F 3 "~" H 7100 2100 50  0001 C CNN
	1    7100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2000 6750 2000
Wire Wire Line
	6900 2100 6750 2100
Wire Wire Line
	6900 2200 6750 2200
Wire Wire Line
	6900 2300 6750 2300
Text Label 6750 2000 0    50   ~ 0
GND
Text Label 6750 2100 0    50   ~ 0
VDD
Text Label 6750 2200 0    50   ~ 0
SCL
Text Label 6750 2300 0    50   ~ 0
SDA2
$Comp
L conn:Conn_01x04_Female J12
U 1 1 5C78BF22
P 7600 2100
F 0 "J12" H 7627 2030 50  0000 L CNN
F 1 "Conn_01x04_Female" H 7627 1985 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 7600 2100 50  0001 C CNN
F 3 "~" H 7600 2100 50  0001 C CNN
	1    7600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2000 7250 2000
Wire Wire Line
	7400 2100 7250 2100
Wire Wire Line
	7400 2200 7250 2200
Wire Wire Line
	7400 2300 7250 2300
Text Label 7250 2000 0    50   ~ 0
GND
Text Label 7250 2100 0    50   ~ 0
VDD
Text Label 7250 2200 0    50   ~ 0
SCL
Text Label 7250 2300 0    50   ~ 0
SDA2
$Comp
L conn:Conn_01x04_Female J19
U 1 1 5C7A14C9
P 7100 2600
F 0 "J19" H 7127 2530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 7127 2485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 7100 2600 50  0001 C CNN
F 3 "~" H 7100 2600 50  0001 C CNN
	1    7100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2500 6750 2500
Wire Wire Line
	6900 2600 6750 2600
Wire Wire Line
	6900 2700 6750 2700
Wire Wire Line
	6900 2800 6750 2800
Text Label 6750 2500 0    50   ~ 0
GND
Text Label 6750 2600 0    50   ~ 0
VDD
Text Label 6750 2700 0    50   ~ 0
SCL
Text Label 6750 2800 0    50   ~ 0
SDA3
$Comp
L conn:Conn_01x04_Female J20
U 1 1 5C7A14D8
P 7600 2600
F 0 "J20" H 7627 2530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 7627 2485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 7600 2600 50  0001 C CNN
F 3 "~" H 7600 2600 50  0001 C CNN
	1    7600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2500 7250 2500
Wire Wire Line
	7400 2600 7250 2600
Wire Wire Line
	7400 2700 7250 2700
Wire Wire Line
	7400 2800 7250 2800
Text Label 7250 2500 0    50   ~ 0
GND
Text Label 7250 2600 0    50   ~ 0
VDD
Text Label 7250 2700 0    50   ~ 0
SCL
Text Label 7250 2800 0    50   ~ 0
SDA3
$Comp
L conn:Conn_01x04_Female J27
U 1 1 5C7B802E
P 7100 3100
F 0 "J27" H 7127 3030 50  0000 L CNN
F 1 "Conn_01x04_Female" H 7127 2985 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 7100 3100 50  0001 C CNN
F 3 "~" H 7100 3100 50  0001 C CNN
	1    7100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3000 6750 3000
Wire Wire Line
	6900 3100 6750 3100
Wire Wire Line
	6900 3200 6750 3200
Wire Wire Line
	6900 3300 6750 3300
Text Label 6750 3000 0    50   ~ 0
GND
Text Label 6750 3100 0    50   ~ 0
VDD
Text Label 6750 3200 0    50   ~ 0
SCL
Text Label 6750 3300 0    50   ~ 0
SDA4
$Comp
L conn:Conn_01x04_Female J13
U 1 1 5C7D037C
P 8100 2100
F 0 "J13" H 8127 2030 50  0000 L CNN
F 1 "Conn_01x04_Female" H 8127 1985 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 8100 2100 50  0001 C CNN
F 3 "~" H 8100 2100 50  0001 C CNN
	1    8100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2000 7750 2000
Wire Wire Line
	7900 2100 7750 2100
Wire Wire Line
	7900 2200 7750 2200
Wire Wire Line
	7900 2300 7750 2300
Text Label 7750 2000 0    50   ~ 0
GND
Text Label 7750 2100 0    50   ~ 0
VDD
Text Label 7750 2200 0    50   ~ 0
SCL
Text Label 7750 2300 0    50   ~ 0
SDA2
$Comp
L conn:Conn_01x04_Female J14
U 1 1 5C7D038B
P 8600 2100
F 0 "J14" H 8627 2030 50  0000 L CNN
F 1 "Conn_01x04_Female" H 8627 1985 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 8600 2100 50  0001 C CNN
F 3 "~" H 8600 2100 50  0001 C CNN
	1    8600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2000 8250 2000
Wire Wire Line
	8400 2100 8250 2100
Wire Wire Line
	8400 2200 8250 2200
Wire Wire Line
	8400 2300 8250 2300
Text Label 8250 2000 0    50   ~ 0
GND
Text Label 8250 2100 0    50   ~ 0
VDD
Text Label 8250 2200 0    50   ~ 0
SCL
Text Label 8250 2300 0    50   ~ 0
SDA2
$Comp
L conn:Conn_01x04_Female J21
U 1 1 5C7D039A
P 8100 2600
F 0 "J21" H 8127 2530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 8127 2485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 8100 2600 50  0001 C CNN
F 3 "~" H 8100 2600 50  0001 C CNN
	1    8100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2500 7750 2500
Wire Wire Line
	7900 2600 7750 2600
Wire Wire Line
	7900 2700 7750 2700
Wire Wire Line
	7900 2800 7750 2800
Text Label 7750 2500 0    50   ~ 0
GND
Text Label 7750 2600 0    50   ~ 0
VDD
Text Label 7750 2700 0    50   ~ 0
SCL
Text Label 7750 2800 0    50   ~ 0
SDA3
$Comp
L conn:Conn_01x04_Female J22
U 1 1 5C7D03A9
P 8600 2600
F 0 "J22" H 8627 2530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 8627 2485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 8600 2600 50  0001 C CNN
F 3 "~" H 8600 2600 50  0001 C CNN
	1    8600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2500 8250 2500
Wire Wire Line
	8400 2600 8250 2600
Wire Wire Line
	8400 2700 8250 2700
Wire Wire Line
	8400 2800 8250 2800
Text Label 8250 2500 0    50   ~ 0
GND
Text Label 8250 2600 0    50   ~ 0
VDD
Text Label 8250 2700 0    50   ~ 0
SCL
Text Label 8250 2800 0    50   ~ 0
SDA3
NoConn ~ 10050 2200
$Comp
L conn:Conn_01x04_Female J15
U 1 1 5C7EC8E2
P 9100 2100
F 0 "J15" H 9127 2030 50  0000 L CNN
F 1 "Conn_01x04_Female" H 9127 1985 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 9100 2100 50  0001 C CNN
F 3 "~" H 9100 2100 50  0001 C CNN
	1    9100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2000 8750 2000
Wire Wire Line
	8900 2100 8750 2100
Wire Wire Line
	8900 2200 8750 2200
Wire Wire Line
	8900 2300 8750 2300
Text Label 8750 2000 0    50   ~ 0
GND
Text Label 8750 2100 0    50   ~ 0
VDD
Text Label 8750 2200 0    50   ~ 0
SCL
Text Label 8750 2300 0    50   ~ 0
SDA2
$Comp
L conn:Conn_01x04_Female J16
U 1 1 5C7EC8F1
P 9600 2100
F 0 "J16" H 9627 2030 50  0000 L CNN
F 1 "Conn_01x04_Female" H 9627 1985 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 9600 2100 50  0001 C CNN
F 3 "~" H 9600 2100 50  0001 C CNN
	1    9600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2000 9250 2000
Wire Wire Line
	9400 2100 9250 2100
Wire Wire Line
	9400 2200 9250 2200
Wire Wire Line
	9400 2300 9250 2300
Text Label 9250 2000 0    50   ~ 0
GND
Text Label 9250 2100 0    50   ~ 0
VDD
Text Label 9250 2200 0    50   ~ 0
SCL
Text Label 9250 2300 0    50   ~ 0
SDA2
$Comp
L conn:Conn_01x04_Female J23
U 1 1 5C7EC900
P 9100 2600
F 0 "J23" H 9127 2530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 9127 2485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 9100 2600 50  0001 C CNN
F 3 "~" H 9100 2600 50  0001 C CNN
	1    9100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2500 8750 2500
Wire Wire Line
	8900 2600 8750 2600
Wire Wire Line
	8900 2700 8750 2700
Wire Wire Line
	8900 2800 8750 2800
Text Label 8750 2500 0    50   ~ 0
GND
Text Label 8750 2600 0    50   ~ 0
VDD
Text Label 8750 2700 0    50   ~ 0
SCL
Text Label 8750 2800 0    50   ~ 0
SDA3
$Comp
L conn:Conn_01x04_Female J24
U 1 1 5C7EC90F
P 9600 2600
F 0 "J24" H 9627 2530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 9627 2485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 9600 2600 50  0001 C CNN
F 3 "~" H 9600 2600 50  0001 C CNN
	1    9600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2500 9250 2500
Wire Wire Line
	9400 2600 9250 2600
Wire Wire Line
	9400 2700 9250 2700
Wire Wire Line
	9400 2800 9250 2800
Text Label 9250 2500 0    50   ~ 0
GND
Text Label 9250 2600 0    50   ~ 0
VDD
Text Label 9250 2700 0    50   ~ 0
SCL
Text Label 9250 2800 0    50   ~ 0
SDA3
$Comp
L conn:Conn_01x04_Female J17
U 1 1 5C7EC93C
P 10100 2100
F 0 "J17" H 10127 2030 50  0000 L CNN
F 1 "Conn_01x04_Female" H 10127 1985 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 10100 2100 50  0001 C CNN
F 3 "~" H 10100 2100 50  0001 C CNN
	1    10100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2000 9750 2000
Wire Wire Line
	9900 2100 9750 2100
Wire Wire Line
	9900 2200 9750 2200
Wire Wire Line
	9900 2300 9750 2300
Text Label 9750 2000 0    50   ~ 0
GND
Text Label 9750 2100 0    50   ~ 0
VDD
Text Label 9750 2200 0    50   ~ 0
SCL
Text Label 9750 2300 0    50   ~ 0
SDA2
$Comp
L conn:Conn_01x04_Female J18
U 1 1 5C7EC94B
P 10600 2100
F 0 "J18" H 10627 2030 50  0000 L CNN
F 1 "Conn_01x04_Female" H 10627 1985 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 10600 2100 50  0001 C CNN
F 3 "~" H 10600 2100 50  0001 C CNN
	1    10600 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 2000 10250 2000
Wire Wire Line
	10400 2100 10250 2100
Wire Wire Line
	10400 2200 10250 2200
Wire Wire Line
	10400 2300 10250 2300
Text Label 10250 2000 0    50   ~ 0
GND
Text Label 10250 2100 0    50   ~ 0
VDD
Text Label 10250 2200 0    50   ~ 0
SCL
Text Label 10250 2300 0    50   ~ 0
SDA2
$Comp
L conn:Conn_01x04_Female J25
U 1 1 5C7EC95A
P 10100 2600
F 0 "J25" H 10127 2530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 10127 2485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 10100 2600 50  0001 C CNN
F 3 "~" H 10100 2600 50  0001 C CNN
	1    10100 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2500 9750 2500
Wire Wire Line
	9900 2600 9750 2600
Wire Wire Line
	9900 2700 9750 2700
Wire Wire Line
	9900 2800 9750 2800
Text Label 9750 2500 0    50   ~ 0
GND
Text Label 9750 2600 0    50   ~ 0
VDD
Text Label 9750 2700 0    50   ~ 0
SCL
Text Label 9750 2800 0    50   ~ 0
SDA3
$Comp
L conn:Conn_01x04_Female J26
U 1 1 5C7EC969
P 10600 2600
F 0 "J26" H 10627 2530 50  0000 L CNN
F 1 "Conn_01x04_Female" H 10627 2485 50  0001 L CNN
F 2 "Adafruit bicolor 8x8:Grove_1x04" H 10600 2600 50  0001 C CNN
F 3 "~" H 10600 2600 50  0001 C CNN
	1    10600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10400 2500 10250 2500
Wire Wire Line
	10400 2600 10250 2600
Wire Wire Line
	10400 2700 10250 2700
Wire Wire Line
	10400 2800 10250 2800
Text Label 10250 2500 0    50   ~ 0
GND
Text Label 10250 2600 0    50   ~ 0
VDD
Text Label 10250 2700 0    50   ~ 0
SCL
Text Label 10250 2800 0    50   ~ 0
SDA3
Text Label 900  3750 2    50   ~ 0
SDA4
$EndSCHEMATC
