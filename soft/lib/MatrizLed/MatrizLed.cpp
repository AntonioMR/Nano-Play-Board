/*  para mi yo del futuro: Revisar por que no funcionan los metodos
 *
 *
 *
*/
#include <Arduino.h>
#include "Registro.h"
#include "MatrizLed.h"

int _columna[5]={2, 4, 5, 16, 17}; // Pines que controlan las distintas columnas de la matriz
Registro _dato = Registro();  // Variable que controla el valor a representar en una columna


MatrizLed::MatrizLed()
{
  // Inicializa los pines que controlan la activacion de las distintas salidas como pines de salida
  for(int i = 0; i < 5; i++){
    pinMode(_columna[i], OUTPUT);
    digitalWrite(_columna[i], LOW);
  }
  // Borra el valor del registro que controla el dato de la columna
  _dato.Clear();

}

// Visualiza en la matriz el caracter enviado.
// Comprueba que este en el rango imprimible o imprime un espacio
//*************************************************************
void MatrizLed::print(char letra)
{
  if ((letra >= 0x20) & (letra <=0x7e)) {   // Si el caracter esta dentro del rango de la biblioteca
    for(int i = 0; i < 5; i++){
      _dato.Write(ascii[letra-0x20][i]);    // Carga el dato a imprimir en la columna
      digitalWrite(_columna[i], HIGH);      // y activa la columna correspondiente
      delay(2);
      digitalWrite(_columna[i], LOW);       // Despues la apaga
    }
  } else {                            // Si no imprime un espacio
    for(int i = 0; i < 5; i++){
      _dato.Write(ascii[0][i]);             // Carga el dato a imprimir en la columna
      digitalWrite(_columna[i], HIGH);      // y activa la columna correspondiente
      delay(2);
      digitalWrite(_columna[i], LOW);       // Despues la apaga
    }
  }
}



// Visualiza en la matriz el patron enviado en el array de
// 5 bytes representando el estado de cada uno de los leds
//*************************************************************
void MatrizLed::print(byte patron[5])
{
  for(int i = 0; i < 5; i++){
    _dato.Write(patron[i]);    // Carga el dato a imprimir en la columna
    digitalWrite(_columna[i], HIGH);      // y activa la columna correspondiente
    delay(2);
    digitalWrite(_columna[i], LOW);       // Despues la apaga
  }

}

// Dado un caracter devuelve el byte correspondiente de la columna
// indicada en columna, dentro de la representacion del caracter
//*************************************************************
byte MatrizLed::getValorColumna(char letra, byte columna)
{
  if ((letra >= 0x20) & (letra <=0x7e)) {   // Si el caracter esta dentro del rango de la biblioteca y el
                                            // rango de columna es correcto
    return ascii[letra-0x20][columna];
  } else {                            // Si no esta devuelve 0
    return 0x00;
  }

}
