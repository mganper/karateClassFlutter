import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tfg/model/common/usuario.dart';

abstract class Api {
  final String url = "http://192.168.1.88:8080/api";
  Database database;

//  Future<Database> _getDatabase() async {
//    openDatabase(
//      join(await getDatabasesPath(), 'users_database.db'),
//      onCreate: (db, version) {
//        return db.execute(
//          "CREATE TABLE usuarios(usuario TEXT PRIMARY KEY, password TEXT)",
//        );
//      },
//      version: 1,
//    );
//  }
//
//  Future<List<Usuario>> usuarios() async {
//    if (database == null) {
//      _getDatabase();
//    }
//
//    final List<Map<String, dynamic>> maps = await database.query('usuario');
//
//    return List.generate(maps.length, (i) {
//      return Usuario(
//        usuario: maps[i]['usuario'],
//        password: maps[i]['password'],
//      );
//    });
//  }
}
