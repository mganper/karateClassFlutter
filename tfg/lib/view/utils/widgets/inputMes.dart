import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputMes extends StatefulWidget {
  final controller;

  InputMes({this.controller});

  @override
  _InputMesState createState() => _InputMesState();
}

class _InputMesState extends State<InputMes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        height: 60,
        width: 30, //MediaQuery.of(context).size.width,
        child: TextField(
          controller: widget.controller,
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            WhitelistingTextInputFormatter.digitsOnly
          ],
          style: TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.lightBlueAccent,
            labelText: 'Mes',
            labelStyle: TextStyle(
              color: Colors.lightBlue,
            ),
          ),
        ),
      ),
    );
  }
}