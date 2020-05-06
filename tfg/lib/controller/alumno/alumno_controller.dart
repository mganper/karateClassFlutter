import 'dart:convert';

import 'package:http/http.dart';
import 'package:tfg/controller/father/api.dart';
import 'package:tfg/model/alumno/alumno.dart';

class AlumnoController extends Api {
  String username = '28554690Y';
  String password = '1234';
  String basicAuth;
  String url;

  AlumnoController() {
    this.basicAuth =
        'Basic ' + base64Encode(utf8.encode('$username:$password'));
    this.url = '${super.url}/alumnos';
  }

  Future<Alumno> getAlumno(int id) async {
    String path = '${this.url}/get?id=$id';

    var response = await get(path, headers: {'authorization': basicAuth});

    if (response.statusCode == 200) {
      return Alumno.fromJson(json.decode(utf8.decode(response.bodyBytes)));
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<List<Alumno>> getListaAlumnos() async {
    String path = '${this.url}/list';

    var response = await get(path, headers: {'authorization': basicAuth});

    if (response.statusCode == 200) {
      Iterable list = json.decode(utf8.decode(response.bodyBytes));
      return list.map((model) => Alumno.fromJson(model)).toList();
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<bool> putPago(int idAlumno, double cantidad, int mes, int anyo) async {
    String path = '${this.url}/addPago';

    var response = await put(
      path,
      headers: <String, String>{
        'authorization': basicAuth,
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'id': idAlumno,
        'mes': mes,
        'anyo': anyo,
        'cantidad': cantidad
      }),
    );

    if (response.statusCode == 201) {
      return true;
    } else {
      throw Exception('Failed to upoad');
    }
  }
}
