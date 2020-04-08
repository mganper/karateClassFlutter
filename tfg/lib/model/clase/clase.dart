import 'package:tfg/model/centro/centro.dart';
import 'package:tfg/model/empleado/empleado.dart';

class Clase{
  int id;
  String horaInicio;
  String horaFin;
  int edadMinima;
  int edadMaxima;
  int maxAlumnos;
  double precio;
  String activo;
  Empleado profesor;
  Centro centro;
  int numAlumnos;

  Clase({this.id, this.horaInicio, this.horaFin, this.edadMinima,
      this.edadMaxima, this.maxAlumnos, this.precio, this.activo, this.profesor,
      this.centro, this.numAlumnos});


}