import "dart:io";

void main(){
  print("         FÓRMULA GENERAL PARA EL ÁREA DE UN TRIÁNGULO          ");

  //Medida de base
  stdout.writeln("Ingrese la medida de la base del triangulo:");
  var bas1= stdin.readLineSync();
  double base= double.parse(bas1);
  //Medida de altura
  stdout.writeln("Ingresa la medida de la altura del triangulo");
  var alt1= stdin.readLineSync();
  double altura= double.parse(alt1);

  //Operación de la fórmula
  var area= (base * altura)/2 ;
  print("El area es: $area");
}

