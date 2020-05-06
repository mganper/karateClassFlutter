import 'package:flutter/material.dart';
import 'package:tfg/controller/clase/clase_controller.dart';
import 'package:tfg/model/clase/clase.dart';
import 'package:tfg/view/clase/clase_page.dart';
import 'package:tfg/view/utils/page_utils.dart';

class ListaClasesPage extends StatefulWidget {
  @override
  _ListaClasesPageState createState() => _ListaClasesPageState();
}

class _ListaClasesPageState extends State<ListaClasesPage> {
  final name = 'Lista Clases';
  PageUtils utils = PageUtils();
  final claseController = ClaseController();
  Future<List<Clase>> claseListFuture;

  @override
  void initState() {
    super.initState();
    claseListFuture = claseController.getListaClases();
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: claseListFuture,
      builder: (context, claseList) {
        if (claseList.hasData) {
          return Scaffold(
            appBar: utils.appBar(name: name),
            body: utils.gradientBackground(
              content: ListView.builder(
                itemCount: claseList.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.blue,
                      ),
                      title: Text(
                          '${claseList.data[index].id}  - ${claseList.data[index].centro.nombre}'),
                      subtitle: Text(
                          '${claseList.data[index].horaInicio} ~ ${claseList.data[index].horaFin}'),
                      onTap: () {
                        final route = MaterialPageRoute(
                          builder: (context) => ClasePage(
                            idClase: claseList.data[index].id,
                          ),
                        );

                        Navigator.push(context, route);
                      },
                    ),
                  );
                },
              ),
            ),
          );
        } else if (claseList.hasError) {
          return Text("${claseList.error}");
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
