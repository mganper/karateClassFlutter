import 'package:flutter/material.dart';
import 'package:tfg/controller/login/login_controller.dart';

class ButtonLogin extends StatefulWidget {
  final controllerUser;
  final controllerPasword;

  ButtonLogin({this.controllerUser, this.controllerPasword});

  @override
  _ButtonLoginState createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  LoginController loginController = LoginController();

  final controllerUser;
  final controllerPasword;

  _ButtonLoginState({this.controllerUser, this.controllerPasword});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 50, left: 200),
      child: Container(
        alignment: Alignment.bottomRight,
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.blue[300],
              blurRadius: 10.0, // has the effect of softening the shadow
              spreadRadius: 1.0, // has the effect of extending the shadow
              offset: Offset(
                5.0, // horizontal, move right 10
                5.0, // vertical, move down 10
              ),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: FlatButton(
          onPressed: () {
//            final route = MaterialPageRoute(
//                builder: (context) => LoginWaitPage(
//                      user: controllerUser.text,
//                      password: controllerPasword.text,
//                  user: '28554690Y',
//                  password: '1234',
//                    ));
//
//            Future<bool> resp = loginController.login();
//
//            Navigator.push(context, route);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Entrar',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.lightBlueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
