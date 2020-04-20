import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:tfg/view/utils/page_utils.dart';

class EmpleadoPage extends StatelessWidget {
  PageUtils utils = PageUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: utils.appBar(name: 'Nombre1 Apellido1 Apellido2'),
      body: utils.gradientBackground(
        content: ListView(
          children: <Widget>[
            _cardEmpleado(),
          ],
        ),
      ),
      //floatingActionButton: _buttons(),
    );
  }

  Widget _cardEmpleado() {
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
              'Nombre: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Nombre1',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Apellidos: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Apellido1 Apellido2',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Sexo: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text('Masculino', style: TextStyle(fontSize: 18.0)),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Fecha Nacimiento: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              '1996-01-22',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Teléfono: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              '651111111',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Cinturón: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Negro',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Grado de Instructor: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text('Grado 1', style: TextStyle(fontSize: 18.0)),
          ],
        ),
      ],
    );
  }
}
