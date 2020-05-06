import 'package:tfg/model/clase/clase.dart';

class ListaClase{
  Clase clase;
  List<int> idAlumnoList;

  ListaClase({this.clase, this.idAlumnoList});

  factory ListaClase.fromjson(Map<String, dynamic> json){
    return ListaClase(
      clase: json['clase'],
      idAlumnoList: json['idAlumnosList'] as List
    );
  }

}