import 'package:tfg/model/centro/responsable.dart';

class Centro{
  int id;
  String nombre;
  String direccion;
  String horaMaximaInicio;
  String horaMaximaFin;
  int maxClases;
  double precioMes;
  String activo;
  Responsable responsable;
  int numClases;

  Centro({this.id, this.nombre, this.direccion, this.horaMaximaInicio,
      this.horaMaximaFin, this.maxClases, this.precioMes, this.activo,
      this.responsable, this.numClases});

}