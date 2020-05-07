import 'package:flutter/material.dart';
import 'package:tfg/controller/centro/centro_controller.dart';
import 'package:tfg/model/centro/centro.dart';
import 'package:tfg/view/utils/page_utils.dart';

class CentroPage extends StatefulWidget {
  final int centroId;

  CentroPage({this.centroId});

  @override
  _CentroPageState createState() => _CentroPageState(centroId: centroId);
}

class _CentroPageState extends State<CentroPage> {
  final name = 'Información Centro';
  final int centroId;
  final utils = PageUtils();
  final centroController = CentroController();
  Future<Centro> centroFuture;

  _CentroPageState({this.centroId});

  @override
  void initState() {
    super.initState();
    centroFuture = centroController.getCentro(centroId);
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Centro>(
      future: centroFuture,
      builder: (context, centro) {
        if (centro.hasData) {
          return Scaffold(
            appBar: utils.appBar(name: name),
            body: utils.gradientBackground(
              content: ListView(
                children: <Widget>[
                  _cardCentro(centro: centro.data),
                  _cardResponsable(centro: centro.data),
                ],
              ),
            ),
          );
        } else if (centro.hasError) {
          return utils.errorPage(name);
        }

        return utils.progressPage(name);
      },
    );
  }

  Widget _cardCentro({Centro centro}) {
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
              '${centro.nombre}',
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
              '${centro.direccion}',
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
            Text('${centro.horaMaximaInicio}',
                style: TextStyle(fontSize: 18.0)),
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
              '${centro.horaMaximaFin}',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ],
    );
  }

  Widget _cardResponsable({Centro centro}) {
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
              '${centro.responsable.nombre}',
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
              '${centro.responsable.apellidos}',
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
            Text('${centro.responsable.cargo}',
                style: TextStyle(fontSize: 18.0)),
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
              '${centro.responsable.correo}',
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
              '${centro.responsable.telefono}',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ],
    );
  }
}
