import 'dart:convert';

import 'package:http/http.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tfg/controller/father/api.dart';
import 'package:tfg/model/common/usuario.dart';

class LoginController extends Api {
  String basicAuth;
  String url;

  LoginController() {
    this.url = super.url + '/login';
  }

  Future<bool> isLoged() async {
//    List<Usuario> list = await super.usuarios();
//
//    if (list.length != 0) {
      return true;
//    } else {
//      return false;
//    }
  }

  Future<bool> login({String username, String password}) async {
    String path = '${this.url}/loign';
    this.basicAuth =
        'Basic ' + base64Encode(utf8.encode('$username:$password'));

    Response response = await get(path, headers: {'authorization': basicAuth});

    if (response.statusCode == 200) {
//      var usuario = Usuario(usuario: username, password: password);
//      _insertUsuario(usuario).then((ret) {
        return true;
//      });
    } else
      return false;
  }

//  Future<bool> logout(){
//    super.database.delete('usuario').then((ret){
//      return true;
//    });
//  }
//
//  Future<void> _insertUsuario(Usuario usuario) async {
//    await super.database.insert(
//          'usuario',
//          usuario.toMap(),
//          conflictAlgorithm: ConflictAlgorithm.replace,
//        );
//  }
}
