import 'package:tfg/model/centro/responsable.dart';

class Centro {
  int id;
  String nombre;
  String direccion;
  String horaMaximaInicio;
  String horaMaximaFin;
  int maxClases;
  double precioMes;
  Responsable responsable;
  int numClases;

  Centro(
      {this.id,
      this.nombre,
      this.direccion,
      this.horaMaximaInicio,
      this.horaMaximaFin,
      this.maxClases,
      this.precioMes,
      this.responsable,
      this.numClases});

  factory Centro.fromJson(Map<String, dynamic> json) {
    return Centro(
        id: json['id'],
        nombre: json['nombre'],
        direccion: json['direccion'],
        horaMaximaInicio: json['horaMaximaInicio'],
        horaMaximaFin: json['horaMaximaFin'],
        maxClases: json['maxClases'],
        responsable: Responsable.fromJson(json['responsable']),
        numClases: json['numClases']);
  }
}
