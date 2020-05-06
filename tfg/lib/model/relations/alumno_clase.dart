import 'package:tfg/model/alumno/alumno.dart';
import 'package:tfg/model/clase/clase.dart';

class AlumnoClase{
  int id;
  Alumno alumno;
  Clase clase;

  AlumnoClase({this.id, this.alumno, this.clase});

  factory AlumnoClase.fromJson(Map<String, dynamic> json){
    return AlumnoClase(
      id: json['id'],
      alumno: Alumno.fromJson(json['alumno']),
      clase: Clase.fromJson(json['clase'])
    );
  }
}