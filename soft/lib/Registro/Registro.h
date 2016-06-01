/*
 *
 *
 *
 *
*/

#ifndef Registro_h
#define Registro_h

#include <Arduino.h>

class Registro
{
    public:
        Registro();
        void Clear();
        void Write(byte data);

    private:
        unsigned int _Din; // Pin attached to the serial pin in the shift register
        unsigned int _ClkIn; // Pin attached to the shift clock pin in the shift register
        unsigned int _ClkOut; //Pin atrached to the latch clock pin in the shift register

        unsigned long _period;


};
#endif
