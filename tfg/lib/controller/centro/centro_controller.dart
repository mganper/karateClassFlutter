import 'dart:convert';

import 'package:http/http.dart';
import 'package:tfg/controller/common/api.dart';
import 'package:tfg/model/centro/centro.dart';

class CentroController extends Api {
  String basicAuth;
  String url;

  CentroController() {
    this.basicAuth =
        'Basic ' + base64Encode(utf8.encode('${Api.usuario}:${Api.password}'));
    this.url = super.url + '/centros';
  }

  Future<Centro> getCentro(int id) async {
    String path = this.url + '/get?id=$id';

    var response = await get(path, headers: {'authorization': basicAuth});

    if (response.statusCode == 200) {
      return Centro.fromJson(json.decode(utf8.decode(response.bodyBytes)));
    } else {
      throw Exception('Failed to load');
    }
  }

  Future<List<Centro>> getListaCentro() async {
    String path = this.url + '/list';

    var response = await get(path, headers: {'authorization': basicAuth});

    if (response.statusCode == 200) {
      Iterable list = json.decode(utf8.decode(response.bodyBytes));
      return list.map((model) => Centro.fromJson(model)).toList();
    } else {
      throw Exception('Failed to load');
    }
  }
}
