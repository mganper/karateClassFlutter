import 'package:tfg/model/alumno/alumno.dart';

class Observacion {
  int id;
  Alumno alumno;
  String dato;
  DateTime fecha;

  Observacion({this.id, this.alumno, this.dato, this.fecha});

  factory Observacion.fromJson(Map<String, dynamic> json) {
    return Observacion(
      dato: json['dato'],
      fecha: DateTime.parse(json['fecha']),
    );
  }
}
