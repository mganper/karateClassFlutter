import 'package:flutter/material.dart';
import 'package:tfg/view/utils/page_utils.dart';

class ListaClasesPage extends StatelessWidget {

  PageUtils utils = PageUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: utils.appBar(name: 'Lista Clases'),
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
            title: Text("Clase $i - Centro $i"),
            subtitle: Text("16:00 ~ 17:00"),
            onTap: () {},
          )
      );

      alumnosList.add(tile);
    }

    return alumnosList;
  }
}
