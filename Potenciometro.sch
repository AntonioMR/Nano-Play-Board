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
Sheet 8 13
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
L POT RV1
U 1 1 5793F630
P 1650 1800
F 0 "RV1" H 1650 1720 50  0000 C CNN
F 1 "10K" H 1650 1800 50  0000 C CNN
F 2 "Potenciometros:POT_SR_PASIVES_R9011" H 1650 1800 50  0001 C CNN
F 3 "" H 1650 1800 50  0000 C CNN
F 4 "SR PASSIVES" H 1650 1800 60  0001 C CNN "Fabricante"
F 5 "R9011-1-10K" H 1650 1800 60  0001 C CNN "Ref"
F 6 "~" H 1650 1800 60  0001 C CNN "Potencia"
F 7 "~" H 1650 1800 60  0001 C CNN "Tolerancia"
F 8 "TME" H 1650 1800 60  0001 C CNN "Provedor"
F 9 "R9011-1-10K" H 1650 1800 60  0001 C CNN "Ref_Proveedor"
	1    1650 1800
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR022
U 1 1 5793F637
P 1650 1450
F 0 "#PWR022" H 1650 1300 50  0001 C CNN
F 1 "+5V" H 1650 1590 50  0000 C CNN
F 2 "" H 1650 1450 50  0000 C CNN
F 3 "" H 1650 1450 50  0000 C CNN
	1    1650 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 5793F63D
P 1650 2300
F 0 "#PWR023" H 1650 2050 50  0001 C CNN
F 1 "GND" H 1650 2150 50  0000 C CNN
F 2 "" H 1650 2300 50  0000 C CNN
F 3 "" H 1650 2300 50  0000 C CNN
	1    1650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 1800 2150 1800
Wire Wire Line
	1650 1650 1650 1450
Wire Wire Line
	1650 2300 1650 1950
Text GLabel 2150 1800 2    60   Output ~ 0
A7
$EndSCHEMATC
