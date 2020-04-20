import 'package:flutter/material.dart';

class ListaCentrosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista Centros"),
      ),
      body: ListView(
        children: _list(),
      ),
    );
  }

  List<Widget> _list() {
    List<Widget> centrosList = [];

    for (int i = 0; i < 5; i++) {
      final tile = Card(
          child: ListTile(
            trailing: Icon(Icons.arrow_forward),
            title: Text("Centro$i"),
            subtitle: Text("Calle 1, s/n"),
            isThreeLine: true,
            onTap: () {},
          )
      );

      centrosList.add(tile);
    }

    return centrosList;
  }
}
