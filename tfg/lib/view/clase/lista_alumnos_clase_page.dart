import 'package:flutter/material.dart';
import 'package:tfg/controller/clase/clase_controller.dart';
import 'package:tfg/model/alumno/alumno.dart';
import 'package:tfg/view/alumno/alumno_page.dart';
import 'package:tfg/view/utils/page_utils.dart';

class ListaAlumnosClasePage extends StatefulWidget {
  final int idClase;

  ListaAlumnosClasePage({this.idClase});

  @override
  _ListaAlumnosClasePageState createState() =>
      _ListaAlumnosClasePageState(idClase: idClase);
}

class _ListaAlumnosClasePageState extends State<ListaAlumnosClasePage> {
  final name = 'Lista de Clase';
  final int idClase;
  final utils = PageUtils();
  final claseController = ClaseController();
  Future<List<Alumno>> alumnoListFuture;

  _ListaAlumnosClasePageState({this.idClase});

  @override
  void initState() {
    super.initState();
    alumnoListFuture = claseController.getListaClase(idClase);
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: alumnoListFuture,
      builder: (context, alumnoList){
        if (alumnoList.hasData) {
          return Scaffold(
            appBar: utils.appBar(name: name),
            body: utils.gradientBackground(
              content: ListView(
                children: _list(context, alumnoList.data),
              ),
            ),
          );
        }
        else if(alumnoList.hasError){
          return utils.errorPage(name);
        }
        return utils.progressPage(name);
      },
    );
  }

  List<Widget> _list(BuildContext context, List<Alumno> alumnoList) {
    List<Widget> alumnosList = [];

    alumnoList.forEach((alumno){
      final tile = Card(
        child: ListTile(
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue,
          ),
          title: Text("${alumno.nombre} ${alumno.apellidos}"),
          onTap: () {
            final route = MaterialPageRoute(builder: (context) => AlumnoPage(alumnoId: alumno.id));

            Navigator.push(context, route);
          },
        ),
      );

      alumnosList.add(tile);
    });

    return alumnosList;
  }
}
