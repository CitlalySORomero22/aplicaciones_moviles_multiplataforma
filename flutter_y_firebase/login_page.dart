import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> keyForm = new GlobalKey();
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  late String _email;
  late String _password;

  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
      ),
      body: _formulario_login(),
    );
  }

  Widget _formulario_login() {
    return ListView(
      key: _formKey,
      padding: EdgeInsets.symmetric(horizontal: 10),
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("E-mail"),
          ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            controller: _emailcontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Email"),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("Password"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            controller: _passwordcontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Password"),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: ElevatedButton(
            child: Container(
              child: Text('Login'),
            ),
            onPressed: _getValues,
          ),
        ),
        SizedBox(
          width: 40,
        ),
      ],
    );
  }

  void _Autenticacion() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            title: Text('¡Algo no está bien!'),
            content: Text("Verifica que tu email y contraseña estén correctos"));
      },
    );
  }

  void _getValues() {
    setState(() {
      _email = _emailcontroller.text;
      _password = _passwordcontroller.text;
      authUser(_email, _password);
    });
  }

  void authUser(String _email, String _password) async {
    try {
      var url = Uri.parse(
          'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyD8DaXkxNTZyk-Lnkxgu1OLy1Wl0rvseZA');
      Map<String, dynamic> map = new Map<String, dynamic>();
      map['email'] = _email;
      map['password'] = _password;
      var response = await http.post(url, body: map);
      print('Response status: ${response.statusCode}');
      //print('Response body: ${response.body}');
      if (response.statusCode == 200) {
        Navigator.popAndPushNamed(context, 'read');
      }
      if (response.statusCode == 400) {
        _Autenticacion();
      }
    } catch (error) {
      print(error.toString());
    }
  }
} 
