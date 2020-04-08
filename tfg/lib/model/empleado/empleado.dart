import 'package:tfg/model/common/cinturon.dart';

class Empleado{
  int id;
  String dni;
  String nombre;
  String apellidos;
  String sexo;
  DateTime fechaNacimiento;
  String direccion;
  String telefono;
  double sueldo;
  Cinturon cinturon;
  int gradoInstructor;
  String activo;

  Empleado({this.id, this.dni, this.nombre, this.apellidos, this.sexo,
      this.fechaNacimiento, this.direccion, this.telefono, this.sueldo,
      this.cinturon, this.gradoInstructor, this.activo});

}