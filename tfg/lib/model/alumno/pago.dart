import 'package:tfg/model/alumno/alumno.dart';

class Pago{
  int id;
  Alumno alumno;
  DateTime fecha;
  DateTime mesPagado;
  double cantidad;

  Pago({this.id, this.alumno, this.fecha, this.mesPagado, this.cantidad});

  factory Pago.fromJson(Map<String, dynamic> json){
    return Pago(
      id: json['id'],
      alumno: Alumno.fromJson(json['alumno']),
      fecha: DateTime.parse(json['fecha']),
      mesPagado: DateTime.parse(json['mesPagado']),
      cantidad: json['cantidad']
    );
  }
}