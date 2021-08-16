import 'package:flutter/material.dart';

class OperacionesPage extends StatefulWidget {
  OperacionesPage({Key? key}) : super(key: key);

  @override
  _OperacionesPageState createState() => _OperacionesPageState();
}

class _OperacionesPageState extends State<OperacionesPage> {

  final numero1Controller = TextEditingController();    //variable para ingreso del primer numero
  final numero2Controller = TextEditingController();   //variable para ingreso del segundo numero

  dynamic _res = 0;   //Aqui se arroja lo que son los resultados de las operaciones

  int _numero1 = 0;   //Aqui se ingresa el primero numero para la operación
  int _numero2 = 0;   //Aqui se ingresa el segundo numero para la operacion

  @override
  void dispose() {

    numero1Controller.dispose();
    numero2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
        appBar: AppBar(
          title: Text("OPERACIONES"),   //Titulo de la aplicacion
        ),

        body: ListView(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),    //Le di esta medida y anchura en las cajas de donde se ingresan los numeros
          children: <Widget>[

            Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: Text("Introduzca el primer número")),    //Vamos introducir el primer numero

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: TextField(
                controller: numero1Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Número",
                ),
                onChanged: (text) {
                  print("$text");
                },
              ),
            ),

            Padding(
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                child: Text("Introduzca el segundo número")),    //Introducimos el segundo numero
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
              child: TextField(
                controller: numero2Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Número",
                ),
                onChanged: (text) {
                  print("$text");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              
              child: Text("$_res"), // con _res se muestra el resultado de dicha operacion
            
            )
          ],

        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,   //este es el boton de sumar
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0), //este es el tamaó de dicho boton
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(
                  backgroundColor: Colors.purple,
                  heroTag: "btn",
                  child: Icon(Icons.add),   //este es el icono que grafica la suma
                  onPressed: () {
                    setState(() {
                      
                      _numero1 = int.parse(numero1Controller.text); //se ingresa el primer numero
                      _numero2 = int.parse(numero2Controller.text); //se ingresa el segundo numero
                      _res = _numero1 + _numero2;   // y aqui la variable _res imprime la suma de ambos numeros

                    });
                  }),
              SizedBox(
                width: 20,
              ),
              FloatingActionButton(   //boton de resta
                  backgroundColor: Colors.green,
                  heroTag: "btn2",
                  child: Icon(Icons.horizontal_rule),   // icono que grafica la resta
                  onPressed: () {
                    setState(() {
                      
                      _numero1 = int.parse(numero1Controller.text); //se ingresa el primer numero
                      _numero2 = int.parse(numero2Controller.text); //se ingresa el segundo numero
                      _res = _numero1 - _numero2;   // y aqui la variable _res imprime la resta de ambos numeros

                    });
                  }),
              SizedBox(
                width: 20,
              ),
              FloatingActionButton(   //boton de multiplicacion
                  backgroundColor: Colors.pink,
                  heroTag: "btn2",
                  child: Icon(Icons.close),   //icono que grafica la multiplicacion
                  onPressed: () {

                    setState(() {

                      _numero1 = int.parse(numero1Controller.text); //se ingresa el primer numero
                      _numero2 = int.parse(numero2Controller.text); //se ingresa el segundo numero
                      _res = _numero1 * _numero2;   // y aqui la variable _res imprime la multiplicacion de ambos numeros
                    });
                  }),
              SizedBox(
                width: 20,
              ),
              FloatingActionButton(   //boton de division
                  backgroundColor: Colors.blue,
                  heroTag: "btn2",
                  child: Icon(Icons.show_chart),  //encontre este icono para que grafique una division
                  onPressed: () {
                    setState(() {

                      _numero1 = int.parse(numero1Controller.text);   //se ingresa el primer numero
                      _numero2 = int.parse(numero2Controller.text);   //se ingresa el segundo numero
                      _res = (_numero1) / (_numero2); // y aqui la variable _res imprime la division de ambos numeros

                    });
                  })
            ],
          ),
        ));
  }
}