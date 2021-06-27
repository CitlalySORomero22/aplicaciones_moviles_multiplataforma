import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key?key}) : super(key:key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENÚ"), //titulo 
      ),
      floatingActionButton: FloatingActionButton.extended(
          label: Text("Operaciones"),   //boton para acceder a las operaciones
          onPressed: () {
            Navigator.pushNamed(context, 'operaciones');    //este es el boton que navega a otra pantalla
          }),
    );
  }
}