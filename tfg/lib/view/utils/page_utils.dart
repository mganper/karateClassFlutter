import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class PageUtils {
  EdgeInsets cardMargin = EdgeInsets.only(
    top: 10.0,
    left: 10.0,
    bottom: 10.0,
    right: 10.0,
  );

  EdgeInsets cardPadding = EdgeInsets.only(
    top: 10.0,
    left: 10.0,
    bottom: 10.0,
    right: 10.0,
  );

  BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: Colors.white,
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10.0,
        spreadRadius: 2.0,
        offset: Offset(2.0, 7.0),
      ),
    ],
  );

  Widget appBar({String name, bool hasLogout}) {
    return GradientAppBar(
      title: Text(name),
      backgroundColorStart: Colors.lightBlueAccent,
      backgroundColorEnd: Colors.lightBlueAccent,
      actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
    );
  }

  Widget gradientBackground({Widget content}) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.white, Colors.lightBlueAccent])),
        child: Center(
          child: content,
        ),
      ),
    );
  }

  Widget container({List<Widget> content}) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: content,
      ),
      margin: cardMargin,
      padding: cardPadding,
      decoration: boxDecoration,
    );
  }

  Widget progressPage(String name) {
    return Scaffold(
      appBar: appBar(name: name),
      body: gradientBackground(
        content: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }

}
