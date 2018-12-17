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
P 3600 2350
F 0 "U1" H 3600 3997 42  0000 C CNN
F 1 "HT16K33_SOP28" H 3600 3918 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOP28_300MIL" H 3600 2350 50  0001 C CNN
F 3 "" H 3600 2350 50  0001 C CNN
	1    3600 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 4600 4850 4600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D25
U 1 1 5C1B6DF6
P 4650 5050
F 0 "D25" H 4650 5150 42  0000 C CNN
F 1 "1N4148" H 4650 4950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 4650 5050 50  0001 C CNN
F 3 "" H 4650 5050 50  0001 C CNN
	1    4650 5050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW25
U 1 1 5C1C522A
P 4650 4700
F 0 "SW25" H 4650 4900 50  0000 C CNN
F 1 "SW_Push_LED" H 4650 4550 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 4650 5000 50  0001 C CNN
F 3 "" H 4650 5000 50  0001 C CNN
	1    4650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5050 4900 5050
Wire Wire Line
	4900 4600 4900 5050
Wire Wire Line
	4500 5050 4500 5250
Wire Wire Line
	4500 5050 4550 5050
Connection ~ 4500 5250
Wire Wire Line
	5450 4600 5400 4600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D26
U 1 1 5C1C55FE
P 5200 5050
F 0 "D26" H 5200 5150 42  0000 C CNN
F 1 "1N4148" H 5200 4950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 5200 5050 50  0001 C CNN
F 3 "" H 5200 5050 50  0001 C CNN
	1    5200 5050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW26
U 1 1 5C1C5605
P 5200 4700
F 0 "SW26" H 5200 4900 50  0000 C CNN
F 1 "SW_Push_LED" H 5200 4550 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 5200 5000 50  0001 C CNN
F 3 "" H 5200 5000 50  0001 C CNN
	1    5200 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5050 5450 5050
Wire Wire Line
	5450 4600 5450 5050
Wire Wire Line
	5050 5050 5050 5250
Wire Wire Line
	5050 5050 5100 5050
Connection ~ 5050 5250
Wire Wire Line
	4500 5250 5050 5250
Wire Wire Line
	4900 3800 4850 3800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D13
U 1 1 5C1E056E
P 4650 4250
F 0 "D13" H 4650 4350 42  0000 C CNN
F 1 "1N4148" H 4650 4150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 4650 4250 50  0001 C CNN
F 3 "" H 4650 4250 50  0001 C CNN
	1    4650 4250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW13
U 1 1 5C1E0575
P 4650 3900
F 0 "SW13" H 4650 4100 50  0000 C CNN
F 1 "SW_Push_LED" H 4650 3750 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 4650 4200 50  0001 C CNN
F 3 "" H 4650 4200 50  0001 C CNN
	1    4650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4250 4900 4250
Wire Wire Line
	4900 3800 4900 4250
Wire Wire Line
	4500 4250 4500 4450
Wire Wire Line
	4500 4250 4550 4250
Connection ~ 4500 4450
Wire Wire Line
	5450 3800 5400 3800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D14
U 1 1 5C1E0584
P 5200 4250
F 0 "D14" H 5200 4350 42  0000 C CNN
F 1 "1N4148" H 5200 4150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 5200 4250 50  0001 C CNN
F 3 "" H 5200 4250 50  0001 C CNN
	1    5200 4250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW14
U 1 1 5C1E058B
P 5200 3900
F 0 "SW14" H 5200 4100 50  0000 C CNN
F 1 "SW_Push_LED" H 5200 3750 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 5200 4200 50  0001 C CNN
F 3 "" H 5200 4200 50  0001 C CNN
	1    5200 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 4250 5450 4250
Wire Wire Line
	5450 3800 5450 4250
Wire Wire Line
	5050 4250 5050 4450
Wire Wire Line
	4400 3800 4450 3800
Wire Wire Line
	4950 3800 5000 3800
Wire Wire Line
	5050 4250 5100 4250
Wire Wire Line
	4450 4600 4400 4600
Wire Wire Line
	4400 3800 4400 4450
Wire Wire Line
	4500 4450 5050 4450
Wire Wire Line
	4950 3800 4950 4600
Wire Wire Line
	4950 4600 5000 4600
Wire Wire Line
	6000 4600 5950 4600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D27
U 1 1 5C1E8856
P 5750 5050
F 0 "D27" H 5750 5150 42  0000 C CNN
F 1 "1N4148" H 5750 4950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 5750 5050 50  0001 C CNN
F 3 "" H 5750 5050 50  0001 C CNN
	1    5750 5050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW27
U 1 1 5C1E885C
P 5750 4700
F 0 "SW27" H 5750 4900 50  0000 C CNN
F 1 "SW_Push_LED" H 5750 4550 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 5750 5000 50  0001 C CNN
F 3 "" H 5750 5000 50  0001 C CNN
	1    5750 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5050 6000 5050
Wire Wire Line
	6000 4600 6000 5050
Wire Wire Line
	5600 5050 5600 5250
Wire Wire Line
	5600 5050 5650 5050
