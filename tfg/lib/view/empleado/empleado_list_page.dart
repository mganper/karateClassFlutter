import 'package:flutter/material.dart';
import 'package:tfg/view/utils/page_utils.dart';

class ListaEmpleadosPage extends StatelessWidget {
  final utils = PageUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: utils.appBar(name: 'Lista Empleados'),
      body: utils.gradientBackground(
        content: ListView(
          children: _list(),
        ),
      ),
    );
  }

  List<Widget> _list() {
    List<Widget> alumnosList = [];

    for (int i = 0; i < 10; i++) {
      final tile = Card(
        child: ListTile(
          trailing: Icon(Icons.arrow_forward),
          title: Text("Nombre$i Apellido$i Apellido$i"),
          subtitle: Text("651111111"),
          onTap: () {},
        ),
      );

      alumnosList.add(tile);
    }

    return alumnosList;
  }
}
