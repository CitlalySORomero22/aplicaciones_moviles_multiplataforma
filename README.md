# aplicaciones_moviles_multiplataforma
Desarrollo de apps en dart

import "dart:io";

void main(){
  var repetir="si";
  while (repetir=="si"){
    stdout.writeln("***********\nMenú\n***********\n1:Mostrar todos los datos.\n2:Insertar un nuevo registro.\n3:Modificar un registro.\n4:Borrar un registro.\nElige una opcion con numeros:");
    var opcion = stdin.readLineSync();
    //int num= int.parse(opcion)
    if (opcion =="1"){
      personas();
    }
    if (opcion =="2"){
      personas();
    }
    if (opcion =="3"){
      personas();
    }
    if (opcion =="4"){
      personas();
    }
    stdout.writeln("¿Deseá regresar al menú?");
    repetir = stdin.readLineSync();
  }
}

void personas(){
  stdout.writeln("***********\nIngresa el nombre de la persona \n***********");
  var nombre = stdin.readLineSync();
  stdout.writeln("***********\nIngresa el numero telefonico \n***********");
  var telefono = stdin.readLineSync();
  stdout.writeln("***********\nIngresa el email de la persona \n***********");
  var email= stdin.readLineSync();

  var agenda = Map();
  agenda ['Nombre'] = nombre;
  agenda ['Telefono'] = telefono;
  agenda ['Email'] = email;
  
  print ("los nombres son $agenda");
}
