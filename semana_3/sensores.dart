//APLICACIÓN DE SENSORES//
import "dart:io";

List sen = []; 
void main(){

  print("                   BIENVENIDO(A)                   ");
  final senso = new Sensores();
  senso.senso1();
  senso.imp();
}

class  Sensores {

  void senso1(){
    stdout.writeln("      Ingrese número de sensores:      ");
    var nsen = stdin.readLineSync();
    int nsen1 = int.parse(nsen);
    int contador = 0;

    for (var a = 0; a < nsen1; a++){   
      contador=contador+1;
      stdout.writeln("      Ingrese  _id de el sensor: $contador      ");
      var _id = stdin.readLineSync();
      stdout.writeln("      Ingrese el valor del sensor:     ");
      var valor = stdin.readLineSync();
      stdout.writeln("      Ingrese la fecha de registro:      ");
      var fecha_reg= stdin.readLineSync();
    
      Map <dynamic, dynamic> sens = {
        'id' : _id,
        'Valor' : valor,
        'fecha_registro' : fecha_reg
      };
      print("     ¡Los datos del sensor han sido guardados correctamente!      ");
      sen.add(sens);
    } 
  }
  
  void imp(){
    print(sen);
  }
}



