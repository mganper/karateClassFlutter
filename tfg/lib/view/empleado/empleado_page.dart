import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:intl/intl.dart';
import 'package:tfg/controller/empleado/empleado_controller.dart';
import 'package:tfg/model/empleado/empleado.dart';
import 'package:tfg/view/utils/page_utils.dart';

class EmpleadoPage extends StatefulWidget {
  final int idEmpleado;

  EmpleadoPage({this.idEmpleado});

  @override
  _EmpleadoPageState createState() =>
      _EmpleadoPageState(idEmpleado: idEmpleado);
}

class _EmpleadoPageState extends State<EmpleadoPage> {
  final int idEmpleado;
  PageUtils utils = PageUtils();
  final empleadoController = EmpleadoController();
  Future<Empleado> empleadoFuture;
  final dateformat = DateFormat('yyyy-MM-dd');
  final name = 'Información Empleado';

  _EmpleadoPageState({this.idEmpleado});

  @override
  void initState() {
    super.initState();
    empleadoFuture = empleadoController.getEmpleado(idEmpleado);
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: empleadoFuture,
      builder: (context, empleado) {
        if (empleado.hasData) {
          return Scaffold(
            appBar: utils.appBar(name: name),
            body: utils.gradientBackground(
              content: ListView(
                children: <Widget>[
                  _cardEmpleado(empleado: empleado.data),
                ],
              ),
            ),
          );
        } else if (empleado.hasError) {
          return utils.errorPage(name);
        }

        return utils.progressPage(name);
      },
    );
  }

  Widget _cardEmpleado({Empleado empleado}) {
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
              '${empleado.nombre}',
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
              '${empleado.apellidos}',
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
            Text('${empleado.sexo}', style: TextStyle(fontSize: 18.0)),
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
              dateformat.format(empleado.fechaNacimiento).toString(),
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
              '${empleado.telefono}',
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
              '${empleado.cinturon.nombre}',
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
            Text('Grado ${empleado.gradoInstructor}',
                style: TextStyle(fontSize: 18.0)),
          ],
        ),
      ],
    );
  }
}
