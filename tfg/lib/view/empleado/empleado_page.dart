import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class EmpleadoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nombre1 Apellido1 Apellido2"),
      ),
      body: ListView(children: <Widget>[
        _cardEmpleado(),
      ]),
      //floatingActionButton: _buttons(),
    );
  }

  Widget _cardEmpleado() {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Datos: ',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Nombre: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Nombre1',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Apellidos: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Apellido1 Apellido2',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sexo: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text('Masculino', style: TextStyle(fontSize: 18.0)),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Fecha Nacimiento: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '1996-01-22',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Teléfono: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '651111111',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Cinturón: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Negro',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Grado de Instructor: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text('Grado 1', style: TextStyle(fontSize: 18.0)),
            ],
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      padding:
      EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          ),
        ],
      ),
    );
  }

//  Widget _buttons() {
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.end,
//      children: <Widget>[
//        Expanded(child: SizedBox()),
//        FloatingActionButton(
//          onPressed: (){},
//          child: Icon(Icons.list),
//        ),
//        SizedBox(width: 5.0,),
//        FloatingActionButton(
//          onPressed: (){},
//          child: Icon(Icons.playlist_add),
//        ),
//      ],
//    );
//  }

}