Connection ~ 5600 5250
Wire Wire Line
	6550 4600 6500 4600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D28
U 1 1 5C1E8869
P 6300 5050
F 0 "D28" H 6300 5150 42  0000 C CNN
F 1 "1N4148" H 6300 4950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 6300 5050 50  0001 C CNN
F 3 "" H 6300 5050 50  0001 C CNN
	1    6300 5050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW28
U 1 1 5C1E886F
P 6300 4700
F 0 "SW28" H 6300 4900 50  0000 C CNN
F 1 "SW_Push_LED" H 6300 4550 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 6300 5000 50  0001 C CNN
F 3 "" H 6300 5000 50  0001 C CNN
	1    6300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5050 6550 5050
Wire Wire Line
	6550 4600 6550 5050
Wire Wire Line
	6150 5050 6150 5250
Wire Wire Line
	6150 5050 6200 5050
Connection ~ 6150 5250
Wire Wire Line
	5600 5250 6150 5250
Wire Wire Line
	6000 3800 5950 3800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D15
U 1 1 5C1E887D
P 5750 4250
F 0 "D15" H 5750 4350 42  0000 C CNN
F 1 "1N4148" H 5750 4150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 5750 4250 50  0001 C CNN
F 3 "" H 5750 4250 50  0001 C CNN
	1    5750 4250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW15
U 1 1 5C1E8883
P 5750 3900
F 0 "SW15" H 5750 4100 50  0000 C CNN
F 1 "SW_Push_LED" H 5750 3750 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 5750 4200 50  0001 C CNN
F 3 "" H 5750 4200 50  0001 C CNN
	1    5750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 4250 6000 4250
Wire Wire Line
	6000 3800 6000 4250
Wire Wire Line
	5600 4250 5600 4450
Wire Wire Line
	5600 4250 5650 4250
Connection ~ 5600 4450
Wire Wire Line
	6550 3800 6500 3800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D16
U 1 1 5C1E888F
P 6300 4250
F 0 "D16" H 6300 4350 42  0000 C CNN
F 1 "1N4148" H 6300 4150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 6300 4250 50  0001 C CNN
F 3 "" H 6300 4250 50  0001 C CNN
	1    6300 4250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW16
U 1 1 5C1E8895
P 6300 3900
F 0 "SW16" H 6300 4100 50  0000 C CNN
F 1 "SW_Push_LED" H 6300 3750 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 6300 4200 50  0001 C CNN
F 3 "" H 6300 4200 50  0001 C CNN
	1    6300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4250 6550 4250
Wire Wire Line
	6550 3800 6550 4250
Wire Wire Line
	6150 4250 6150 4450
Connection ~ 6150 4450
Wire Wire Line
	5500 3800 5550 3800
Wire Wire Line
	6050 3800 6100 3800
Wire Wire Line
	6150 4250 6200 4250
Wire Wire Line
	5550 4600 5500 4600
Wire Wire Line
	5500 3800 5500 4450
Wire Wire Line
	5600 4450 6150 4450
Wire Wire Line
	6050 3800 6050 4600
Wire Wire Line
	6050 4600 6100 4600
Wire Wire Line
	5500 4450 5500 4600
Wire Wire Line
	5050 5250 5600 5250
Connection ~ 4400 3800
Connection ~ 4950 3800
Connection ~ 5500 3800
Connection ~ 6050 3800
Wire Wire Line
	4900 3000 4850 3000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D1
U 1 1 5C1EED58
P 4650 3450
F 0 "D1" H 4650 3550 42  0000 C CNN
F 1 "1N4148" H 4650 3350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 4650 3450 50  0001 C CNN
F 3 "" H 4650 3450 50  0001 C CNN
	1    4650 3450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW1
U 1 1 5C1EED5F
P 4650 3100
F 0 "SW1" H 4650 3300 50  0000 C CNN
F 1 "SW_Push_LED" H 4650 2950 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 4650 3400 50  0001 C CNN
F 3 "" H 4650 3400 50  0001 C CNN
	1    4650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3450 4900 3450
Wire Wire Line
	4900 3000 4900 3450
Wire Wire Line
	4500 3450 4500 3650
Wire Wire Line
	4500 3450 4550 3450
Connection ~ 4500 3650
Wire Wire Line
	5450 3000 5400 3000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D2
U 1 1 5C1EED6C
P 5200 3450
F 0 "D2" H 5200 3550 42  0000 C CNN
F 1 "1N4148" H 5200 3350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 5200 3450 50  0001 C CNN
F 3 "" H 5200 3450 50  0001 C CNN
	1    5200 3450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW2
U 1 1 5C1EED73
P 5200 3100
F 0 "SW2" H 5200 3300 50  0000 C CNN
F 1 "SW_Push_LED" H 5200 2950 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 5200 3400 50  0001 C CNN
F 3 "" H 5200 3400 50  0001 C CNN
	1    5200 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3450 5450 3450
Wire Wire Line
	5450 3000 5450 3450
Wire Wire Line
	5050 3450 5050 3650
Connection ~ 5050 3650
Wire Wire Line
	4400 3000 4450 3000
