//1.5- Calcular la edad de un perro en años humanos, si se estima que un año perro equivale a 7 años humanos.//*
import "dart:io";

void main(){
  print("         CALCULO DE LA EDAD DE UN PERRO EN AÑOS HUMANOS        ");
//Dato pedido de la edad del perro
  stdout.writeln("Introduce la edad actual que tiene tu perro:");
  var ageact = stdin.readLineSync();
//Variable de la edad del perro
  int ageperro= int.parse(ageact);
//Variable de la edad humana, igual a la edad del perro por 7 años humanos.
  var agehumana= ageperro * 7 ;
  print("El cálculo de la edad del perro en años humanos es: $agehumana "); 
}

