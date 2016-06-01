#include <Arduino.h>
#include "Registro.h"

Registro fila = Registro();
int columna[] = {2, 4, 5, 16, 17};
byte dato[] = {0x10,0x24,0x20,0x24,0x10};

void setup(void) {

  fila.Clear();

  for(int i = 0; i < 5; i++){
    pinMode(columna[i], OUTPUT);
    digitalWrite(columna[i], LOW);
  }

}

void loop(void) {

  for(int i = 0; i < 5; i++){
    fila.Write(dato[i]);
    digitalWrite(columna[i], HIGH);
    delay(100);
    digitalWrite(columna[i], LOW);
  }

}