Wire Wire Line
	4950 3000 5000 3000
Wire Wire Line
	5050 3450 5100 3450
Wire Wire Line
	4400 3650 4500 3650
Wire Wire Line
	4400 3650 4350 3650
Wire Wire Line
	4500 3650 4950 3650
Wire Wire Line
	6000 3000 5950 3000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D3
U 1 1 5C1EED87
P 5750 3450
F 0 "D3" H 5750 3550 42  0000 C CNN
F 1 "1N4148" H 5750 3350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 5750 3450 50  0001 C CNN
F 3 "" H 5750 3450 50  0001 C CNN
	1    5750 3450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW3
U 1 1 5C1EED8E
P 5750 3100
F 0 "SW3" H 5750 3300 50  0000 C CNN
F 1 "SW_Push_LED" H 5750 2950 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 5750 3400 50  0001 C CNN
F 3 "" H 5750 3400 50  0001 C CNN
	1    5750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3450 6000 3450
Wire Wire Line
	6000 3000 6000 3450
Wire Wire Line
	5600 3450 5600 3650
Wire Wire Line
	5600 3450 5650 3450
Connection ~ 5600 3650
Wire Wire Line
	6550 3000 6500 3000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D4
U 1 1 5C1EED9B
P 6300 3450
F 0 "D4" H 6300 3550 42  0000 C CNN
F 1 "1N4148" H 6300 3350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 6300 3450 50  0001 C CNN
F 3 "" H 6300 3450 50  0001 C CNN
	1    6300 3450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW4
U 1 1 5C1EEDA2
P 6300 3100
F 0 "SW4" H 6300 3300 50  0000 C CNN
F 1 "SW_Push_LED" H 6300 2950 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 6300 3400 50  0001 C CNN
F 3 "" H 6300 3400 50  0001 C CNN
	1    6300 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3450 6550 3450
Wire Wire Line
	6550 3000 6550 3450
Wire Wire Line
	6150 3450 6150 3650
Connection ~ 6150 3650
Wire Wire Line
	5500 3000 5550 3000
Wire Wire Line
	6050 3000 6100 3000
Wire Wire Line
	6150 3450 6200 3450
Wire Wire Line
	5500 3650 5600 3650
Wire Wire Line
	5600 3650 6050 3650
Connection ~ 4400 3000
Connection ~ 4950 3000
Connection ~ 5500 3000
Connection ~ 6050 3000
Wire Wire Line
	7100 4600 7050 4600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D29
U 1 1 5C25FBD4
P 6850 5050
F 0 "D29" H 6850 5150 42  0000 C CNN
F 1 "1N4148" H 6850 4950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 6850 5050 50  0001 C CNN
F 3 "" H 6850 5050 50  0001 C CNN
	1    6850 5050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW29
U 1 1 5C25FBDB
P 6850 4700
F 0 "SW29" H 6850 4900 50  0000 C CNN
F 1 "SW_Push_LED" H 6850 4550 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 6850 5000 50  0001 C CNN
F 3 "" H 6850 5000 50  0001 C CNN
	1    6850 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5050 7100 5050
Wire Wire Line
	7100 4600 7100 5050
Wire Wire Line
	6700 5050 6700 5250
Wire Wire Line
	6700 5050 6750 5050
Connection ~ 6700 5250
Wire Wire Line
	7650 4600 7600 4600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D30
U 1 1 5C25FBE8
P 7400 5050
F 0 "D30" H 7400 5150 42  0000 C CNN
F 1 "1N4148" H 7400 4950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 7400 5050 50  0001 C CNN
F 3 "" H 7400 5050 50  0001 C CNN
	1    7400 5050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW30
U 1 1 5C25FBEF
P 7400 4700
F 0 "SW30" H 7400 4900 50  0000 C CNN
F 1 "SW_Push_LED" H 7400 4550 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 7400 5000 50  0001 C CNN
F 3 "" H 7400 5000 50  0001 C CNN
	1    7400 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5050 7650 5050
Wire Wire Line
	7650 4600 7650 5050
Wire Wire Line
	7250 5050 7250 5250
Wire Wire Line
	7250 5050 7300 5050
Connection ~ 7250 5250
Wire Wire Line
	6700 5250 7250 5250
Wire Wire Line
	7100 3800 7050 3800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D17
U 1 1 5C25FBFD
P 6850 4250
F 0 "D17" H 6850 4350 42  0000 C CNN
F 1 "1N4148" H 6850 4150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 6850 4250 50  0001 C CNN
F 3 "" H 6850 4250 50  0001 C CNN
	1    6850 4250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW17
U 1 1 5C25FC04
P 6850 3900
F 0 "SW17" H 6850 4100 50  0000 C CNN
F 1 "SW_Push_LED" H 6850 3750 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 6850 4200 50  0001 C CNN
F 3 "" H 6850 4200 50  0001 C CNN
	1    6850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4250 7100 4250
Wire Wire Line
	7100 3800 7100 4250
Wire Wire Line
	6700 4250 6700 4450
Wire Wire Line
	6700 4250 6750 4250
