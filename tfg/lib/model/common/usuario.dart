class Usuario {
  final String usuario;
  final String password;

  Usuario({this.usuario, this.password});

  Map<String, dynamic> toMap() {
    return {'usuario': this.usuario, 'password': this.password};
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      usuario: map['usuario'],
      password: map['password']
    );
  }
}
