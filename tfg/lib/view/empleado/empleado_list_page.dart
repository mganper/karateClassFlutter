import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tfg/controller/empleado/empleado_controller.dart';
import 'package:tfg/model/empleado/empleado.dart';
import 'package:tfg/view/empleado/empleado_page.dart';
import 'package:tfg/view/utils/page_utils.dart';

class ListaEmpleadosPage extends StatefulWidget {
  @override
  _ListaEmpleadosPageState createState() => _ListaEmpleadosPageState();
}

class _ListaEmpleadosPageState extends State<ListaEmpleadosPage> {
  final utils = PageUtils();
  final empleadoController = EmpleadoController();
  Future<List<Empleado>> empleadoFuture;
  final name = 'Lista Profesores';

  @override
  void initState() {
    super.initState();
    empleadoFuture = empleadoController.getListaEmpleados();
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: empleadoFuture,
      builder: (context, empleadoList) {
        if (empleadoList.hasData) {
          return Scaffold(
            appBar: utils.appBar(name: name),
            body: utils.gradientBackground(
              content: ListView.builder(
                itemCount: empleadoList.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.blue,
                      ),
                      title: Text(
                          '${empleadoList.data[index].nombre} ${empleadoList.data[index].apellidos}'),
                      subtitle: Text(empleadoList.data[index].telefono),
                      onTap: () {
                        final route = MaterialPageRoute(
                            builder: (context) => EmpleadoPage(
                                  idEmpleado: empleadoList.data[index].id,
                                ));

                        Navigator.push(context, route);
                      },
                    ),
                  );
                },
              ),
            ),
          );
        } else if (empleadoList.hasError) {
          return utils.errorPage(name);
        }

        return utils.progressPage(name);
      },
    );
  }

  @override
  State<StatefulWidget> createState() {
    return null;
  }
}
