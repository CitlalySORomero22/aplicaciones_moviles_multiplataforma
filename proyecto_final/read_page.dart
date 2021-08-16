import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ReadPage extends StatefulWidget {
  ReadPage({Key key}) : super(key: key);

  @override 
  _ReadPageState createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPage> {

  List<String> items = [];
  bool reading = true;

  Future<void> readData() async{
    try{
      var url = Uri.parse(
        "https://proyecto-final-4ab71-default-rtdb.firebaseio.com/Agenda.json");

      var response = await http.get(url);
      var data = json.decode(response.body);

      items.clear();
      data.forEach((key, value){
        items.add(value["nombre"]);
        items.add(value["email"]);
      });
      setState(() {
        reading = false;
      });

    } catch (e) {
      print(e.toString());
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Read'),
      ), 
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: items.length,
        itemBuilder: (context, index){
          return Container(
            child: Text(items[index]),
          );
        }
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton.extended(
                  onPressed: _actualizar, label: Text("Read data")
              ),
              SizedBox(
                width: 40,
              ),
              FloatingActionButton.extended(
                label: Text('Escribir en firebase'),
                icon: Icon(Icons.arrow_right, color: Theme.of(context).primaryColor),
                onPressed: () {
                  Navigator.pushNamed(context, 'write');
                })
           ],
          ),
        )
    );    
  } 

  void _actualizar() {
    readData();
  }
}




