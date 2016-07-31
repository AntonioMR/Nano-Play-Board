EESchema Schematic File Version 2
LIBS:Sensores
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:MyLibrary
LIBS:Arduino_nano_PB-cache
EELAYER 25 0
EELAYER END
$Descr User 8268 5846
encoding utf-8
Sheet 10 15
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
L CONN_01X03 P2
U 1 1 5794EA47
P 2800 2200
F 0 "P2" H 2878 2241 50  0000 L CNN
F 1 "CONN_01X03" H 2878 2150 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 2800 2200 50  0001 C CNN
F 3 "" H 2800 2200 50  0000 C CNN
	1    2800 2200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P3
U 1 1 5794EAA8
P 2800 2900
F 0 "P3" H 2878 2941 50  0000 L CNN
F 1 "CONN_01X03" H 2878 2850 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 2800 2900 50  0001 C CNN
F 3 "" H 2800 2900 50  0000 C CNN
	1    2800 2900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR032
U 1 1 5794EAD6
P 2350 1750
F 0 "#PWR032" H 2350 1600 50  0001 C CNN
F 1 "+5V" H 2365 1923 50  0000 C CNN
F 2 "" H 2350 1750 50  0000 C CNN
F 3 "" H 2350 1750 50  0000 C CNN
	1    2350 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 5794EAEE
P 2450 3350
F 0 "#PWR033" H 2450 3100 50  0001 C CNN
F 1 "GND" H 2455 3177 50  0000 C CNN
F 2 "" H 2450 3350 50  0000 C CNN
F 3 "" H 2450 3350 50  0000 C CNN
	1    2450 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1750 2350 2900
Wire Wire Line
	2350 2200 2600 2200
Wire Wire Line
	2350 2900 2600 2900
Connection ~ 2350 2200
Wire Wire Line
	2600 2300 2450 2300
Wire Wire Line
	2450 2300 2450 3350
Wire Wire Line
	2450 3000 2600 3000
Connection ~ 2450 3000
Wire Wire Line
	2600 2800 2150 2800
Wire Wire Line
	2150 2100 2600 2100
Text GLabel 2150 2100 0    60   Input ~ 0
D5
Text GLabel 2150 2800 0    60   Input ~ 0
D6
$EndSCHEMATC
