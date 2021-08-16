import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:login/pages/calendar_page.dart';
import 'package:login/pages/map_page.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:table_calendar/table_calendar.dart';
import 'package:login/pages/calendar_page.dart';

class RecomenPage extends StatefulWidget {
  RecomenPage({Key key}) : super(key: key);
  @override
  _RecomenPageState createState() => _RecomenPageState();
}

class _RecomenPageState extends State<RecomenPage> {
  String dropdownValue;
  @override
  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Mi municipio limpio",
                style: TextStyle(fontStyle: FontStyle.italic)),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.account_circle_outlined,
                  size: 40.0,
                ),
                onPressed: () {},
              ),
            ],

            brightness: Brightness.light,
            backgroundColor: Colors.green, // status bar color
            bottom: const TabBar(
              isScrollable: false,
              // Color seleccionado
              indicatorColor: Colors.white,
              // Color no seleccionado
              unselectedLabelColor: Colors.black,
              //Color de texto
              labelColor: Colors.white,

              tabs: <Widget>[
                Tab(child: Text("Inicio")),
                Tab(child: Text("Calendario")),
                Tab(child: Text("Reportes")),
                Tab(child: Text("Info")),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                child: imagenes(),
              ),
              Container(
                child: calendar(),
              ),
              Container(
                padding: EdgeInsets.all(40.0),
                child: formUI(),
              ),
              Container(
                child: maps(),
              ),
            ],
          ),
        ));
  }
}

Widget formUI() {
  return Column(children: <Widget>[
    Container(
      child: Text(''),
    ),
    Container(
      child: Text('Reporte de daños',
          style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20)),
    ),
    TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(), labelText: 'Calle', hintText: 'Calle'),
      style: TextStyle(fontSize: 20),
    ),
    Container(
      child: Text(''),
    ),
    TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Colonia',
          hintText: 'Colonia'),
      style: TextStyle(fontSize: 20),
    ),
    Container(
      child: Text(''),
    ),
    TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Descripcion',
          hintText: 'Descripcion de los hechos'),
      style: TextStyle(
        fontSize: 20,
      ),
    ),
    Container(
        child: Container(
      margin: new EdgeInsets.all(30.0),
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        gradient: LinearGradient(
            colors: [Colors.green, Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Text("Enviar",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500)),
      padding: EdgeInsets.only(top: 16, bottom: 10),
    )),
  ]);
}

Widget imagenes() {
  List<String> images = [
    "https://1.bp.blogspot.com/-LJvzA-QjDf0/XtqmXt7LiXI/AAAAAAAADgA/gP6HAxR9BogxIilQKJnDu0dMLCXrAkDpgCK4BGAsYHg/s1080/IMG-20200605-WA0015.jpg",
    "https://pbs.twimg.com/media/DFMnDkJVYAAm6v0.png",
    "https://pbs.twimg.com/media/DV2DbErU8AAxZRW.jpg",
    "https://pbs.twimg.com/media/DSpDbG-VMAAqzzE.jpg",
  ];
  return ListView(
    children: <Widget>[
      Container(
        padding: EdgeInsets.all(40.0),
        width: 300.0,
        height: 550.0,
        child: Swiper(
          viewportFraction: 0.8,
          scale: 0.9,
          itemBuilder: (BuildContext context, int index) {
            return new Image.network(
              images[index],
              fit: BoxFit.fill,
            );
          },
          autoplay: true,
          itemCount: images.length,
          pagination: new SwiperPagination(),
          control: new SwiperControl(),
        ),
      ),
      Container(
        padding: EdgeInsets.all(40.0),
        child: Text(
            "Solamente un medio ambiente limpio, libre de contaminantes podrá garantizar una vida saludable para todos y la disminución de muchas enfermedades ocasionadas por el agua sucia, el aire impuso y la basura. Uno de los factores de contaminación más importantes en la actualidad lo son las pilas que se consumen en gran número debido a la infinidad de aparatos que requieren de ellas.",
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 20,
            )),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 200.0,
            height: 200.0,
            padding: EdgeInsets.all(10.0),
            child: Image.network(
                "https://pbs.twimg.com/profile_images/1198030352813416448/k1EkMDeR_400x400.jpg"),
          ),
          Container(
            width: 200.0,
            height: 200.0,
            padding: EdgeInsets.all(10.0),
            child: Image.network(
                "data:image/png;base64,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"),
          )
        ],
      ),
    ],
  );
}

Widget ubicacion(BuildContext context) {
  return Column(children: <Widget>[
    Container(
      child: Text('Ubicación de\ncontenedores',
          textAlign: TextAlign.center,
          style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20)),
    ),
    Container(
      padding: EdgeInsets.all(40.0),
      child: Text(
          "Cada uno de los botes inteligentes se encuentran ubicados en el anterior mapa, en donde podras depositar tu basura y mantener un municipio limpio",
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 20,
          )),
    ),
  ]);
}

formItemsDesign(item) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
  );
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}

List<ListItem> _dropdownItems = [
  ListItem(1, "First Value"),
  ListItem(2, "Second Item"),
  ListItem(3, "Third Item"),
  ListItem(4, "Fourth Item")
];

List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
ListItem _selectedItem;

List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
  List<DropdownMenuItem<ListItem>> items = List();
  for (ListItem listItem in listItems) {
    items.add(
      DropdownMenuItem(
        child: Text(listItem.name),
        value: listItem,
      ),
    );
  }
  return items;
}

@override
Widget calendar() {
  return CalendarPage();
}

Widget maps() {
  return MapPage();
}
