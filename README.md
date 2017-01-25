# Nano-Play-Board
Esta placa pretende ser una herramienta de iniciación a la experimentación y aprendizaje de recursos de programación y electrónica con la placa [Arduino Nano 3.x][3] o compatibles.
Dispone de varios sensores, actuadores y puertos para la conexión con otras placas de forma que sea posible explotar parte de las funcionalidades de la plataforma Arduino.

[José Juan Sánchez][1] ha desarrollado una librería para usar la placa que que se encuentra disponile en su [cuenta de github][2]. Esta librería permite un uso fácil de los recursos disponibles en la placa mediante el uso de las clases definidas para los distionts elementos y los metodos para la interactuación con los mismos. 

## Sensores
- Una fotoresistencia conectada al pin de entrada analógica A6.
- Un potenciómetro conectado al pin de entrada analógica A7.
- Cuatro pulsadores conectados a los pines PB0-3 del expansor de GPIO.
- Un acelerómetro de tres ejes conectado a los pines A4 y A5 por medio del bus I2C.
- Un encoder incremental de 16 pasos/revolución conectado a los pines D2 y D5.

## Actuadores
- Un buzzer conectado al canal 7 del driver para LED's.
- Un led RGB conectado a los canales 4, 5 y 6 (rojo, azul y verde respectivamente).
- Una matriz de led's conectada a los pines PA0-7 y PB4-7 del expansor de GPIO, para indicar la columna a encender como el patrón a visualizar en la columna. 

## Puertos
- Un zócalo hembra para conectar un detector de objetos por ultrasonidos conectado a los pines D7 y D8.
- Dos zócalos para conectar foto-receptores de infrarrojos tipo CNY-70 conectados a los pines D6 y D9.
- Un zócalo hembra para conectar un sensor de temperatura y humedad tipo DTH11/DTH22 conectado al pin D12.
- Cuatro zócalos macho para conectar servomotores controlados mediante los canales 0-4 del driver para LED's conectado por I2C.
- Un zócalo hembra para conectar un modulo Bluetooth HC-05/HC-6 mediante los pines D10 y D11.
- Un zócalo hembra para conectar un modulo Wifi ESP8266 mediante los pines D10 y D11.
- Cuatro pads para la conexion de sensores capacitivos a los pines A0, A1, A2 y A3.

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
| R10, R11, R12, R13, R38, R49, R52, R8, R9 | [Resistencia 1 KOhm 1/8W](http://www.tme.eu/es/details/crcw08051k00fkea/resistencias-smd-0805/vishay/) | 9
| R14 | [Resistencia 2 KOhm 1/8W](http://www.tme.eu/es/details/crcw08052k00fktabc/resistencias-smd-0805/vishay/) | 1
| R23, R32, R33, R34, R35  | [Resistencia 4.7 KOhm 1/8W](http://www.tme.eu/es/details/crcw08054k70fkea/resistencias-smd-0805/vishay/) | 5
| R15, R16, R17, R18, R19, R24, R25, R26, R27, R36, R39, R40, R41, R42, R47, R50 | [Resistencia 10 KOhm 1/8W](http://www.tme.eu/es/details/crcw080510k0fkea/resistencias-smd-0805/vishay/) | 16
| R43, R45  | [Resistencia 220 Ohm 1/8W](http://nanoplayboard.org) | 2
| R44, R46, R48, R51  | [Resistencia 47 KOhm KOhm 1/8W](http://nanoplayboard.org) | 4
| R37 | [Resistencia LDR](http://www.tme.eu/es/details/gm7516/fotoresistencias/wodeyijia/) | 1
| RV1 | [Potenciometro 10K](https://es.rs-online.com/web/p/potenciometros/7293656/?sra=pstk)| 1
| C1, C2 | [Condensador electrolitico 0,33 uF 50V](http://www.tme.eu/es/details/uvz1h330mdd/condensadores-electroliticos-tht-105c/nichicon/) | 2
| C18, C20 | [Condensador cerámico 10 nF 25V](http://nanoplayboard.org) | 2
| C13, C14, C17, C19, C21, C3, C7  | [Condensador cerámico 100 nF 50V](http://www.tme.eu/es/details/cl21b104kbcnnnc/condensadores-mlcc-smd-0805/samsung/) | 7
| C15, C16 | [Condensador cerámico 1 uF 25V](http://www.tme.eu/es/details/cl21b105kafnnne/condensadores-mlcc-smd-0805/samsung/) | 2
| C5 | [Condensador ceramico 47 uF 16V](http://nanoplayboard.org) | 1
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
| U3 | [Expansor GPIO, MCP23017](http://www.tme.eu/es/details/mcp23017-e_so/multiplexores-y-conmutadores-analogicos/microchip-technology/) | 1
| U5 | [Matriz de Led's 7x5 Anodo](http://www.tme.eu/es/details/lmd07057bue-101a/pantallas-led-matrices/wenrun/) | 1
| U6 | [Driver para LED 8 canales, PCA9551](http://es.rs-online.com/web/p/drivers-de-display-led/0510730/) | 1
| U8 | [Acelerometro 3 ejes](https://es.rs-online.com/web/p/circuitos-integrados-de-acelerometro/8016873/?sra=pstk) | 1
| U9 | [Inversor CMOS Schmitt Trigger CD40106BM](http://www.tme.eu/es/details/cd40106bm/barreras-inversores/texas-instruments/) | 1
| Q1, Q2, Q3, Q4, Q5, Q8, Q9 | [Transistor NPN SMBT3904](http://www.tme.eu/es/details/smbt3904e6327/transistores-npn-smd/infineon-technologies/)| 7
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
| Interrupción Acelerómetro / Expansor GPIO | D3 |
| Reset perifericos | D4 |
| Encoder canal B | D5 |
| Infrarrojos Izquierdo | D6 |
| Ultrasonidos Echo | D7 |
| Ultrasonidos Trigg | D8 |
| Infrarrojos Derecho | D9 |
| Inalámbrico Tx | D10 |
| Inalámbrico Rx |  D11 |
| Sensor DTH Dato | D12 |
| Libre (LED Arduino) | D13 |
| Pad para sensor capacitivo 0 | A0 |
| Pad para sensor capacitivo 1 | A1 |
| Pad para sensor capacitivo 2 | A2 |
| Pad para sensor capacitivo 3 | A3 |
| I2C - SDA | A4 |
| I2C - SCL | A5 |
| LDR | A6 |
| Potenciometro | A7 |


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
