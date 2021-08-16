import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class RegistroPage extends StatefulWidget {
  RegistroPage({Key key}) : super(key: key);

  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  GlobalKey<FormState> keyForm = new GlobalKey();

  TextEditingController _email = new TextEditingController();

  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _repeatPassCtrl = new TextEditingController();

  String email;
  String password;

  void dispose() {
    _email.dispose();
    _passwordController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Registrarse'),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(20.0),
            child: new Form(
              key: keyForm,
              child: formUI(),
            ),
          ),
        ),
      ),
    );
  }

  formItemsDesign(icon, item) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Card(child: ListTile(leading: Icon(icon), title: item)),
    );
  }

  Widget formUI() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        formItemsDesign(
            Icons.email,
            TextFormField(
              controller: _email,
              decoration: new InputDecoration(
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
              maxLength: 32,
              validator: validateEmail,
            )),
        formItemsDesign(
            Icons.remove_red_eye,
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            )),
        formItemsDesign(
            Icons.remove_red_eye,
            TextFormField(
              controller: _repeatPassCtrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Repetir la Contraseña',
              ),
              validator: validatePassword,
            )),
        GestureDetector(
            onTap: () {
              save();
            },
            child: Container(
              margin: new EdgeInsets.all(30.0),
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                gradient: LinearGradient(colors: [
                  Color(0xFF0EDED2),
                  Color(0xFF03A0FE),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Text("Registrar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              padding: EdgeInsets.only(top: 16, bottom: 16),
            )),
      ],
    );
  }

  String validatePassword(String value) {
    print("valorrr $value passsword ${_passwordController.text}");
    if (value != _passwordController.text) {
      return "Las contraseñas no coinciden";
    }
    return null;
  }
  

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "El correo es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "Correo invalido";
    } else {
      return null;
    }
  }

  save() {
    if (keyForm.currentState.validate()) {
      _getValues();
      print("Correo ${_email.text}");
      keyForm.currentState.reset();
    }
  }

  void _getValues() {
    setState(() {
      email = _email.text;
      password = _passwordController.text;
      authUser(email, password);
      print(email);
      print(password);
    });
  }

  void _alerta() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('***Felicidades***'),
          content: Text("---¡Felicidades!---\nregistro completado,\n¡Bienvenido!")
        );
      },
    );
  }
  void _alertaExt() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('¡¡ALERTA!!'),
          content: Text("****El correo que intentas registrar, ya existe****")
        );
      },
    );
  }

  void authUser(String email, String password) async {
    try {
      var url = Uri.parse(
          'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyAEr4quM7HAGyLluK2Iqox3kqmIjSnKmaA');
      Map<String, dynamic> map = new Map<String, dynamic>();
      map['email'] = email;
      map['password'] = password;
      var response = await http.post(url, body: map);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      if (response.statusCode == 200) {
        Navigator.popAndPushNamed(context, 'leer');
        _alerta();
      }
      if (response.statusCode == 400) {
        _alertaExt();
      }
    } catch (error) {
      print(error.toString());
    }
  }
}
