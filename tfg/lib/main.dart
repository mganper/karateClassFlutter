import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tfg/view/alumno/alumno_page.dart';
import 'package:tfg/view/empleado/empleado_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AlumnoPage(),
    );
  }

  void _portraitModeOnly() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

}

