import 'package:flutter/material.dart';
import 'package:tfg/controller/alumno/alumno_controller.dart';
import 'package:tfg/model/alumno/alumno.dart';
import 'package:tfg/view/alumno/alumno_page.dart';
import 'package:tfg/view/utils/page_utils.dart';

class ListaAlumnosPage extends StatefulWidget {
  @override
  createState() => _AlumnosListState();
}

class _AlumnosListState extends State {
  final utils = PageUtils();
  final AlumnoController alumnoController = AlumnoController();
  Future<List<Alumno>> alumnoListFuture;
  final name = 'Lista Alumnos';

  @override
  void initState() {
    super.initState();
    alumnoListFuture = alumnoController.getListaAlumnos();
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: alumnoListFuture,
      builder: (context, alumnoList) {
        if (alumnoList.hasData) {
          return Scaffold(
            appBar: utils.appBar(name: name),
            body: utils.gradientBackground(
              content: ListView.builder(
                itemCount: alumnoList.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.blue,
                      ),
                      title: Text(
                          '${alumnoList.data[index].nombre} ${alumnoList.data[index].apellidos}'),
                      subtitle: Text(_clase(alumno: alumnoList.data[index])),
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => AlumnoPage(
                                  alumnoId: alumnoList.data[index].id,
                                ));

                        Navigator.push(context, route);
                      },
                    ),
                  );
                },
              ),
            ),
          );
        } else if (alumnoList.hasError) {
          return Text("${alumnoList.error}");
        }

        return utils.progressPage(name);
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

  @override
  State<StatefulWidget> createState() {
    return null;
  }
}
