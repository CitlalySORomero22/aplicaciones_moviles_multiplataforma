//*MAPAS EN DART*//
import "dart:io";

//*Nombramos la lista para ir almacenando todos los datos que se introduzcan
List dateguardar = [];

//*Inicializamos el primero void main
void main(){
//*variable para repetir el numero de veces de los datos que se introducen
  var repeat="si";
  while (repeat=="si"){

    print("                   BEINVENIDO(A)                   ");
    print("     Te presentamos el menú para la opción que quieres realizar      ");

    stdout.writeln("      -Opción a:Mostrar todos los datos.-       -Opción b:Insertar un nuevo registro-.        -Opción c:Modificar un registro.-         -Opción d:Borrar un registro.-   ELIJA LA OPCIÓN QUE DESEA REALIZAR:");
  
//* variable para las opciones a realizar
    var opc = stdin.readLineSync();
  
    if (opc =="a"){   //*condicón de opc a
      mostrar();
    }
    if (opc =="b"){   //*condicón de opc b
      insertar();
    }
    if (opc =="c"){   //*condicón de opc c
      modificar();
    }
    if (opc =="d"){   //*condicón de opc d
      eliminar();
    }
    print("     Regresar a el menú      ");
    repeat = stdin.readLineSync();
  }
}

//* segundo void con función de la opc a
void mostrar(){
  print(dateguardar);
}

//* tercer void con función de la opc b
void insertar(){
  print("      Número de personas a ingresar      ");
  var nveces = stdin.readLineSync();
  int numveces1 = int.parse(nveces);
  int conta = 0;
//ciclo for para el numero de veces de introducción de datos
  for (var m = 0; m < numveces1; m++){    // variable m para el numero de veces de los datos indroducidos
    conta=conta+1;
    stdout.writeln("      Ingrese  nombre de la persona $conta      ");
    var nom = stdin.readLineSync();
    stdout.writeln("      Ingrese numero telefónico     ");
    var tel = stdin.readLineSync();
    stdout.writeln("      Ingrese email de la persona      ");
    var email= stdin.readLineSync();
    
//Creación de mapa dinámico
    Map <dynamic, dynamic> agenda = {
      'Nombre' : nom,
      'Telefono' : tel,
      'Email' : email
    };
    print("     ¡Los datos han sido guardados correctamente!      ");
    dateguardar.add(agenda);
  }

}

//void de modificacion de datos
void modificar(){
  mostrar();
  stdout.writeln("      Ingrese el nombre de la persona para modificarse      ");
  var change = stdin.readLineSync();  //variable de cambio
  for(int m=0; m < dateguardar.length; m++){
      var modif = new Map();
      modif = dateguardar[m];

    if (change ==modif['Nombre']){    //condición para la modificación
      stdout.writeln("      Ingrese nombre de la persona      ");
      var nomCambio = stdin.readLineSync();
      stdout.writeln("      Ingrese telefono de la persona     ");
      var telCambio = stdin.readLineSync();
      stdout.writeln("      Ingrese email de la persona     ");
      var emailCambio = stdin.readLineSync();
      modif["Nombre"]=nomCambio;
      modif["Telefono"]=telCambio;
      modif["Email"]=emailCambio;
      dateguardar[m]=modif;
      print("     El nombre de la persona $change se ha actualizado con éxito     ");
      print(dateguardar);
    }

  }
}

//cuarto void de la opc d 
void eliminar(){
  mostrar();
  print("     Ingrese nombre de la persona que desea eliminar    ");
  var nompersona = stdin.readLineSync();      //varible del nombre de la persona

  for (int m=0; m < dateguardar.length; m++){
    var elim = new Map();    //variable de eliminación
    elim = dateguardar[m];

    if (nompersona == elim['Nombre']){
    dateguardar.removeAt(m);
    print("     El nombre de la persona $nompersona ha sido eliminado con éxito    ");
    print (dateguardar);
    }
    
  } 

}





