Connection ~ 6700 4450
Wire Wire Line
	7650 3800 7600 3800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D18
U 1 1 5C25FC11
P 7400 4250
F 0 "D18" H 7400 4350 42  0000 C CNN
F 1 "1N4148" H 7400 4150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 7400 4250 50  0001 C CNN
F 3 "" H 7400 4250 50  0001 C CNN
	1    7400 4250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW18
U 1 1 5C25FC18
P 7400 3900
F 0 "SW18" H 7400 4100 50  0000 C CNN
F 1 "SW_Push_LED" H 7400 3750 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 7400 4200 50  0001 C CNN
F 3 "" H 7400 4200 50  0001 C CNN
	1    7400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4250 7650 4250
Wire Wire Line
	7650 3800 7650 4250
Wire Wire Line
	7250 4250 7250 4450
Connection ~ 7250 4450
Wire Wire Line
	6600 3800 6650 3800
Wire Wire Line
	7150 3800 7200 3800
Wire Wire Line
	7250 4250 7300 4250
Wire Wire Line
	6650 4600 6600 4600
Wire Wire Line
	6600 3800 6600 4450
Wire Wire Line
	6700 4450 7250 4450
Wire Wire Line
	7150 3800 7150 4600
Wire Wire Line
	7150 4600 7200 4600
Wire Wire Line
	8200 4600 8150 4600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D31
U 1 1 5C25FC2E
P 7950 5050
F 0 "D31" H 7950 5150 42  0000 C CNN
F 1 "1N4148" H 7950 4950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 7950 5050 50  0001 C CNN
F 3 "" H 7950 5050 50  0001 C CNN
	1    7950 5050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW31
U 1 1 5C25FC35
P 7950 4700
F 0 "SW31" H 7950 4900 50  0000 C CNN
F 1 "SW_Push_LED" H 7950 4550 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 7950 5000 50  0001 C CNN
F 3 "" H 7950 5000 50  0001 C CNN
	1    7950 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5050 8200 5050
Wire Wire Line
	8200 4600 8200 5050
Wire Wire Line
	7800 5050 7800 5250
Wire Wire Line
	7800 5050 7850 5050
Connection ~ 7800 5250
Wire Wire Line
	8750 4600 8700 4600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D32
U 1 1 5C25FC42
P 8500 5050
F 0 "D32" H 8500 5150 42  0000 C CNN
F 1 "1N4148" H 8500 4950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 8500 5050 50  0001 C CNN
F 3 "" H 8500 5050 50  0001 C CNN
	1    8500 5050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW32
U 1 1 5C25FC49
P 8500 4700
F 0 "SW32" H 8500 4900 50  0000 C CNN
F 1 "SW_Push_LED" H 8500 4550 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 8500 5000 50  0001 C CNN
F 3 "" H 8500 5000 50  0001 C CNN
	1    8500 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5050 8750 5050
Wire Wire Line
	8750 4600 8750 5050
Wire Wire Line
	8350 5050 8350 5250
Wire Wire Line
	8350 5050 8400 5050
Connection ~ 8350 5250
Wire Wire Line
	7800 5250 8350 5250
Wire Wire Line
	8200 3800 8150 3800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D19
U 1 1 5C25FC57
P 7950 4250
F 0 "D19" H 7950 4350 42  0000 C CNN
F 1 "1N4148" H 7950 4150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 7950 4250 50  0001 C CNN
F 3 "" H 7950 4250 50  0001 C CNN
	1    7950 4250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW19
U 1 1 5C25FC5E
P 7950 3900
F 0 "SW19" H 7950 4100 50  0000 C CNN
F 1 "SW_Push_LED" H 7950 3750 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 7950 4200 50  0001 C CNN
F 3 "" H 7950 4200 50  0001 C CNN
	1    7950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4250 8200 4250
Wire Wire Line
	8200 3800 8200 4250
Wire Wire Line
	7800 4250 7800 4450
Wire Wire Line
	7800 4250 7850 4250
Connection ~ 7800 4450
Wire Wire Line
	8750 3800 8700 3800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D20
U 1 1 5C25FC6B
P 8500 4250
F 0 "D20" H 8500 4350 42  0000 C CNN
F 1 "1N4148" H 8500 4150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 8500 4250 50  0001 C CNN
F 3 "" H 8500 4250 50  0001 C CNN
	1    8500 4250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW20
U 1 1 5C25FC72
P 8500 3900
F 0 "SW20" H 8500 4100 50  0000 C CNN
F 1 "SW_Push_LED" H 8500 3750 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 8500 4200 50  0001 C CNN
F 3 "" H 8500 4200 50  0001 C CNN
	1    8500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4250 8750 4250
Wire Wire Line
	8750 3800 8750 4250
Wire Wire Line
	8350 4250 8350 4450
Connection ~ 8350 4450
Wire Wire Line
	7700 3800 7750 3800
Wire Wire Line
	8250 3800 8300 3800
Wire Wire Line
	8350 4250 8400 4250
Wire Wire Line
	7750 4600 7700 4600
Wire Wire Line
	7700 3800 7700 4450
