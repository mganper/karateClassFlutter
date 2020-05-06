import 'dart:convert';

import 'package:http/http.dart';
import 'package:tfg/controller/father/api.dart';
import 'package:tfg/model/empleado/empleado.dart';

class EmpleadoController extends Api {
  String username = '28554690Y';
  String password = '1234';
  String basicAuth;
  String url;

  EmpleadoController() {
    this.basicAuth =
        'Basic ' + base64Encode(utf8.encode('$username:$password'));
    this.url = super.url + '/profesores';
  }

  Future<Empleado> getEmpleado(int id) async {
    String path = this.url + '/get?id=$id';

    var response = await get(path,
        headers: {'authorization': basicAuth});

    if (response.statusCode == 200) {
      return Empleado.fromJson(json.decode(utf8.decode(response.bodyBytes)));
    } else {
      throw Exception('Failed to load Centro');
    }
  }

  Future<List<Empleado>> getListaEmpleados() async {
    String path = this.url + '/list';

    var response = await get(path, headers: {'authorization': basicAuth});

    if (response.statusCode == 200) {
      Iterable list = json.decode(utf8.decode(response.bodyBytes));
      return list.map((model) => Empleado.fromJson(model)).toList();
    } else {
      throw Exception('Failed to load');
    }
  }
}