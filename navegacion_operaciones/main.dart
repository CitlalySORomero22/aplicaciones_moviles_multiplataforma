import 'package:flutter/material.dart';
import 'package:operaciones/pages/menu_pages.dart';
import 'package:operaciones/pages/operaciones.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'menu', // se inicializa una ruta con este nombre
      routes: <String, WidgetBuilder>{
        'menu': (BuildContext context) => MenuPage(),

        'operaciones': (BuildContext context) => OperacionesPage()
      },
    );
  }
}