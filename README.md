# Nano-Play-Board
Esta placa pretende ser una herramienta de iniciación a la experimentación y aprendizaje de recursos de programación y electrónica con la placa [Arduino Nano 3.x][3] o compatibles.
Dispone de varios sensores, actuadores y puertos para la conexión con otras placas de forma que sea posible explotar parte de las funcionalidades de la plataforma Arduino.

[José Juan Sánchez][1] ha desarrollado una librería para usar la placa que que se encuentra disponile en su [cuenta de github][2]. Esta librería permite un uso fácil de los recursos disponibles en la placa mediante el uso de las clases definidas para los distionts elementos y los metodos para la interactuación con los mismos. 

## Sensores
- Una fotoresistencia conectada al pin de entrada analógica A6.
- Un potenciómetro conectado al pin de entrada analógica A7.
- Cuatro pulsadores leidos mediante combinación binaria a través de los pines A0 y A1.
- Un acelerómetro de tres ejes conectado a los pines A4 y A5 por medio del bus I2C.
- Un encoder incremental de 16 pasos/revolución conectado a los pines D2 y D5.

## Actuadores
- Un buzzer conectado al pin de salida digital con capacidad de PWM D3.
- Un led RGB conectado a los pines de salida digital con capacidad de PWM D9, D10, D11 (rojo, verde y azul respectivamente).
- Una matriz de led's conectada a dos registros de desplazamiento controlados mediante los pines D13, D12 y D4 para indicar la columna a encender como el patrón a visualizar en la columna. 

