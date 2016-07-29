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
Sheet 6 14
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
L SPEAKER SP1
U 1 1 5793E03E
P 4200 2000
F 0 "SP1" H 4100 2250 50  0000 C CNN
F 1 "BUZZER" H 4100 1750 50  0000 C CNN
F 2 "Buzzer:LOUDITY_LD-BZPN-1705" H 4200 2000 50  0001 C CNN
F 3 "" H 4200 2000 50  0000 C CNN
F 4 "LOUDITY" H 4200 2000 60  0001 C CNN "Fabricante"
F 5 "LD-BZPN-1705" H 4200 2000 60  0001 C CNN "Ref"
F 6 "~" H 4200 2000 60  0001 C CNN "Potencia"
F 7 "~" H 4200 2000 60  0001 C CNN "Tolerancia"
F 8 "TME" H 4200 2000 60  0001 C CNN "Provedor"
F 9 "LD-BZPN-1705" H 4200 2000 60  0001 C CNN "Ref_Proveedor"
	1    4200 2000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5793E045
P 3700 2700
F 0 "#PWR019" H 3700 2450 50  0001 C CNN
F 1 "GND" H 3700 2550 50  0000 C CNN
F 2 "" H 3700 2700 50  0000 C CNN
F 3 "" H 3700 2700 50  0000 C CNN
	1    3700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1900 3350 1900
Wire Wire Line
	3700 2100 3700 2700
Wire Wire Line
	3900 2100 3700 2100
Text GLabel 3350 1900 0    60   Input ~ 0
D3
$EndSCHEMATC
