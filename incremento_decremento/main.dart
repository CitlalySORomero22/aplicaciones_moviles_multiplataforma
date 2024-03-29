import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';


void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: <String, WidgetBuilder>{
        'home': (BuildContext context) => HomePage()
      },
    );
  }
}