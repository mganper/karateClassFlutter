import 'package:shared_preferences/shared_preferences.dart';
import 'package:tfg/model/common/usuario.dart';

abstract class Api {
  static String usuario;
  static String password;
  final String url = "http://192.168.1.88:8080/api";

  Future<bool> leerUsuario() async {
    final prefs = await SharedPreferences.getInstance();

    final user = prefs.getString('user') ?? '';
    final password = prefs.getString('password') ?? '';

    if (user != '' && password != '') {
      Api.usuario = user;
      Api.password = password;

      return true;
    } else {
      return null;
    }
  }

  Future<bool> guardarusuario(Usuario usuario) async {
    final prefs = await SharedPreferences.getInstance();

    prefs.setString('user', usuario.usuario);
    prefs.setString('password', usuario.password);

    Api.usuario = usuario.usuario;
    Api.password = usuario.password;

    return true;
  }

  Future<bool> eliminarusuario() async {
    final prefs = await SharedPreferences.getInstance();

    prefs.remove('user');
    prefs.remove('password');

    return true;
  }
}
