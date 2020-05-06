import 'package:flutter/material.dart';
import 'package:tfg/controller/clase/clase_controller.dart';
import 'package:tfg/model/clase/asistencia.dart';
import 'package:tfg/view/utils/page_utils.dart';

class PasarListaAlumnosClasePage extends StatefulWidget {
  final int idClase;

  PasarListaAlumnosClasePage({this.idClase});

  @override
  _PasarListaAlumnosClaseState createState() =>
      _PasarListaAlumnosClaseState(idClase: idClase);
}

class _PasarListaAlumnosClaseState extends State<PasarListaAlumnosClasePage> {
  final name = 'Confirmar Faltas';
  final int idClase;
  final utils = PageUtils();
  final claseController = ClaseController();
  Future<List<Asistencia>> asistenciaListFuture;
  List<Asistencia> asistenciaList;

  _PasarListaAlumnosClaseState({this.idClase});

  @override
  void initState() {
    super.initState();
    asistenciaListFuture = claseController.getListaAsistenciaClase(idClase);
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: asistenciaListFuture,
      builder: (context, asistenciaList) {
        if (asistenciaList.hasData) {
          this.asistenciaList = asistenciaList.data;

          return Scaffold(
            appBar: utils.appBar(name: name),
            body: utils.gradientBackground(
              content: ListView(
                children: _list(asistenciaList: asistenciaList.data),
              ),
            ),
            floatingActionButton: _buttons(context),
          );
        } else if (asistenciaList.hasError) {}

        return utils.progressPage(name);
      },
    );
  }

  List<Widget> _list({List<Asistencia> asistenciaList}) {
    List<Widget> alumnosList = [];

    asistenciaList.forEach((asistencia) {
      final tile = Card(
        child: ListTile(
          leading: Switch(
            value: asistencia.noAsiste,
            onChanged: (value) {
              setState(() {
                asistencia.noAsiste = !asistencia.noAsiste;
              });
            },
            activeTrackColor: Colors.lightBlueAccent,
            activeColor: Colors.lightBlue,
          ),
          title: Text('${asistencia.alumno.apellidos}'),
          subtitle: Text('${asistencia.alumno.nombre}'),
        ),
      );
      alumnosList.add(tile);
    });

    return alumnosList;
  }

  Widget _buttons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(child: SizedBox()),
        FloatingActionButton(
          heroTag: "btn1",
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.clear),
          backgroundColor: Colors.redAccent,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          heroTag: "btn2",
          onPressed: () {
            _sendData();
          },
          child: Icon(Icons.check),
          backgroundColor: Colors.lightGreen,
        ),
      ],
    );
  }

  @override
  State<StatefulWidget> createState() {
    return null;
  }

  void _sendData() {
    _mostrarProgressAlert(context);

    claseController
        .putListaAsistencia(idClase, asistenciaList)
        .then((response) {
      Navigator.pop(context);
      if (response) {
        Navigator.pop(context);
      } else {
        _mostrarErrorAlert(context);
      }
    });
  }

  void _mostrarProgressAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          content: Center(
            heightFactor: 5,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.lightBlueAccent),
            ),
          ),
        );
      },
    );
  }

  void _mostrarErrorAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          title: Text('Error'),
          content: Center(
            heightFactor: 5,
            child: Text('Se ha producido un error enviando los datos.'),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