## Puertos
- Un zócalo hembra para conectar un detector de objetos por ultrasonidos conectado a los pines D7 y D8.
- Dos zócalos para conectar foto-receptores de infrarrojos tipo CNY-70.
- Un zócalo hembra para conectar un sensor de temperatura y humedad tipo DTH11/DTH22 conectado al pin A3.
- Cuatro zócalos macho para conectar servomotores controlados mediante un driver para led conectado por I2C.
- Un zócalo hembra para conectar un modulo Bluetooth HC-05/HC-6.
- Un zócalo hembra para conectar un modulo Wifi ESP8266.

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
| R1, R2, R20, R21, R22, R3, R4, R5, R6, R7 | [Resistencia 120 Ohm 1/8W](http://www.tme.eu/es/details/crcw0805120rfktabc/resistencias-smd-0805/vishay/) | 10
| R10, R11, R12, R13, R38, R8, R9 | [Resistencia 1 KOhm 1/8W](http://www.tme.eu/es/details/crcw08051k00fkea/resistencias-smd-0805/vishay/) | 7
| R14 | [Resistencia 2 KOhm 1/8W](http://www.tme.eu/es/details/crcw08052k00fktabc/resistencias-smd-0805/vishay/) | 1
| R23, R32, R33, R34, R35  | [Resistencia 4.7 KOhm 1/8W](http://www.tme.eu/es/details/crcw08054k70fkea/resistencias-smd-0805/vishay/) | 5
| R15, R16, R17, R18, R19, R24, R25, R26, R27, R28, R29, R30, R31, R36, R39, R40, R41, R42 | [Resistencia 10 KOhm 1/8W](http://www.tme.eu/es/details/crcw080510k0fkea/resistencias-smd-0805/vishay/) | 18
| R43, R45  | [Resistencia 220 Ohm 1/8W](http://nanoplayboard.org) | 2
| R44, R46  | [Resistencia 47 KOhm KOhm 1/8W](http://nanoplayboard.org) | 2
| R37 | [Resistencia LDR](http://www.tme.eu/es/details/gm7516/fotoresistencias/wodeyijia/) | 1
| RV1 | [Potenciometro 10K](https://es.rs-online.com/web/p/potenciometros/7293656/?sra=pstk)| 1
| C1, C2 | [Condensador electrolitico 0,33 uF 50V](http://www.tme.eu/es/details/uvz1h330mdd/condensadores-electroliticos-tht-105c/nichicon/) | 2
| C18, C20 | [Condensador cerámico 10 nF 25V](http://nanoplayboard.org) | 2
| C12, C13, C14, C17, C19, C21, C3, C4, C7 | [Condensador cerámico 100 nF 50V](http://www.tme.eu/es/details/cl21b104kbcnnnc/condensadores-mlcc-smd-0805/samsung/) | 9
| C10, C11, C15, C16, C8, C9 | [Condensador cerámico 1 uF 25V](http://www.tme.eu/es/details/cl21b105kafnnne/condensadores-mlcc-smd-0805/samsung/) | 6
| C5 | [Condensador electrolitico tantalio 10 uF 16V](http://nanoplayboard.org) | 1
| D1 | [Diodo 15MQ040N](http://www.tme.eu/es/details/15mq040n/diodos-schottky-smd/vishay/15mq040ntrpbf/) | 1
| CON1 | [Conector Barrel Jack 5.5/2.1](http://www.tme.eu/es/details/fc68148/conectores-dc/cliff/) | 1
| P1 | [Tira de pines hembra recto 2x4]() | 1 
| P2 | [Tira de pines hembra recto 1x6]() | 1 
| P4, P5, P6, P7 | [Tira de pines macho recto 1x3]() | 4
| P8 | [Tira de pines hembra recto 1x3]() | 1 
| P10, P9 | [Tira de pines hembra recto 1x4]() | 2 
| P11, P12 | [Tira de pines macho acodado 1x4]() | 2
| P5 | [Tira de pines hembra recto](http://www.tme.eu/es/details/zl262-40sg/regletas-y-enchufes-de-taco/ninigi/) | 3 pines
| P6 | [Tira de pines hembra recto](http://www.tme.eu/es/details/zl262-40sg/regletas-y-enchufes-de-taco/ninigi/) | 4 pines
| U1 | [Arduino Nano](https://www.arduino.cc/en/Main/ArduinoBoardNano) | 1
| U2 | [Regulador de tension 5VDC](http://www.tme.eu/es/details/lm7805ct/estabilizadores-de-tension-no-regulados/fairchild-semiconductor/) | 1
| U3, U4 | [Registro de desplazamiento Serie->Paralelo 74HC595](http://www.tme.eu/es/details/sn74hc595d/registros-corredores/texas-instruments/) | 2
| U5 | [Matriz de Led's 7x5 Anodo](http://www.tme.eu/es/details/lmd07057bue-101a/pantallas-led-matrices/wenrun/) | 1
| U6 | [Driver para LED 8 canales, PCA9551]() | 1
| U7 | [Codificador con prioridad 8 a 3, 74HC148D](http://www.tme.eu/es/details/sn74hc148d/descodificadores-multiplexores-interru/texas-instruments/) | 1
| U8 | [Acelerometro 3 ejes](https://es.rs-online.com/web/p/circuitos-integrados-de-acelerometro/8016873/?sra=pstk) | 1
| U9 | [Inversor CMOS Schmitt Trigger CD40106BM](http://www.tme.eu/es/details/cd40106bm/barreras-inversores/texas-instruments/) | 1
| Q1, Q2, Q3, Q4, Q5 | [Transistor NPN SMBT3904](http://www.tme.eu/es/details/smbt3904e6327/transistores-npn-smd/infineon-technologies/)| 5
| Q6, Q7 | [Transistor Mosfet canal N BSS138P](http://www.tme.eu/es/details/bss138p.215/transistores-con-canal-n-smd/nxp/)| 2
| LED1 | [Led RGB 5mm](http://www.tme.eu/es/details/ostama5b31a/diodos-led-tht-5mm/optosupply/)| 1
| SP1 | [Transductor de sonido piezoeléctrico](http://www.tme.eu/es/details/ld-bzpn-1705/transductores-piezoelect-sin-generador/loudity/)| 1
| SW1, SW2, SW3, SW4 | [Pulsador normalmente abierto](http://www.tme.eu/es/details/dtsm31nb/micro-conmutadores-tact-pcb/canal-electronic/dtsm-31n-b/)| 4
| B1 | [Codificador giratorio 2 canales](https://es.rs-online.com/web/p/codificadores-giratorios/8275019/?sra=pstk)| 1


## Pines
Referencia | Pin 
----------|-------
| USB Tx | D0 |
| USB Rx | D1 |
| Encoder canal A | D2 |
| Interrupción Acelerómetro | D3 |
| Reloj de carga de salidas del registro despl. | D4 |
| Encoder canal B | D5 |
| Infrarrojos Izquierdo | D6 |
| Ultrasonidos Echo | D7 |
| Ultrasonidos Trigg | D8 |
| Infrarrojos Derecho | D9 |
| Inalámbrico Tx | D10 |
| Inalámbrico Rx |  D11 |
| Dato de entrada al registro de despl. | D12 |
| Reloj de carga serie del registro despl. | D13 |
| Pulsadores - Bit 0 | A0 |
| Pulsadores - Bit 1 | A1 |
| Pulsadores - Detección Pulsación | A2 |
| Sensor DTH Dato | A3 |
| I2C - SDA | A4 |
| I2C - SCL | A5 |
| LDR | A7 |
| Potenciometro | A8 |


## Licencia
Este diseño es Software Libre; usted puede redistribuirlo y/o modificarlo bajo los términos de la "GNU General Public License" como lo publica la "FSF Free Software Foundation", o (a su elección) de cualquier versión posterior.

Este diseño es distribuido con la esperanza de que le sea útil, pero SIN NINGUNA GARANTIA; incluso sin la garantía implícita por la VENTA o EJERCICIO DE ALGUN PROPOSITO en particular. Vea la "GNU General Public License" para más detalles.


## Creditos
Los modelos 3D de los siguientes componentes están creados a partir de los modelos originales indicados a continuación:

Componente | Autor | Modelo 
-----------|-------|--------
| Arduino Nano V3 | [Carlos AG][5] | [Modelo][6] 
| Bluetooth HC-06 | [Felix Georgievich ILgach][7] | [Modelo][8] 
| Detector HC-SR04 | [Renato Alonso Hurtado Medina][9] | [Modelo][10] 

[1]: http://josejuansanchez.org
[2]: https://github.com/josejuansanchez/NanoPlayBoard/
[3]: https://www.arduino.cc/en/Main/ArduinoBoardNano
[4]: http://kicad-pcb.org/
[5]: http://www.3dcontentcentral.com/Contributors.aspx?id=669699
[6]: http://www.3dcontentcentral.com/parts/download-part.aspx?id=387975&catalogid=171
[7]: http://www.3dcontentcentral.com/Contributors.aspx?id=1658685
[8]: http://www.3dcontentcentral.com/download-model.aspx?catalogid=171&id=542660
[9]: http://www.3dcontentcentral.com/Contributors.aspx?id=1704559
[10]: http://www.3dcontentcentral.com/download-model.aspx?catalogid=171&id=655885
