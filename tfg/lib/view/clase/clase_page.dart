import 'package:flutter/material.dart';
import 'package:tfg/view/utils/page_utils.dart';

class ClasePage extends StatelessWidget {
  PageUtils utils = PageUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: utils.appBar(name: 'Clase 1 - Centro 1'),
      body: utils.gradientBackground(
          content: ListView(
        children: <Widget>[
          _cardClase(),
        ],
      )),
      floatingActionButton: _buttons(),
    );
  }

  Widget _cardClase() {
    return utils.container(
      content: <Widget>[
        Text(
          'Datos: ',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Identificador: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Clase 1 - Centro 1',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Precio: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              '25 €',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hora de Inicio: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text('16:00', style: TextStyle(fontSize: 18.0)),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Hora de Fin: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              '17:00',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Edad Mínima: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              '4 años',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Edad Máxima: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              '10 años',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Centro: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text('Centro 1', style: TextStyle(fontSize: 18.0)),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Profesor: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Nombre1 Apellido1 Apellido2',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.list),
          backgroundColor: Colors.lightBlueAccent,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.playlist_add_check),
          backgroundColor: Colors.lightBlueAccent,
        ),
      ],
    );
  }
}
