import 'package:flutter/material.dart';
import 'package:tfg/view/alumno/lista_alumnos_page.dart';
import 'package:tfg/view/centro/centro_list_page.dart';
import 'package:tfg/view/clase/clase_list_page.dart';
import 'package:tfg/view/empleado/empleado_list_page.dart';
import 'package:tfg/view/utils/page_utils.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final utils = PageUtils();

    return Scaffold(
      appBar: utils.appBarAction(name: 'Shoki', context: context),
      body: utils.gradientBackground(
        content: ListView(
          children: _content(context),
        ),
      ),
    );
  }

  List<Widget> _content(BuildContext context) {
    List<Widget> list = [];

    list.add(
      Card(
        child: ListTile(
          title: Text("Alumnos"),
          leading: Icon(
            Icons.face,
            color: Colors.lightBlueAccent,
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
          ),
          onTap: () {
            final route =
                MaterialPageRoute(builder: (context) => ListaAlumnosPage());

            Navigator.push(context, route);
          },
        ),
      ),
    );
    list.add(
      Card(
        child: ListTile(
          title: Text("Clases"),
          leading: Icon(
            Icons.class_,
            color: Colors.lightBlueAccent,
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
          ),
          onTap: () {
            final route =
                MaterialPageRoute(builder: (context) => ListaClasesPage());

            Navigator.push(context, route);
          },
        ),
      ),
    );
    list.add(
      Card(
        child: ListTile(
          title: Text("Centros"),
          leading: Icon(
            Icons.fitness_center,
            color: Colors.lightBlueAccent,
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
          ),
          onTap: () {
            final route =
                MaterialPageRoute(builder: (context) => ListaCentrosPage());

            Navigator.push(context, route);
          },
        ),
      ),
    );
    list.add(
      Card(
        child: ListTile(
          title: Text("Profesores"),
          leading: Icon(
            Icons.school,
            color: Colors.lightBlueAccent,
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
          ),
          onTap: () {
            final route =
                MaterialPageRoute(builder: (context) => ListaEmpleadosPage());

            Navigator.push(context, route);
          },
        ),
      ),
    );

    return list;
  }
}
