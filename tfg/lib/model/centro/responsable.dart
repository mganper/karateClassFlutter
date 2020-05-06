class Responsable {
  int id;
  String nombre;
  String apellidos;
  String cargo;
  String correo;
  String telefono;

  Responsable(
      {this.id,
      this.nombre,
      this.apellidos,
      this.cargo,
      this.correo,
      this.telefono});

  factory Responsable.fromJson(Map<String, dynamic> json) {
    return Responsable(
        id: json['id'],
        nombre: json['nombre'],
        apellidos: json['apellidos'],
        cargo: json['cargo'],
        correo: json['correo'],
        telefono: json['telefono']);
  }
}
