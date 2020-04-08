import 'package:tfg/model/alumno/alumno.dart';

class Pago{
  int id;
  Alumno alumno;
  DateTime fecha;
  DateTime mesPagado;
  double cantidad;

  Pago({this.id, this.alumno, this.fecha, this.mesPagado, this.cantidad});

}