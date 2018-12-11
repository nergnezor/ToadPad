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
P 3500 3200
F 0 "U1" H 3500 4847 42  0000 C CNN
F 1 "HT16K33_SOP28" H 3500 4768 42  0000 C CNN
F 2 "Adafruit bicolor 8x8:SOP28_300MIL" H 3500 3200 50  0001 C CNN
F 3 "" H 3500 3200 50  0001 C CNN
	1    3500 3200
	1    0    0    -1  
$EndComp
$Comp
L switches:SW_Push SW25
U 1 1 5C180421
P 4700 3700
F 0 "SW25" H 4700 3985 50  0000 C CNN
F 1 "SW_Push" H 4700 3894 50  0000 C CNN
F 2 "Adafruit bicolor 8x8:Kailh-PG1350-1u-No-Clickhole" H 4700 3900 50  0001 C CNN
F 3 "" H 4700 3900 50  0001 C CNN
	1    4700 3700
	1    0    0    1   
$EndComp
Wire Wire Line
	4950 3700 4900 3700
Wire Wire Line
	4500 3700 4500 3600
Wire Wire Line
	4100 4100 4950 4100
Wire Wire Line
	4100 3600 4500 3600
$Comp
L Adafruit_bicolor_8x8-eagle-import:DIODESOD-323F D1
U 1 1 5C1B6DF6
P 4950 3900
F 0 "D1" V 4990 3822 42  0000 R CNN
F 1 "DIODESOD-323F" V 4911 3822 42  0000 R CNN
F 2 "Adafruit bicolor 8x8:SOD-323F" H 4950 3900 50  0001 C CNN
F 3 "" H 4950 3900 50  0001 C CNN
	1    4950 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 3700 4950 3800
Wire Wire Line
	4950 4000 4950 4100
$EndSCHEMATC
