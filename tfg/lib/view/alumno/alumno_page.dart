import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:intl/intl.dart';

import 'package:tfg/controller/alumno/alumno_controller.dart';
import 'package:tfg/model/alumno/alumno.dart';
import 'package:tfg/view/utils/page_utils.dart';
import 'package:tfg/view/utils/widgets/inputAnyo.dart';
import 'package:tfg/view/utils/widgets/inputMes.dart';
import 'package:tfg/view/utils/widgets/inputPrecio.dart';

class AlumnoPage extends StatefulWidget {
  final int alumnoId;

  AlumnoPage({this.alumnoId});

  @override
  createState() => _AlumnoState(alumnoId: alumnoId);
}

class _AlumnoState extends State {
  final name = 'información Alumno';
  final _controllerMes = TextEditingController();
  final _controllerAnyo = TextEditingController();
  final _controllerCantidad = TextEditingController();
  final utils = PageUtils();
  final AlumnoController alumnoController = AlumnoController();
  Future<Alumno> alumnoFuture;
  final int alumnoId;
  final dateformat = DateFormat('yyyy-MM-dd');
  int _isChargin = 0;

  _AlumnoState({this.alumnoId});

  @override
  void initState() {
    super.initState();
    alumnoFuture = alumnoController.getAlumno(alumnoId);
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: alumnoFuture,
        builder: (context, alumno) {
          if (alumno.hasData) {
            return Scaffold(
              appBar: utils.appBar(name: name),
              body: utils.gradientBackground(
                content: ListView(
                  children: <Widget>[
                    _cardUser(alumno: alumno.data),
                    _cardObser(alumno: alumno.data),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.attach_money),
                onPressed: () => _mostrarAlert(context),
                backgroundColor: Colors.lightBlueAccent,
              ),
            );
          } else if (alumno.hasError) {
            return utils.errorPage(name);
          }

          return utils.progressPage(name);
        });
  }

  Widget _cardUser({Alumno alumno}) {
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
              'DNI: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              alumno.dni,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Nombre: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              alumno.nombre,
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
            Text(alumno.apellidos, style: TextStyle(fontSize: 18.0)),
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
            Text(
              alumno.sexo,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'F. Nacimiento: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(
              dateformat.format(alumno.fechaNacimiento).toString(),
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Tlf. Contacto: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(alumno.tlf, style: TextStyle(fontSize: 18.0)),
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
              alumno.cint.nombre,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Clase: ',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Text(_clase(alumno: alumno),
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ],
    );
  }

  Widget _cardObser({Alumno alumno}) {
    List<Widget> widgetList = [];
    widgetList.add(Text(
      'Observaciones: ',
      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
    ));
    widgetList.add(SizedBox(
      height: 20.0,
    ));

    alumno.observacionList.forEach((observacion) {
      widgetList.add(Text(
        observacion.dato,
        style: TextStyle(fontSize: 18.0),
      ));
      widgetList.add(Text(
        dateformat.format(observacion.fecha).toString(),
        style: TextStyle(fontSize: 18.0),
      ));
      widgetList.add(Divider());
    });

    widgetList.removeLast();

    return utils.container(content: widgetList);
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: Text('Confirmar pago'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: _setUpDialog(),
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  if (_isChargin == 0) {
                    Navigator.of(context).pop();
                  }
                },
                child: Text('Cancelar')),
            FlatButton(
                onPressed: () {
                  if (_isChargin == 0) {
                    _animate();
                  }
                },
                child: Text('OK')),
          ],
        );
      },
    );
  }

  String _clase({Alumno alumno}){
    if(alumno.clase == null){
      return 'No asignado';
    } else {
      return '${alumno.clase.id} - ${alumno.clase.centro.nombre}';
    }
  }

  void _animate() {
    _isChargin = 1;

    alumnoController
        .putPago(alumnoId, double.parse(_controllerCantidad.text),
            int.parse(_controllerMes.text), int.parse(_controllerAnyo.text))
        .then((resp) {
      if (resp) {
        Navigator.of(context).pop();
      } else {
        setState(() {
          _isChargin = 0;
        });
      }
    });
  }

  List<Widget> _setUpDialog() {
    if (_isChargin == 1) {
      return <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
            ),
          ],
        ),
      ];
    } else {
      return <Widget>[
        Text('Indique mes y año del pago:'),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            InputPrecio(
              controller: _controllerCantidad,
            ),
            InputMes(controller: _controllerMes),
            InputAnyo(controller: _controllerAnyo),
          ],
        ),
      ];
    }
  }
}
