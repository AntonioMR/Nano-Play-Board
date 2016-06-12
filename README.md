# Arduino-Nano-Play-Board
Esta placa pretende ser una herramienta de iniciación a la experimentación y aprendizaje de recursos de programación y electrónica con el Arduino/Genuino Nano.
Dispone de varios sensores, actuadores y puertos para la conexión con otras placas de forma que sea posible explotar todas las funcionalidades de la plataforma Arduino.

## Sensores
- Una fotoresistencia conectada al pin de entrada analógica A0.
- Un potenciometro conectado al pin de entrada analógica A1.

## Actuadores
- Un buzzer conectado al pin de salida digital con capacidad de PWM D3.
- Un led RGB conectado a los pines de salida digital con capacidad de PWM D9, D10, D11 (rojo, verde y azul respectivamente).
- Una matriz de led's conectada a los pines de salida digital D2, D4, D5, A2 y A3 para el control de la columna a encender y un registro de desplazamiento controlado mediante los pines D13, D12 y A7 para indicar que fila de cada columna se encenderá.


## Estructura del repositorio
- Raiz: Fuentes del proyecto de la placa de circuito impreso para el software de diseño de PCB [KiCad](http://kicad-pcb.org/).
- Gerber : Ficheros de fabricacion en formato Gerber de la placa de circuito impreso.
- Imagenes : Renders de la placa de circuito impreso.
- Pdf : Ficheros para el montaje en formato pdf. Esquema del circuito, situacion de componentes, etc.
- Modelos3D : Modelos 3D en formato .wrl para la visualizacion en el proyecto del diseño de la PCB.
- Soft/lib : Librerias para el uso de los distintos elementos presentes en la placa.
- Soft/src : Ejemplos de uso de la placa. 

## Imagenes
Cara superior
![Cara superior](/Imagenes/cara_superior.png)

Cara inferior
![Cara inferior](/Imagenes/cara_inferior.png)


## Lista de materiales
Refencias | Valor | Total Uds
----------|-------|-----------
| R1, R2, R3 | [Resistencia 4.7 KOhm 1/4W](http://www.tme.eu/es/details/cf1_4w-4k3/resistencias-de-carbono-tht-14w/sr-passives/) | 3
| R4, R5, R6 | [Resistencia 100 Ohm 1/4W](http://www.tme.eu/es/details/cf1_4w-100r/resistencias-de-carbono-tht-14w/sr-passives/) | 3
| R8, R9, R10, R12, R13, R14, R15 | [Resistencia 120 Ohm 1/4W](http://www.tme.eu/es/details/cf1_4w-120r/resistencias-de-carbono-tht-14w/sr-passives/) | 7
| R7, R11, R16, R17, R18, R19 | [Resistencia 1 KOhm 1/4W](http://www.tme.eu/es/details/cf1_4w-1k/resistencias-de-carbono-tht-14w/sr-passives/) | 6
| R20 | [Resistencia LDR](http://www.tme.eu/es/details/pgm5516/fotoresistencias/token/) | 1
| C1 | [Condensador electrolitico 0,33 uF 50V](http://www.tme.eu/es/details/umt1hr33mdd/condensadores-electroliticos-tht-105c/nichicon/) | 1
| C2 | [Condensador electrolitico 0,1 uF 50V](http://www.tme.eu/es/details/umt1h0r1mdd/condensadores-electroliticos-tht-105c/nichicon/) | 1
| C3 | [Condensador ceramico 100 nF 50V](http://www.tme.eu/es/details/cc-100n/condensadores-ceramicos-tht-50v/sr-passives/) | 1
| D1 | [Diodo 1N4002](http://www.tme.eu/es/details/1n4002-dc/diodos-universales-tht/dc-components/1n4002/) | 1
| CON1 | [Conector Barrel Jack 5.5/2.1](http://www.tme.eu/es/details/fc68148/conectores-dc/cliff/) | 1
| P1 | [Tira de pines macho recto](http://www.tme.eu/es/details/4-103321-8/regletas-y-enchufes-de-taco/te-connectivity/) | 2 pines
| P7 | [Tira de pines macho recto](http://www.tme.eu/es/details/4-103321-8/regletas-y-enchufes-de-taco/te-connectivity/) | 4 pines
| U1 | [Regulador de tension 5VDC](http://www.tme.eu/es/details/lm7805ct/estabilizadores-de-tension-no-regulados/fairchild-semiconductor/) | 1
| U2 | [Registro de desplazamiento Serie->Paralelo 74HC595](http://www.tme.eu/es/details/sn74hc595d/registros-corredores/texas-instruments/) | 1
| U3 | [Matriz de Led's 7x5 Anodo](http://www.tme.eu/es/details/lmd07057bue-101a/pantallas-led-matrices/wenrun/) | 1
| U4 | [Arduino Nano](https://www.arduino.cc/en/Main/ArduinoBoardNano) | 1
| Q1, Q2, Q3 | [Transistor NPN BC547](http://www.tme.eu/es/details/bc547cbk-dio/transistores-npn-tht/diotec-semiconductor/bc547cbk/)| 3
| Q4, Q5, Q6, Q7, Q8 | [Transistor NPN 2N3904BU](http://www.tme.eu/es/details/2n3904bu/transistores-npn-tht/fairchild-semiconductor/)| 5
| LED1 | [Led RGB 5mm](http://www.tme.eu/es/details/ostama5b31a/diodos-led-tht-5mm/optosupply/)| 1
| SP1 | [Transductor de sonido piezoeléctrico](http://www.tme.eu/es/details/ld-bzpn-1705/transductores-piezoelect-sin-generador/loudity/)| 1
| RV1 | [Potenciometro 10K](http://www.tme.eu/es/details/r9011-1-10k/potenciometros-de-carbono-de-una-revol/sr-passives/)| 1

## Pines
Referencia | Pin 
----------|-------
| Fotoresistencia | A0 |
| Potenciometro | A1 |
| Altavoz piezoelectrónico | D3 |
| Pin Rojo RGB | D9 |
| Pin Verde RGB | D10 |
| Pin Azul RGB | D11 |

## Licencia


