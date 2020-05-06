class Cinturon{
  int id;
  String nombre;

  Cinturon({this.id, this.nombre});

  factory Cinturon.fromJson(Map<String, dynamic> json){
    return Cinturon(
      id: json['id'],
      nombre: json['nomnbre']
    );
  }

}