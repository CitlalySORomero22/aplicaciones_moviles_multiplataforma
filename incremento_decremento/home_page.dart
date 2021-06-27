import 'package:flutter/material.dart';

class HomePage extends StatefulWidget { //inicializamos el home page que engloba todo el programa 
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { //creación de la clase que engloba el home_page
  int _contador = 10; //caracteristica 2
  @override
  Widget build(BuildContext context) { //contrucción del widget
    return Scaffold(    //caracteristica 1
        appBar: AppBar(
          title: Text('Incremento & Decremento'), //titulo de la aplicación
        ),
        body: Center( //inicio del cuerpo de el programa específico de la aplicación
          child: Text(
            '$_contador',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            textScaleFactor: 2.5,
            maxLines: 3,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton(   //caracteristica 3- primer floatingActionButton para el boton de incremento
                  backgroundColor: Colors.green,
                  heroTag: "btn",
                  child: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      _contador++; //incremento
                    });
                  }),
              SizedBox(
                width: 40,
              ),
              FloatingActionButton(   //caracteristica 3- segundo floatingActionButton para el boton de decremento
                backgroundColor: Colors.red,
                heroTag: "btn2",
                child: Icon(Icons.horizontal_rule),
                 onPressed: () {
                    setState(() {
                      _contador--;   //decremento
                    });
                  }
              )
            ],
          ),
        ));
  }
}