Wire Wire Line
	7800 4450 8350 4450
Wire Wire Line
	8250 3800 8250 4600
Wire Wire Line
	8250 4600 8300 4600
Wire Wire Line
	7700 4450 7700 4600
Wire Wire Line
	7250 5250 7800 5250
Connection ~ 6600 3800
Connection ~ 7150 3800
Connection ~ 7700 3800
Connection ~ 8250 3800
Wire Wire Line
	7100 3000 7050 3000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D5
U 1 1 5C25FC95
P 6850 3450
F 0 "D5" H 6850 3550 42  0000 C CNN
F 1 "1N4148" H 6850 3350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 6850 3450 50  0001 C CNN
F 3 "" H 6850 3450 50  0001 C CNN
	1    6850 3450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW5
U 1 1 5C25FC9C
P 6850 3100
F 0 "SW5" H 6850 3300 50  0000 C CNN
F 1 "SW_Push_LED" H 6850 2950 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 6850 3400 50  0001 C CNN
F 3 "" H 6850 3400 50  0001 C CNN
	1    6850 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3450 7100 3450
Wire Wire Line
	7100 3000 7100 3450
Wire Wire Line
	6700 3450 6700 3650
Wire Wire Line
	6700 3450 6750 3450
Connection ~ 6700 3650
Wire Wire Line
	7650 3000 7600 3000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D6
U 1 1 5C25FCA9
P 7400 3450
F 0 "D6" H 7400 3550 42  0000 C CNN
F 1 "1N4148" H 7400 3350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 7400 3450 50  0001 C CNN
F 3 "" H 7400 3450 50  0001 C CNN
	1    7400 3450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW6
U 1 1 5C25FCB0
P 7400 3100
F 0 "SW6" H 7400 3300 50  0000 C CNN
F 1 "SW_Push_LED" H 7400 2950 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 7400 3400 50  0001 C CNN
F 3 "" H 7400 3400 50  0001 C CNN
	1    7400 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3450 7650 3450
Wire Wire Line
	7650 3000 7650 3450
Wire Wire Line
	7250 3450 7250 3650
Connection ~ 7250 3650
Wire Wire Line
	6600 3000 6650 3000
Wire Wire Line
	7150 3000 7200 3000
Wire Wire Line
	7250 3450 7300 3450
Wire Wire Line
	6600 3650 6700 3650
Wire Wire Line
	6700 3650 7150 3650
Wire Wire Line
	8200 3000 8150 3000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D7
U 1 1 5C25FCC4
P 7950 3450
F 0 "D7" H 7950 3550 42  0000 C CNN
F 1 "1N4148" H 7950 3350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 7950 3450 50  0001 C CNN
F 3 "" H 7950 3450 50  0001 C CNN
	1    7950 3450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW7
U 1 1 5C25FCCB
P 7950 3100
F 0 "SW7" H 7950 3300 50  0000 C CNN
F 1 "SW_Push_LED" H 7950 2950 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 7950 3400 50  0001 C CNN
F 3 "" H 7950 3400 50  0001 C CNN
	1    7950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3450 8200 3450
Wire Wire Line
	8200 3000 8200 3450
Wire Wire Line
	7800 3450 7800 3650
Wire Wire Line
	7800 3450 7850 3450
Connection ~ 7800 3650
Wire Wire Line
	8750 3000 8700 3000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D8
U 1 1 5C25FCD8
P 8500 3450
F 0 "D8" H 8500 3550 42  0000 C CNN
F 1 "1N4148" H 8500 3350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 8500 3450 50  0001 C CNN
F 3 "" H 8500 3450 50  0001 C CNN
	1    8500 3450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW8
U 1 1 5C25FCDF
P 8500 3100
F 0 "SW8" H 8500 3300 50  0000 C CNN
F 1 "SW_Push_LED" H 8500 2950 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 8500 3400 50  0001 C CNN
F 3 "" H 8500 3400 50  0001 C CNN
	1    8500 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3450 8750 3450
Wire Wire Line
	8750 3000 8750 3450
Wire Wire Line
	8350 3450 8350 3650
Connection ~ 8350 3650
Wire Wire Line
	7700 3000 7750 3000
Wire Wire Line
	8250 3000 8300 3000
Wire Wire Line
	8350 3450 8400 3450
Wire Wire Line
	7700 3650 7800 3650
Wire Wire Line
	7800 3650 8250 3650
Connection ~ 6600 3000
Connection ~ 7150 3000
Connection ~ 7700 3000
Connection ~ 8250 3000
Wire Wire Line
	6150 5250 6700 5250
Wire Wire Line
	9300 4600 9250 4600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D33
U 1 1 5C26B431
P 9050 5050
F 0 "D33" H 9050 5150 42  0000 C CNN
F 1 "1N4148" H 9050 4950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 9050 5050 50  0001 C CNN
F 3 "" H 9050 5050 50  0001 C CNN
	1    9050 5050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW33
U 1 1 5C26B438
P 9050 4700
F 0 "SW33" H 9050 4900 50  0000 C CNN
F 1 "SW_Push_LED" H 9050 4550 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 9050 5000 50  0001 C CNN
F 3 "" H 9050 5000 50  0001 C CNN
	1    9050 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 5050 9300 5050
