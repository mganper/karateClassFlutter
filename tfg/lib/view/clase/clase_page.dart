import 'package:flutter/material.dart';
import 'package:tfg/controller/clase/clase_controller.dart';
import 'package:tfg/model/clase/clase.dart';
import 'package:tfg/view/clase/anotar_lista_alumnos_clase_page.dart';
import 'package:tfg/view/clase/lista_alumnos_clase_page.dart';
import 'package:tfg/view/utils/page_utils.dart';

class ClasePage extends StatefulWidget {
  final int idClase;

  ClasePage({this.idClase});

  @override
  _ClasePageState createState() => _ClasePageState(idClase: idClase);
}

class _ClasePageState extends State<ClasePage> {
  final name = 'Información Clase';
  final int idClase;
  PageUtils utils = PageUtils();
  final claseController = ClaseController();
  Future<Clase> claseFuture;

  _ClasePageState({this.idClase});

  @override
  void initState() {
    super.initState();
    claseFuture = claseController.getClase(idClase);
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: claseFuture,
      builder: (context, clase) {
        if (clase.hasData) {
          return Scaffold(
            appBar: utils.appBar(name: name),
            body: utils.gradientBackground(
                content: ListView(
              children: <Widget>[
                _cardClase(clase: clase.data),
              ],
            )),
            floatingActionButton: _buttons(context, clase.data.id),
          );
        } else if (clase.hasError) {
          return Text("${clase.error}");
        }

        return utils.progressPage(name);
      },
    );
  }

  Widget _cardClase({Clase clase}) {
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
              '${clase.id} - ${clase.centro.nombre}',
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
              '${clase.precio} €',
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
            Text('${clase.horaInicio}', style: TextStyle(fontSize: 18.0)),
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
              '${clase.horaFin}',
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
              '${clase.edadMinima} años',
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
              '${clase.edadMaxima} años',
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
            Text('${clase.centro.nombre}', style: TextStyle(fontSize: 18.0)),
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
              '${clase.profesor.nombre} ${clase.profesor.apellidos}',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buttons(BuildContext context, int idClase) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(child: SizedBox()),
        FloatingActionButton(
          heroTag: "btn1",
          onPressed: () {
            final route = MaterialPageRoute(
                builder: (context) => ListaAlumnosClasePage(
                      idClase: idClase,
                    ));

            Navigator.push(context, route);
          },
          child: Icon(Icons.list),
          backgroundColor: Colors.lightBlueAccent,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          heroTag: "btn2",
          onPressed: () {
            final route = MaterialPageRoute(
                builder: (context) => PasarListaAlumnosClasePage(
                      idClase: idClase,
                    ));

            Navigator.push(context, route);
          },
          child: Icon(Icons.playlist_add_check),
          backgroundColor: Colors.lightBlueAccent,
        ),
      ],
    );
  }
}
