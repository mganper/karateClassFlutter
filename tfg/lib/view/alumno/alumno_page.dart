import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AlumnoPage extends StatelessWidget {

  final lorem = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi eleifend, nulla vitae viverra ultrices, velit.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nombre1 Apellido1 Apellido2"),
      ),
      body: ListView(children: <Widget>[
        _cardUser(),
        _cardObser(),
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.attach_money),
        onPressed: (){},
      ),
    );
  }

  Widget _cardUser() {
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
                'DNI: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '12345678A',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Nombre: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Nombre 1',
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
              Text('Apellido1 Apellido2', style: TextStyle(fontSize: 18.0)),
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
              Text(
                'Masculino',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'F. Nacimiento: ',
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
                'Tlf. Contacto: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text('651527748', style: TextStyle(fontSize: 18.0)),
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
                'Marrón',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Clase: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Clase 1 de Centro 1',
                style: TextStyle(fontSize: 18.0),
              ),
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

  Widget _cardObser() {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: <Widget>[
          Text(
            'Observaciones: ',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0,),
          Text(lorem,
            style: TextStyle(fontSize: 18.0),
          ),
          Text(
            '2017-05-07',
            style: TextStyle(fontSize: 18.0),
          ),
          Divider(),
          Text(
            lorem,
            style: TextStyle(fontSize: 18.0),
          ),
          Text(
            '2017-05-07',
            style: TextStyle(fontSize: 18.0),
          ),
          Divider(),
          Text(
            lorem,
            style: TextStyle(fontSize: 18.0),
          ),
          Text(
            '2017-05-07',
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
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
}