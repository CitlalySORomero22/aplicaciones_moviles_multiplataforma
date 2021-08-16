import 'package:flutter/material.dart';
import 'package:login/pages/calendar_page.dart';
import 'package:login/pages/home_page.dart';
import 'package:login/pages/login_page.dart';
import 'package:login/pages/registro_page.dart';
import 'package:login/pages/read_page.dart';
import 'package:login/pages/write_page.dart';
import 'package:login/pages/recomen_page.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          primaryColor: Colors.orange,
          accentColor: Colors.greenAccent),
      initialRoute: 'login',
      routes: {
        'home': (BuildContext context) => HomePage(),
        'login': (BuildContext context) => LoginPage(),
        'registro': (BuildContext context) => RegistroPage(),
        'leer': (BuildContext context) => ReadPage(),
        'write': (BuildContext context) => WritePage(),
        'recomendaciones': (BuildContext context) => RecomenPage(),
        'calendario': (BuildContext context) => CalendarPage(),
      },
    );
  }
}

