/*
 *
 *
 *
*/
#include <Arduino.h>
#include "Registro.h"


unsigned int _Din; // Pin attached to the serial pin in the shift register
unsigned int _ClkIn; // Pin attached to the shift clock pin in the shift register
unsigned int _ClkOut; //Pin atrached to the latch clock pin in the shift register

unsigned int _BaudRate;
unsigned long _period;


Registro::Registro()
//sLed::sLed(unsigned int DataPin, unsigned int shiftCkPin, unsigned int latchCkPin, unsigned int rstPin)
{
    _Din = 13; // Pin attached to the serial pin in the shift register
    _ClkIn = 12; // Pin attached to the shift clock pin in the shift register
    //_ClkOut = 19; //Pin attached to the latch clock pin in the shift register para el Arduino Uno
    _ClkOut = 6; //Pin attached to the latch clock pin in the shift register para el Arduino Nano
    _BaudRate = 9600;
    _period = long(1000000/_BaudRate);
    pinMode(_Din, OUTPUT);
    pinMode(_ClkIn, OUTPUT);
    pinMode(_ClkOut, OUTPUT);
    digitalWrite(_Din, LOW);
    digitalWrite(_ClkIn, LOW);
    digitalWrite(_ClkOut, LOW);

    Clear();
}


//*************************************************************
void Registro::Clear()
{
    Write(0);

}


//*************************************************************
void Registro::Write(byte data)
{
    digitalWrite(_ClkIn, LOW);
    digitalWrite(_ClkOut, LOW);

    for(int k = 0; k < 8; k++){
        delayMicroseconds(long(_period/4));
        digitalWrite(_Din,bitRead(data,k));
        delayMicroseconds(long(_period/4));
        digitalWrite(_ClkIn,HIGH);
        delayMicroseconds(long(_period/2));
        digitalWrite(_ClkIn, LOW);
    }
    delayMicroseconds(int(_period/4));
    digitalWrite(_ClkOut, HIGH);
    delayMicroseconds(long(_period/2));
    digitalWrite(_ClkOut, LOW);

}
