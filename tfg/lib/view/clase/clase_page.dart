import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ClasePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clase 1 - Centro 1"),
      ),
      body: ListView(children: <Widget>[
        _cardClase(),
      ]),
      floatingActionButton: _buttons(),
    );
  }

  Widget _cardClase() {
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
                'Identificador: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Clase 1 - Centro 1',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Precio: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '25 €',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hora de Inicio: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text('16:00', style: TextStyle(fontSize: 18.0)),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hora de Fin: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '17:00',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Edad Mínima: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '4 años',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Edad Máxima: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '10 años',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Centro: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text('Centro 1', style: TextStyle(fontSize: 18.0)),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Profesor: ',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Nombre1 Apellido1 Apellido2',
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

  Widget _buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.list),
        ),
        SizedBox(width: 5.0,),
        FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.playlist_add),
        ),
      ],
    );
  }

}
