import 'package:flutter/material.dart';
import 'package:tfg/view/utils/page_utils.dart';

class CentroPage extends StatelessWidget {
  final utils = PageUtils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: utils.appBar(name: 'Centro 1'),
      body: utils.gradientBackground(
        content: ListView(
          children: <Widget>[
            _cardCentro(),
            _cardResponsable(),
          ],
        ),
      ),
    );
  }

  Widget _cardCentro() {
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
              'Colegio1',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Dirección: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'Calle 1, s/n',
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
              '19:00',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ],
    );
  }

  Widget _cardResponsable() {
    return utils.container(
      content: <Widget>[
        Text(
          'Responsable: ',
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
              'Cargo: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text('Responsable Actividades', style: TextStyle(fontSize: 18.0)),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Correo: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              'correo@correo.es',
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
              '651666666',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ],
    );
  }
}
