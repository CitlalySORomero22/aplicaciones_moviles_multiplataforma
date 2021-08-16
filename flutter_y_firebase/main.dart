import 'package:flutter/material.dart';
import 'package:app_login/login_page.dart';
import 'package:app_login/read_page.dart';
import 'package:app_login/write_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          primaryColor: Colors.blue,
          accentColor: Colors.pink),
      initialRoute: 'login',
      routes: {
        'login': (BuildContext context) => LoginPage(),
        'read': (BuildContext context) => ReadPage(),
        'write': (BuildContext context) => WritePage()
      },
    );
  }
}
