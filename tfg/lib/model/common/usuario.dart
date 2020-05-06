class Usuario{
  final String usuario;
  final String password;

  Usuario({this.usuario, this.password});

  Map<String, dynamic> toMap() {
    return {
      'usuario': this.usuario,
      'password': this.password
    };
  }
}