import 'dart:convert';

import 'package:http/http.dart';
import 'package:tfg/controller/father/api.dart';
import 'package:tfg/model/alumno/alumno.dart';
import 'package:tfg/model/clase/asistencia.dart';
import 'package:tfg/model/clase/clase.dart';

class ClaseController extends Api {
  String username = '28554690Y';
  String password = '1234';
  String basicAuth;
  String url;

  ClaseController() {
    this.basicAuth =
        'Basic ' + base64Encode(utf8.encode('$username:$password'));
    this.url = super.url + '/clases';
  }

  Future<Clase> getClase(int id) async {
    String path = '${this.url}/get?id=$id';

    var response = await get(path, headers: {'authorization': basicAuth});

    if (response.statusCode == 200) {
      return Clase.fromJson(json.decode(utf8.decode(response.bodyBytes)));
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<List<Clase>> getListaClases() async {
    String path = '${this.url}/list';

    var response = await get(path, headers: {'authorization': basicAuth});

    if (response.statusCode == 200) {
      Iterable list = json.decode(utf8.decode(response.bodyBytes));
      return list.map((model) => Clase.fromJson(model)).toList();
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<List<Alumno>> getListaClase(int id) async {
    String path = '${this.url}/listaClase?id=$id';

    var response = await get(path, headers: {'authorization': basicAuth});

    if (response.statusCode == 200) {
      Iterable list = json.decode(utf8.decode(response.bodyBytes));
      return list.map((model) => Alumno.fromJson(model)).toList();
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<List<Asistencia>> getListaAsistenciaClase(int id) async {
    var asistenciaList = List<Asistencia>();
    String path = '${this.url}/listaClase?id=$id';

    var response = await get(path, headers: {'authorization': basicAuth});

    if (response.statusCode == 200) {
      Iterable list = json.decode(utf8.decode(response.bodyBytes));
      List<Alumno> alumnoList =
          list.map((model) => Alumno.fromJson(model)).toList();

      alumnoList.forEach((alumno) {
        asistenciaList.add(Asistencia(alumno: alumno, noAsiste: false));
      });

      return asistenciaList;
    } else {
      throw Exception('Failed to load Centro');
    }
  }

  Future<bool> putListaAsistencia(int id, List<Asistencia> listaAsistencia) async {
    String path = '${this.url}/setFaltas';
    String listaAlumnos = "[";
    int numFaltas = 0;

    for(int i = 0; i < listaAsistencia.length; i++){
      if(listaAsistencia[i].noAsiste){
        if(i < listaAsistencia.length-1){
          listaAlumnos = "$listaAlumnos ${listaAsistencia[i].alumno.id}, ";
        } else {
          listaAlumnos = "$listaAlumnos ${listaAsistencia[i].alumno.id} ";
        }
        numFaltas++;
      }
    }

    listaAlumnos = "$listaAlumnos]";

    if(numFaltas > 0) {

      var response = await put(
        path,
        headers: <String, String>{
          'authorization': basicAuth,
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: listaAlumnos,
      );

      if (response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } else {
      return true;
    }
  }
}
