import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputPrecio extends StatefulWidget {
  final controller;

  InputPrecio({this.controller});

  @override
  _InputPrecioState createState() => _InputPrecioState();
}

class _InputPrecioState extends State<InputPrecio> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        height: 60,
        width: 55, //MediaQuery.of(context).size.width,
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
            labelText: 'Cantidad',
            labelStyle: TextStyle(
              color: Colors.lightBlue,
            ),
          ),
        ),
      ),
    );
  }
}