//Calcular el promedio de 1 alumno teniendo en cuenta que hay 3 evaluaciones con los siguientes ponderados Evaluación 1-20%, evaluación 2-30% y evaluación 3-50%.//*

import "dart:io";

void main(){
  print("         PROMEDIO DE LAS 3 EVALUACIONES DE UN ALUMNO         ");

  //1era cal
  stdout.writeln("Introduce la primera calificación de evaluación:");
  var c1= stdin.readLineSync(); 
  double cal1= double.parse(c1);
  var calparcial1 = cal1 * 0.20 ;

  //2da cal
  stdout.writeln("Introduce la segunda calificación de evaluación:");
  var c2= stdin.readLineSync();
  double cal2= double.parse(c2);
  var calparcial2 = cal2 *0.30;

  //3ra cal
  stdout.writeln("Introduce la tercera calificación de evaluación:");
  var c3= stdin.readLineSync();
  double cal3= double.parse(c3);
  var calparcial3 = cal3 *0.50;

  //Operación de el promedio de las tres calificaciones
  var promedio= calparcial1+calparcial2+calparcial3 ;
  print("La calificacion es: $promedio");
}