Wire Wire Line
	9300 4600 9300 5050
Wire Wire Line
	8900 5050 8900 5250
Wire Wire Line
	8900 5050 8950 5050
Connection ~ 8900 5250
Wire Wire Line
	9850 4600 9800 4600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D34
U 1 1 5C26B445
P 9600 5050
F 0 "D34" H 9600 5150 42  0000 C CNN
F 1 "1N4148" H 9600 4950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 9600 5050 50  0001 C CNN
F 3 "" H 9600 5050 50  0001 C CNN
	1    9600 5050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW34
U 1 1 5C26B44C
P 9600 4700
F 0 "SW34" H 9600 4900 50  0000 C CNN
F 1 "SW_Push_LED" H 9600 4550 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 9600 5000 50  0001 C CNN
F 3 "" H 9600 5000 50  0001 C CNN
	1    9600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 5050 9850 5050
Wire Wire Line
	9850 4600 9850 5050
Wire Wire Line
	9450 5050 9450 5250
Wire Wire Line
	9450 5050 9500 5050
Connection ~ 9450 5250
Wire Wire Line
	8900 5250 9450 5250
Wire Wire Line
	9300 3800 9250 3800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D21
U 1 1 5C26B45A
P 9050 4250
F 0 "D21" H 9050 4350 42  0000 C CNN
F 1 "1N4148" H 9050 4150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 9050 4250 50  0001 C CNN
F 3 "" H 9050 4250 50  0001 C CNN
	1    9050 4250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW21
U 1 1 5C26B461
P 9050 3900
F 0 "SW21" H 9050 4100 50  0000 C CNN
F 1 "SW_Push_LED" H 9050 3750 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 9050 4200 50  0001 C CNN
F 3 "" H 9050 4200 50  0001 C CNN
	1    9050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 4250 9300 4250
Wire Wire Line
	9300 3800 9300 4250
Wire Wire Line
	8900 4250 8900 4450
Wire Wire Line
	8900 4250 8950 4250
Connection ~ 8900 4450
Wire Wire Line
	9850 3800 9800 3800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D22
U 1 1 5C26B46E
P 9600 4250
F 0 "D22" H 9600 4350 42  0000 C CNN
F 1 "1N4148" H 9600 4150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 9600 4250 50  0001 C CNN
F 3 "" H 9600 4250 50  0001 C CNN
	1    9600 4250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW22
U 1 1 5C26B475
P 9600 3900
F 0 "SW22" H 9600 4100 50  0000 C CNN
F 1 "SW_Push_LED" H 9600 3750 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 9600 4200 50  0001 C CNN
F 3 "" H 9600 4200 50  0001 C CNN
	1    9600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 4250 9850 4250
Wire Wire Line
	9850 3800 9850 4250
Wire Wire Line
	9450 4250 9450 4450
Connection ~ 9450 4450
Wire Wire Line
	8800 3800 8850 3800
Wire Wire Line
	9350 3800 9400 3800
Wire Wire Line
	9450 4250 9500 4250
Wire Wire Line
	8850 4600 8800 4600
Wire Wire Line
	8800 3800 8800 4450
Wire Wire Line
	8900 4450 9450 4450
Wire Wire Line
	9350 3800 9350 4600
Wire Wire Line
	9350 4600 9400 4600
Wire Wire Line
	10400 4600 10350 4600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D35
U 1 1 5C26B48B
P 10150 5050
F 0 "D35" H 10150 5150 42  0000 C CNN
F 1 "1N4148" H 10150 4950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 10150 5050 50  0001 C CNN
F 3 "" H 10150 5050 50  0001 C CNN
	1    10150 5050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW35
U 1 1 5C26B492
P 10150 4700
F 0 "SW35" H 10150 4900 50  0000 C CNN
F 1 "SW_Push_LED" H 10150 4550 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 10150 5000 50  0001 C CNN
F 3 "" H 10150 5000 50  0001 C CNN
	1    10150 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 5050 10400 5050
Wire Wire Line
	10400 4600 10400 5050
Wire Wire Line
	10000 5050 10000 5250
Wire Wire Line
	10000 5050 10050 5050
Connection ~ 10000 5250
Wire Wire Line
	10950 4600 10900 4600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D36
U 1 1 5C26B49F
P 10700 5050
F 0 "D36" H 10700 5150 42  0000 C CNN
F 1 "1N4148" H 10700 4950 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 10700 5050 50  0001 C CNN
F 3 "" H 10700 5050 50  0001 C CNN
	1    10700 5050
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW36
U 1 1 5C26B4A6
P 10700 4700
F 0 "SW36" H 10700 4900 50  0000 C CNN
F 1 "SW_Push_LED" H 10700 4550 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 10700 5000 50  0001 C CNN
F 3 "" H 10700 5000 50  0001 C CNN
	1    10700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 5050 10950 5050
Wire Wire Line
	10950 4600 10950 5050
Wire Wire Line
	10550 5050 10550 5250
