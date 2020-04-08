import 'package:tfg/model/clase/clase.dart';
import 'package:tfg/model/common/cinturon.dart';

class Alumno{

  int id;
  String nombre;
  String apellidos;
  String dni;
  String sexo;
  int edad;
  DateTime fechaNacimiento;
  String tlf;
  String dir;
  Cinturon cint;
  Clase clase;
  String activo;

  Alumno({this.id, this.nombre, this.apellidos, this.dni, this.sexo, this.edad,
      this.fechaNacimiento, this.tlf, this.dir, this.cint, this.clase,
      this.activo});

}