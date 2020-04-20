import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:tfg/view/utils/page_utils.dart';

class ListaAlumnosPage extends StatelessWidget {
  final utils = PageUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: utils.appBar(name: 'Lista Alumnos'),
      body: utils.gradientBackground(
        content: ListView(
          children: _list(),
        ),
      ),
    );
  }

  Widget _setGradientBar(){
    return GradientAppBar(
      title: Text('Lista Empleados'),
      backgroundColorStart: Colors.blue,
      backgroundColorEnd: Colors.white,
    );
  }

  Widget _setContent() {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.white, Colors.lightBlueAccent])),
        child: Center(
          child: ListView(
            children: _list(),
          ),
        ),
      ),
    );
  }

  Widget _setBottomNavigationbar(){
    return BottomNavigationBar(
      fixedColor: Colors.blue,
      backgroundColor: Colors.blue,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.face, color: Colors.blueAccent),
          title: Text(
            "Alumnos",
            style: TextStyle(
              color: Colors.blueAccent,
            ),
          ),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center, color: Colors.blueAccent),
            title: Text(
              "Centros",
              style: TextStyle(
                color: Colors.blueAccent,
              ),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.class_, color: Colors.blueAccent),
            title: Text(
              "Clases",
              style: TextStyle(
                color: Colors.blueAccent,
              ),
            )),
        BottomNavigationBarItem(
            icon: Icon(Icons.assignment_ind, color: Colors.blueAccent),
            title: Text(
              "profesoress",
              style: TextStyle(
                color: Colors.blueAccent,
              ),
            )),
      ],
    );
  }

  List<Widget> _list() {
    List<Widget> alumnosList = [];

    for (int i = 0; i < 20; i++) {
      final tile = Card(
          child: ListTile(
            trailing: Icon(Icons.arrow_forward),
            title: Text("Nombre$i Apellido$i Apellido$i"),
            subtitle: Text("Clase 1 - Centro 1"),
            onTap: () {},
          )
      );

      alumnosList.add(tile);
    }

    return alumnosList;
  }
}
