import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  final controller;

  PasswordInput({this.controller});

  @override
  _PasswordInputState createState() => _PasswordInputState(controller: controller);
}

class _PasswordInputState extends State<PasswordInput> {
  final controller;

  _PasswordInputState({this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: TextField(
          controller: controller,
          style: TextStyle(
            color: Colors.white,
          ),
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: 'Contraseña',
            labelStyle: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}