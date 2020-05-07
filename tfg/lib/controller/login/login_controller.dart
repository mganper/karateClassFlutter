import 'dart:convert';

import 'package:http/http.dart';
import 'package:tfg/controller/common/api.dart';
import 'package:tfg/model/common/usuario.dart';

class LoginController extends Api {
  String basicAuth;
  String url;

  LoginController() {
    this.url = super.url + '/login';
  }


  Future<bool> login({String username, String password}) async {
    String path = '${this.url}';
    this.basicAuth =
        'Basic ' + base64Encode(utf8.encode('$username:$password'));

    Response response = await get(path, headers: {'authorization': basicAuth});

    if (response.statusCode == 200) {
        super.guardarusuario(Usuario(usuario: username, password: password));
        return true;
    } else
      return false;
  }

}
