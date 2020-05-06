import 'package:tfg/model/relations/alumno_clase.dart';

class Faltas{
  int id;
  DateTime fecha;
  AlumnoClase alumnoClase;

  Faltas({this.id, this.fecha, this.alumnoClase});

  factory Faltas.fromJson(Map<String, dynamic> json){
    return Faltas(
      id: json['id'],
      fecha: json['fecha']
    );
  }

}