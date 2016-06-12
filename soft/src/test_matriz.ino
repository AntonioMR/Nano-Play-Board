/* Este es un ejemplo del uso de la matriz de led's en la Placa Arduino Nano Play Board
 *
 * Para el correcto funcionamiento de la matriz es necesario realizar un puente entre los 
 * pines D6 y A7, ya que el pin A7 que en la placa controla la carga de las salidas del 
 * registro de desplazamiento no es posible controlarlo como un pin de salida digital.
 * Esta carga pasa a controlarse con el pin D6 en la libreria "Registro.h"
 *
 * La libreria "MatrizLed.h" pretende proporcionar la estructura y metodos para el uso de la 
 * matriz a alto nivel. De momento no funciona correctamente y solo se incluye porque contiene 
 * la constante ascii[95][5] con la representacion de los caracteres del codigo ascii desde 
 * el 0x20 hasta el 0x7e
 *
 * This library is free software: you can redistribute it and/or modify it under the terms 
 * of the GNU General Public License as published by the Free Software Foundation, either 
 * version 3 of the License, or (at your option) any later version.                                  
 *                                                                      
 * This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
 * without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
 * See the GNU General Public License for more details.                             
 *                                                                      
 * You should have received a copy of the GNU General Public License    
 * along with this library. If not, see <http://www.gnu.org/licenses/>. 
 *
 * Creado en Jun/16 por AMR                                                                      
 */

#include <Arduino.h>
#include "Registro.h"
#include "MatrizLed.h"

MatrizLed matriz = MatrizLed();

char mensaje[] = "H o l a  @ H a c k L a b A l  a q u i  l a  A r d u i n o  N a n o  P l a y  B o a r d ";
//char mensaje[] = "Hola @HackLabAl aqui la Arduino Nano Play Board";
int columna[5]={2, 4, 5, 16, 17}; // Pines que controlan las distintas columnas de la matriz
Registro dato = Registro();  // Variable que controla el valor a representar en una columna

byte dat[5]; // Estructura a imprimir durante el desplazamiento de las letras
             // Permite representar cualquier patron en la pantalla de forma que se cargan parte de los 
             // caracteres conforme estos avanzan 


void setup(void) {

  Serial.begin(9600); // En caso de utilizar el ejemplo del puerto serie

}

void loop(void) {

//  Este ejemplo envia a la matriz los caracteres que recibe por el puerto serie
/*
  if (Serial.available()){
    imprimirCaracter(Serial.read(),50);
  }
  delay(10);
*/


//  Este ejemplo escribe texto del mensaje en la matriz
/*
  for (int k = 0; k < sizeof(mensaje); k++){
    imprimirCaracter(mensaje[k],50);
  }
*/

//  Este ejemplo desplaza el texto del mensaje por la matriz
  for (int k = 0; k < (sizeof(mensaje)*5-5); k++){
    // el restar 0x20 es para cuadrar el valor del ascii del caracter y
    // el indice en la libreria de caracteres, ya que esta tiene representados
    // desde el valor 0x20 hasta el 0x7e
    dat[0]=ascii[mensaje[k/5]-0x20][k%5];
    dat[1]=ascii[mensaje[(k+1)/5]-0x20][(k+1)%5];
    dat[2]=ascii[mensaje[(k+2)/5]-0x20][(k+2)%5];
    dat[3]=ascii[mensaje[(k+3)/5]-0x20][(k+3)%5];
    dat[4]=ascii[mensaje[(k+4)/5]-0x20][(k+4)%5];

    imprimirPatron(dat,7);
  }
  delay(1000);

}


// Muestra en la matriz el caracter enviado durante n veces consecutivas
// TODO : Eliminar el bucle del numero de veces a representar para evitar que
//        Programa se quede en el bucle y permita realizar otras cosas en cada ciclo de programa
void imprimirCaracter(char letra, int veces){

  for (int n=0; n < veces; n++){
    if ((letra >= 0x20) & (letra <=0x7e)) {   // Si el caracter esta dentro del rango de la biblioteca

      for(int i = 0; i < 5; i++){
        dato.Write(ascii[letra-0x20][i]);    // Carga el dato a imprimir en la columna
        digitalWrite(columna[i], HIGH);      // y activa la columna correspondiente
        delay(2);
        digitalWrite(columna[i], LOW);       // Despues la apaga
      }

    } else {                            // Si no imprime un espacio

      for(int i = 0; i < 5; i++){
        dato.Write(ascii[0][i]);             // Carga el dato a imprimir en la columna
        digitalWrite(columna[i], HIGH);      // y activa la columna correspondiente
        delay(2);
        digitalWrite(columna[i], LOW);       // Despues la apaga
      }
    }
  }
}

// Muestra en la matriz el patron enviado en el array patron
// TODO : Eliminar el bucle del numero de veces a representar para evitar que
//        Programa se quede en el bucle y permita realizar otras cosas en cada ciclo de programa
void imprimirPatron(byte patron[5], int veces)
{
  for (int n=0; n < veces; n++){
    for(int i = 0; i < 5; i++){
      dato.Write(patron[i]);    // Carga el dato a imprimir en la columna
      digitalWrite(columna[i], HIGH);      // y activa la columna correspondiente
      delay(2);
      digitalWrite(columna[i], LOW);       // Despues la apaga
    }
  }
}
