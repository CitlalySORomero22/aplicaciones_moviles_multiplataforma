//1.2- Calcular el perímetro de un hexágono.//*
import "dart:io";

void main(){

  print("         PERÍMETRO DE UN HEXÁGONO          ");

  print("Recuerda que todos los lados del hexágono son iguales");
  
  //Medidas de los lados del hexágono
  stdout.writeln("Ingrese la medida del primer lado:");
  var lado1= stdin.readLineSync();
  double l1= double.parse(lado1);

  stdout.writeln("Ingrese la medida del segundo lado:");
  var lado2= stdin.readLineSync();
  double l2= double.parse(lado2);

  stdout.writeln("Ingrese la medida del tercer lado:");
  var lado3= stdin.readLineSync();
  double l3= double.parse(lado3);

  stdout.writeln("Ingrese la medida del cuarto lado:");
  var lado4= stdin.readLineSync();
  double l4= double.parse(lado4);

  stdout.writeln("Ingrese la medida del quinto lado:");
  var lado5= stdin.readLineSync();
  double l5= double.parse(lado5);

  stdout.writeln("Ingrese la medida del sexto lado:");
  var lado6= stdin.readLineSync();
  double l6= double.parse(lado6);

  //Operación de la suma de los lados del hexágono
  print(l1 + l2 + l3 + l4 + l5 + l6);
}


