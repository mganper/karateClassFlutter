import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tfg/controller/centro/centro_controller.dart';
import 'package:tfg/model/centro/centro.dart';
import 'package:tfg/view/centro/centro_page.dart';
import 'package:tfg/view/utils/page_utils.dart';

class ListaCentrosPage extends StatefulWidget {
  @override
  _ListaCentrosPageState createState() => _ListaCentrosPageState();
}

class _ListaCentrosPageState extends State<ListaCentrosPage> {
  final name = 'Lista Centros';
  final utils = PageUtils();
  final centroController = CentroController();
  Future<List<Centro>> centroListFuture;

  @override
  void initState() {
    super.initState();
    centroListFuture = centroController.getListaCentro();
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: centroListFuture,
      builder: (context, centroList){
        if (centroList.hasData) {
          return Scaffold(
            appBar: utils.appBar(name: name),
            body: utils.gradientBackground(
              content: ListView.builder(
                itemCount: centroList.data.length,
                itemBuilder: (context, index) {
                  return Card(
                      child: ListTile(
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.blue,
                        ),
                        title: Text(centroList.data[index].nombre),
                        subtitle: Text(centroList.data[index].direccion),
                        onTap: () {
                          final route = MaterialPageRoute(
                              builder: (context) => CentroPage(
                                centroId: centroList.data[index].id,
                              ));

                          Navigator.push(context, route);
                        },
                      ));
                },
              ),
            ),
          );
        }
        else if(centroList.hasError){
          return Text("${centroList.error}");
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
