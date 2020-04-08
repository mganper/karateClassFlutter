import 'package:tfg/model/alumno/alumno.dart';
import 'package:tfg/model/clase/clase.dart';

class AlumnoClase{
  int id;
  Alumno alumno;
  Clase clase;

  AlumnoClase({this.id, this.alumno, this.clase});

}