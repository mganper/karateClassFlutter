import 'package:tfg/model/centro/centro.dart';
import 'package:tfg/model/empleado/empleado.dart';

class Clase {
  int id;
  String horaInicio;
  String horaFin;
  int edadMinima;
  int edadMaxima;
  int maxAlumnos;
  double precio;
  Empleado profesor;
  Centro centro;
  int numAlumnos;

  Clase(
      {this.id,
      this.horaInicio,
      this.horaFin,
      this.edadMinima,
      this.edadMaxima,
      this.maxAlumnos,
      this.precio,
      this.profesor,
      this.centro,
      this.numAlumnos});

  factory Clase.fromJson(Map<String, dynamic> json) {
    Empleado empleado = Empleado(nombre: 'No', apellidos: 'asignado');

    if(json['profesor'] != null)
      empleado = Empleado.fromJson(json['profesor']);

    return Clase(
        id: json['id'],
        horaInicio: json['horaInicio'],
        horaFin: json['horaFin'],
        edadMinima: json['edadMinima'],
        edadMaxima: json['edadMaxima'],
        maxAlumnos: json['maxAlumnos'],
        precio: json['precio'],
        profesor: empleado,
        centro: Centro.fromJson(json['centro']));
  }
}
