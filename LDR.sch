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
Sheet 7 14
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
L Photores R19
U 1 1 5793F436
P 3250 2200
F 0 "R19" V 3330 2200 50  0000 C CNN
F 1 "LDR" V 3460 2200 50  0000 C TNN
F 2 "Sensores:LDR_TOKEN_PGM5_Series" V 3180 2200 50  0001 C CNN
F 3 "" H 3250 2200 50  0000 C CNN
F 4 "TOKEN" H 3250 2200 60  0001 C CNN "Fabricante"
F 5 "PGM5516" H 3250 2200 60  0001 C CNN "Ref"
F 6 "~" H 3250 2200 60  0001 C CNN "Potencia"
F 7 "~" H 3250 2200 60  0001 C CNN "Tolerancia"
F 8 "TME" H 3250 2200 60  0001 C CNN "Provedor"
F 9 "PGM5516" H 3250 2200 60  0001 C CNN "Ref_Proveedor"
	1    3250 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 5793F43D
P 3250 3250
F 0 "#PWR020" H 3250 3000 50  0001 C CNN
F 1 "GND" H 3250 3100 50  0000 C CNN
F 2 "" H 3250 3250 50  0000 C CNN
F 3 "" H 3250 3250 50  0000 C CNN
	1    3250 3250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR021
U 1 1 5793F443
P 3250 1700
F 0 "#PWR021" H 3250 1550 50  0001 C CNN
F 1 "+5V" H 3250 1840 50  0000 C CNN
F 2 "" H 3250 1700 50  0000 C CNN
F 3 "" H 3250 1700 50  0000 C CNN
	1    3250 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1950 3250 1700
Wire Wire Line
	3250 3050 3250 3250
Connection ~ 3250 2600
Wire Wire Line
	3250 2600 3800 2600
Wire Wire Line
	3250 2450 3250 2750
$Comp
L R R20
U 1 1 5793F455
P 3250 2900
F 0 "R20" V 3330 2900 50  0000 C CNN
F 1 "1K" V 3250 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 3180 2900 50  0001 C CNN
F 3 "" H 3250 2900 50  0000 C CNN
F 4 "SR_PASSIVES" H 3250 2900 60  0001 C CNN "Fabricante"
F 5 "CF1/4W-1K" H 3250 2900 60  0001 C CNN "Ref"
F 6 "1/4W" H 3250 2900 60  0001 C CNN "Potencia"
F 7 "5%" H 3250 2900 60  0001 C CNN "Tolerancia"
F 8 "TME" H 3250 2900 60  0001 C CNN "Provedor"
F 9 "CF1/4W-1K" H 3250 2900 60  0001 C CNN "Ref_Proveedor"
	1    3250 2900
	-1   0    0    1   
$EndComp
Text GLabel 3800 2600 2    60   Output ~ 0
A6
$EndSCHEMATC
