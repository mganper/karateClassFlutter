import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tfg/view/index/index_page.dart';
import 'package:tfg/view/index/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();

    return MaterialApp(
      title: 'Shoki',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }

  void _portraitModeOnly() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

}

