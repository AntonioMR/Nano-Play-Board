# Nano-Play-Board
Esta placa pretende ser una herramienta de iniciación a la experimentación y aprendizaje de recursos de programación y electrónica con la placa [Arduino Nano 3.x][3] o compatibles.
Dispone de varios sensores, actuadores y puertos para la conexión con otras placas de forma que sea posible explotar parte de las funcionalidades de la plataforma Arduino.

[José Juan Sánchez][1] ha desarrollado una librería para usar la placa que que se encuentra disponile en su [cuenta de github][2]. Esta librería permite un uso fácil de los recursos disponibles en la placa mediante el uso de las clases definidas para los distionts elementos y los metodos para la interactuación con los mismos. 

## Sensores
- Una fotoresistencia conectada al pin de entrada analógica A6.
- Un potenciómetro conectado al pin de entrada analógica A7.
- Cuatro pulsadores leidos mediante combinación binaria a través de los pines A0 y A1.
- Un acelerómetro de tres ejes conectado a los pines A4 y A5 por medio del bus I2C.
- Un encoder incremental de 16 pasos/revolución conectado a los pines D2 y A2.

## Actuadores
- Un buzzer conectado al pin de salida digital con capacidad de PWM D3.
- Un led RGB conectado a los pines de salida digital con capacidad de PWM D9, D10, D11 (rojo, verde y azul respectivamente).
- Una matriz de led's conectada a dos registros de desplazamiento controlados mediante los pines D13, D12 y D4 para indicar la columna a encender como el patrón a visualizar en la columna. 

## Puertos
- Un zócalo hembra para conectar un detector de objetos por ultrasonidos conectado a los pines D7 y D8.
- Un zócalo hembra para conectar un sensor de temperatura y humedad tipo DTH11/DTH22 conectado al pin A3.
- Dos zócalos macho para conectar dos servomotores conectados a los pines D5 y D6.
- Un zócalo hembra para conectar un modulo Bluetooth HC-05/HC-6.

## Estructura del repositorio
- Raiz: Fuentes del proyecto de la placa de circuito impreso para el software de diseño de PCB [KiCad][4].
- Gerber : Ficheros de fabricacion en formato Gerber de la placa de circuito impreso.
- Imagenes : Renders de la placa de circuito impreso.
- Pdf : Ficheros para el montaje en formato pdf. Esquema del circuito, situacion de componentes, etc.
- Modelos3D : Modelos 3D en formato .wrl para la visualizacion en el proyecto del diseño de la PCB.
- Soft/lib : Librerías para el uso de los distintos elementos presentes en la placa.
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
| R2, R3, R4, R6, R7, R8, R9 | [Resistencia 120 Ohm 1/8W](http://www.tme.eu/es/details/crcw0805120rfktabc/resistencias-smd-0805/vishay/) | 7
| R1, R5, R10, R17, R18, R19 | [Resistencia 1 KOhm 1/8W](http://www.tme.eu/es/details/crcw08051k00fkea/resistencias-smd-0805/vishay/) | 5
| R20 | [Resistencia LDR](http://www.tme.eu/es/details/pgm5516/fotoresistencias/token/) | 1
| C3, C4 | [Condensador electrolitico 0,33 uF 50V](http://www.tme.eu/es/details/uvz1h330mdd/condensadores-electroliticos-tht-105c/nichicon/) | 2
| C1, C2 | [Condensador ceramico 100 nF 50V](http://www.tme.eu/es/details/cl21b104kbcnnnc/condensadores-mlcc-smd-0805/samsung/) | 2
| D1 | [Diodo 15MQ040N](http://www.tme.eu/es/details/15mq040n/diodos-schottky-smd/vishay/15mq040ntrpbf/) | 1
| CON1 | [Conector Barrel Jack 5.5/2.1](http://www.tme.eu/es/details/fc68148/conectores-dc/cliff/) | 1
| P1 | [Tira de pines macho recto](http://www.tme.eu/es/details/4-103321-8/regletas-y-enchufes-de-taco/te-connectivity/) | 2 pines
| P7 | [Tira de pines macho recto](http://www.tme.eu/es/details/4-103321-8/regletas-y-enchufes-de-taco/te-connectivity/) | 4 pines
| U1 | [Regulador de tension 5VDC](http://www.tme.eu/es/details/lm7805ct/estabilizadores-de-tension-no-regulados/fairchild-semiconductor/) | 1
| U2 | [Registro de desplazamiento Serie->Paralelo 74HC595](http://www.tme.eu/es/details/sn74hc595d/registros-corredores/texas-instruments/) | 2
| U3 | [Matriz de Led's 7x5 Anodo](http://www.tme.eu/es/details/lmd07057bue-101a/pantallas-led-matrices/wenrun/) | 1
| U4 | [Arduino Nano](https://www.arduino.cc/en/Main/ArduinoBoardNano) | 1
| Q1, Q2, Q3 | [Transistor NPN BC547](http://www.tme.eu/es/details/bc547cbk-dio/transistores-npn-tht/diotec-semiconductor/bc547cbk/)| 3
| Q4, Q5, Q6, Q7, Q8 | [Transistor NPN SMBT3904](http://www.tme.eu/es/details/smbt3904e6327/transistores-npn-smd/infineon-technologies/)| 5
| LED1 | [Led RGB 5mm](http://www.tme.eu/es/details/ostama5b31a/diodos-led-tht-5mm/optosupply/)| 1
| SP1 | [Transductor de sonido piezoeléctrico](http://www.tme.eu/es/details/ld-bzpn-1705/transductores-piezoelect-sin-generador/loudity/)| 1
| RV1 | [Potenciometro 10K](http://www.tme.eu/es/details/r9011-1-10k/potenciometros-de-carbono-de-una-revol/sr-passives/)| 1

## Pines
Referencia | Pin 
----------|-------
| Fotoresistencia | A6 |
| Potenciometro | A7 |
| Altavoz piezoelectrónico | D3 |
| Pin Rojo RGB | D9 |
| Pin Verde RGB | D10 |
| Pin Azul RGB | D11 |
| Dato de entrada al registros de desplazamiento | D12 |
| Reloj de carga serie del registros de desplazamiento | D13 |
| Reloj de carga de las salidas de los registros de desplazamiento | D4 |
| Canal A del encoder | D2 |
| Canal B del encoder | A2 |
| Señal PWM del Servo 1 | D5 |
| Señal PWM del Servo 2 | D6 |
| Control del sensor de Temperatura/humedad | A3 |
| Sensor ultrasonidos terminal Trig | D8 |
| Sensor ultrasonidos terminal Echo | D7 |
| Codigo binario estado pulsadores bit0 | A0 |
| Codigo binario estado pulsadores bit1 | A1 |


## Licencia
Este diseño es Software Libre; usted puede redistribuirlo y/o modificarlo bajo los términos de la "GNU General Public License" como lo publica la "FSF Free Software Foundation", o (a su elección) de cualquier versión posterior.

Este diseño es distribuido con la esperanza de que le sea útil, pero SIN NINGUNA GARANTIA; incluso sin la garantía implícita por la VENTA o EJERCICIO DE ALGUN PROPOSITO en particular. Vea la "GNU General Public License" para más detalles.

[1]: http://josejuansanchez.org
[2]: https://github.com/josejuansanchez/NanoPlayBoard/
[3]: https://www.arduino.cc/en/Main/ArduinoBoardNano
[4]: http://kicad-pcb.org/
