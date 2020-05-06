import 'package:tfg/model/alumno/observacion.dart';
import 'package:tfg/model/clase/clase.dart';
import 'package:tfg/model/common/cinturon.dart';

class Alumno {
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
  List<Observacion> observacionList;

  Alumno(
      {this.id,
      this.nombre,
      this.apellidos,
      this.dni,
      this.sexo,
      this.edad,
      this.fechaNacimiento,
      this.tlf,
      this.dir,
      this.cint,
      this.clase,
      this.activo,
      this.observacionList});

  factory Alumno.fromJson(Map<String, dynamic> json) {
    var list = json['observacionDtoList'] as List;
    List<Observacion> observacionList = null;
    Clase clase = null;

    if (json['claseDto'] != null) clase = Clase.fromJson(json['claseDto']);

    if (list != null)
      observacionList = list.map((i) => Observacion.fromJson(i)).toList();

    return Alumno(
      id: json['id'],
      dni: json['dni'],
      nombre: json['nombre'],
      apellidos: json['apellidos'],
      sexo: json['sexo'],
      edad: json['edad'],
      fechaNacimiento: DateTime.parse(json['fechaNac']),
      tlf: json['tlf'],
      dir: json['dir'],
      clase: clase,
      cint: Cinturon.fromJson(json['cint']),
      observacionList: observacionList,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "dni": this.dni,
      "nombre": this.nombre,
      "apellidos": this.apellidos,
      "sexo": this.sexo,
      "edad": this.edad,
      "fechaString": null,
      "fechaNac": this.fechaNacimiento,
      "tlf": this.tlf,
      "dir": this.dir,
      "claseDto": null,
      "cint": null,
      "observacionDtoList": null,
      "activo": null
    };
  }

  static List encondeToJson(List<Alumno> list) {
    List jsonList = List();
    list.map((item) => jsonList.add(item.toJson())).toList();
    return jsonList;
  }
}