Wire Wire Line
	10550 5050 10600 5050
Wire Wire Line
	10000 5250 10550 5250
Wire Wire Line
	10400 3800 10350 3800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D23
U 1 1 5C26B4B4
P 10150 4250
F 0 "D23" H 10150 4350 42  0000 C CNN
F 1 "1N4148" H 10150 4150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 10150 4250 50  0001 C CNN
F 3 "" H 10150 4250 50  0001 C CNN
	1    10150 4250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW23
U 1 1 5C26B4BB
P 10150 3900
F 0 "SW23" H 10150 4100 50  0000 C CNN
F 1 "SW_Push_LED" H 10150 3750 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 10150 4200 50  0001 C CNN
F 3 "" H 10150 4200 50  0001 C CNN
	1    10150 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 4250 10400 4250
Wire Wire Line
	10400 3800 10400 4250
Wire Wire Line
	10000 4250 10000 4450
Wire Wire Line
	10000 4250 10050 4250
Connection ~ 10000 4450
Wire Wire Line
	10950 3800 10900 3800
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D24
U 1 1 5C26B4C8
P 10700 4250
F 0 "D24" H 10700 4350 42  0000 C CNN
F 1 "1N4148" H 10700 4150 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 10700 4250 50  0001 C CNN
F 3 "" H 10700 4250 50  0001 C CNN
	1    10700 4250
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW24
U 1 1 5C26B4CF
P 10700 3900
F 0 "SW24" H 10700 4100 50  0000 C CNN
F 1 "SW_Push_LED" H 10700 3750 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 10700 4200 50  0001 C CNN
F 3 "" H 10700 4200 50  0001 C CNN
	1    10700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 4250 10950 4250
Wire Wire Line
	10950 3800 10950 4250
Wire Wire Line
	10550 4250 10550 4450
Wire Wire Line
	9900 3800 9950 3800
Wire Wire Line
	10450 3800 10500 3800
Wire Wire Line
	10550 4250 10600 4250
Wire Wire Line
	9950 4600 9900 4600
Wire Wire Line
	9900 3800 9900 4450
Wire Wire Line
	10000 4450 10550 4450
Wire Wire Line
	10450 3800 10450 4600
Wire Wire Line
	10450 4600 10500 4600
Wire Wire Line
	9900 4450 9900 4600
Wire Wire Line
	9450 5250 10000 5250
Connection ~ 8800 3800
Connection ~ 9350 3800
Connection ~ 9900 3800
Connection ~ 10450 3800
Wire Wire Line
	9300 3000 9250 3000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D9
U 1 1 5C26B4F2
P 9050 3450
F 0 "D9" H 9050 3550 42  0000 C CNN
F 1 "1N4148" H 9050 3350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 9050 3450 50  0001 C CNN
F 3 "" H 9050 3450 50  0001 C CNN
	1    9050 3450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW9
U 1 1 5C26B4F9
P 9050 3100
F 0 "SW9" H 9050 3300 50  0000 C CNN
F 1 "SW_Push_LED" H 9050 2950 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 9050 3400 50  0001 C CNN
F 3 "" H 9050 3400 50  0001 C CNN
	1    9050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3450 9300 3450
Wire Wire Line
	9300 3000 9300 3450
Wire Wire Line
	8900 3450 8900 3650
Wire Wire Line
	8900 3450 8950 3450
Connection ~ 8900 3650
Wire Wire Line
	9850 3000 9800 3000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D10
U 1 1 5C26B506
P 9600 3450
F 0 "D10" H 9600 3550 42  0000 C CNN
F 1 "1N4148" H 9600 3350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 9600 3450 50  0001 C CNN
F 3 "" H 9600 3450 50  0001 C CNN
	1    9600 3450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW10
U 1 1 5C26B50D
P 9600 3100
F 0 "SW10" H 9600 3300 50  0000 C CNN
F 1 "SW_Push_LED" H 9600 2950 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 9600 3400 50  0001 C CNN
F 3 "" H 9600 3400 50  0001 C CNN
	1    9600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 3450 9850 3450
Wire Wire Line
	9850 3000 9850 3450
Wire Wire Line
	9450 3450 9450 3650
Connection ~ 9450 3650
Wire Wire Line
	8800 3000 8850 3000
Wire Wire Line
	9350 3000 9400 3000
Wire Wire Line
	9450 3450 9500 3450
Wire Wire Line
	8800 3650 8900 3650
Wire Wire Line
	8900 3650 9350 3650
Wire Wire Line
	10400 3000 10350 3000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D11
U 1 1 5C26B521
P 10150 3450
F 0 "D11" H 10150 3550 42  0000 C CNN
F 1 "1N4148" H 10150 3350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 10150 3450 50  0001 C CNN
F 3 "" H 10150 3450 50  0001 C CNN
	1    10150 3450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW11
U 1 1 5C26B528
P 10150 3100
F 0 "SW11" H 10150 3300 50  0000 C CNN
F 1 "SW_Push_LED" H 10150 2950 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 10150 3400 50  0001 C CNN
F 3 "" H 10150 3400 50  0001 C CNN
	1    10150 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 3450 10400 3450
