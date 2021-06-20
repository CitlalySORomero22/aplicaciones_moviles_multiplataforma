//1.4- Calcular cuantos pokemones caben en un rectángulo, si el tamaño de un pokemon es aproximadamente de 30 cm2.//*

import "dart:io";

void main(){
  //Variable del tamañao del pokemon
  var tam = 30;
  print("         CÁLCULO DE POKEMONES QUE CABEN EN UN RECTÁNGULO          ");
//Medida de altura
  stdout.writeln("Ingrese la medida de la altura del rectángulo:");
  var al1= stdin.readLineSync();
  double alt= double.parse(al1);
  //Medida de base
  stdout.writeln("Ingresa la medida de la base del rectángulo");
  var ba1= stdin.readLineSync();
  double bas= double.parse(ba1);

//Operación de el cálculo
  var poke= (alt * bas)/2 ;
  print("Los pokemones que caben en dicho rectángulo son: $poke");
}



