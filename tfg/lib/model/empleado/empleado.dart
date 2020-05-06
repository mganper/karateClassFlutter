import 'package:tfg/model/common/cinturon.dart';

class Empleado {
  int id;
  String dni;
  String nombre;
  String apellidos;
  String sexo;
  DateTime fechaNacimiento;
  String direccion;
  String telefono;
  Cinturon cinturon;
  int gradoInstructor;

  Empleado(
      {this.id,
      this.dni,
      this.nombre,
      this.apellidos,
      this.sexo,
      this.fechaNacimiento,
      this.direccion,
      this.telefono,
      this.cinturon,
      this.gradoInstructor});

  factory Empleado.fromJson(Map<String, dynamic> json) {
    return Empleado(
      id: json['id'],
      dni: json['dni'],
      nombre: json['nombre'],
      apellidos: json['apellidos'],
      sexo: json['sexo'],
      fechaNacimiento: DateTime.parse(json['fechaNacimiento']),
      direccion: json['direccion'],
      telefono: json['telefono'],
      cinturon: Cinturon.fromJson(json['cinturon']),
      gradoInstructor: json['gradoInstructor'],
    );
  }
}