Wire Wire Line
	10400 3000 10400 3450
Wire Wire Line
	10000 3450 10000 3650
Wire Wire Line
	10000 3450 10050 3450
Connection ~ 10000 3650
Wire Wire Line
	10950 3000 10900 3000
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D12
U 1 1 5C26B535
P 10700 3450
F 0 "D12" H 10700 3550 42  0000 C CNN
F 1 "1N4148" H 10700 3350 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 10700 3450 50  0001 C CNN
F 3 "" H 10700 3450 50  0001 C CNN
	1    10700 3450
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push_LED SW12
U 1 1 5C26B53C
P 10700 3100
F 0 "SW12" H 10700 3300 50  0000 C CNN
F 1 "SW_Push_LED" H 10700 2950 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 10700 3400 50  0001 C CNN
F 3 "" H 10700 3400 50  0001 C CNN
	1    10700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 3450 10950 3450
Wire Wire Line
	10950 3000 10950 3450
Wire Wire Line
	10550 3450 10550 3650
Wire Wire Line
	9900 3000 9950 3000
Wire Wire Line
	10450 3000 10500 3000
Wire Wire Line
	10550 3450 10600 3450
Wire Wire Line
	9900 3650 10000 3650
Wire Wire Line
	10000 3650 10450 3650
Connection ~ 8800 3000
Connection ~ 9350 3000
Connection ~ 9900 3000
Connection ~ 10450 3000
Wire Wire Line
	8350 5250 8900 5250
Wire Wire Line
	10450 2750 4200 2750
Wire Wire Line
	10450 2750 10450 3000
Wire Wire Line
	9900 2650 4200 2650
Wire Wire Line
	9900 2650 9900 3000
Wire Wire Line
	9350 2550 4200 2550
Wire Wire Line
	9350 2550 9350 3000
Wire Wire Line
	8800 2450 4200 2450
Wire Wire Line
	8800 2450 8800 3000
Wire Wire Line
	8250 2350 4200 2350
Wire Wire Line
	8250 2350 8250 3000
Wire Wire Line
	7700 2250 4200 2250
Wire Wire Line
	7700 2250 7700 3000
Wire Wire Line
	7150 2150 4200 2150
Wire Wire Line
	7150 2150 7150 3000
Wire Wire Line
	6600 2050 4200 2050
Wire Wire Line
	6600 2050 6600 3000
Wire Wire Line
	6050 1950 4200 1950
Wire Wire Line
	6050 1950 6050 3000
Wire Wire Line
	5500 1850 4200 1850
Wire Wire Line
	5500 1850 5500 3000
Wire Wire Line
	4950 1750 4200 1750
Wire Wire Line
	4950 1750 4950 3000
Wire Wire Line
	4400 1650 4200 1650
Wire Wire Line
	4400 1650 4400 3000
Wire Wire Line
	4400 4450 4400 4600
Wire Wire Line
	4950 3650 5050 3650
Wire Wire Line
	6050 3650 6150 3650
Wire Wire Line
	6600 4450 6600 4600
Wire Wire Line
	7150 3650 7250 3650
Wire Wire Line
	8250 3650 8350 3650
Wire Wire Line
	8800 4450 8800 4600
Wire Wire Line
	9350 3650 9450 3650
Wire Wire Line
	10450 3650 10550 3650
Wire Wire Line
	5050 3650 5500 3650
Wire Wire Line
	6150 3650 6600 3650
Wire Wire Line
	7250 3650 7700 3650
Wire Wire Line
	8350 3650 8800 3650
Wire Wire Line
	9450 3650 9900 3650
Wire Wire Line
	4350 3650 4350 3250
Wire Wire Line
	4350 3250 4200 3250
Wire Wire Line
	4200 3350 4300 3350
Wire Wire Line
	4300 3350 4300 4450
Wire Wire Line
	4200 3450 4250 3450
Wire Wire Line
	4250 3450 4250 5250
Wire Wire Line
	4250 5250 4500 5250
Connection ~ 5050 4450
Wire Wire Line
	4300 4450 4500 4450
Wire Wire Line
	4400 3000 4400 3800
Wire Wire Line
	4950 3000 4950 3800
Wire Wire Line
	5500 3000 5500 3800
Wire Wire Line
	6050 3000 6050 3800
Wire Wire Line
	5050 4450 5600 4450
Wire Wire Line
	6150 4450 6700 4450
Wire Wire Line
	6600 3000 6600 3800
Wire Wire Line
	7150 3000 7150 3800
Wire Wire Line
	7700 3000 7700 3800
Wire Wire Line
	7250 4450 7800 4450
Wire Wire Line
	8350 4450 8900 4450
Wire Wire Line
	8800 3000 8800 3800
Wire Wire Line
	8250 3000 8250 3800
Wire Wire Line
	9350 3000 9350 3800
Wire Wire Line
	9450 4450 10000 4450
Wire Wire Line
	9900 3000 9900 3800
Wire Wire Line
	10450 3000 10450 3800
$EndSCHEMATC
