//import 'package:path/path.dart';
//import 'package:sqflite/sqflite.dart';
//import 'dart:async';
//
//import 'package:tfg/model/common/usuario.dart';
//
//class UsersDatabase {
//  Database _db;
//
//  Future<bool> initDB() async {
//    _db = await openDatabase(
//        join(await getDatabasesPath(), 'users_database.db'),
//        version: 1, onCreate: (Database db, int version) {
//      db.execute(
//          "CREATE TABLE usuarios(usuario TEXT PRIMARY KEY, password TEXT)");
//    });
//
//    if(_db != null){
//      return true;
//    } else {
//      return false;
//    }
//  }
//
//  Future<bool> insert(Usuario usuario) async {
//    var numRows = await _db.insert('usuarios', usuario.toMap());
//
//    if (numRows != 0) {
//      return true;
//    } else {
//      return false;
//    }
//  }
//
//  Future getAllUsers() async {
//    var results = await _db.query('usuarios');
//
//    return results.map((map) => Usuario.fromMap(map));
//  }
//
//  Future<bool> removeAllUsers() async {
//    var numRows = await _db.delete('usuarios');
//
//    if (numRows != 0) {
//      return true;
//    } else {
//      return false;
//    }
//  }
//}
