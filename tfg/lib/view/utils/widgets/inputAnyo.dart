import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputAnyo extends StatefulWidget {
  final controller;

  InputAnyo({this.controller});

  @override
  _InputAnyoState createState() => _InputAnyoState();
}

class _InputAnyoState extends State<InputAnyo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        height: 60,
        width: 32, //MediaQuery.of(context).size.width,
        child: TextField(
          controller: widget.controller,
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            WhitelistingTextInputFormatter.digitsOnly,
          ],

          style: TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Colors.lightBlueAccent,
            labelText: 'Año',
            labelStyle: TextStyle(
              color: Colors.lightBlue,
            ),
          ),
        ),
      ),
    );
  }
}