import 'package:flutter/material.dart';
import 'package:flutter_codepur_practice/utils/routes.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool changeButton = false;
  moveToHome(BuildContext context) async {
    setState(() {
      changeButton = true;
    }) ;
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
  } 

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
      color: Colors.red,
      child: InkWell(
        splashColor: Colors.green,
        onTap: () => moveToHome(context),
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 50,
          width: changeButton ? 50 : 150,
          alignment: Alignment.center,
          child: changeButton
              ? Icon(Icons.done, color: Colors.white)
              : Text(
                  'Login',
                  style: TextStyle(
                      color: changeButton ? Colors.black : Colors.white,
                      fontWeight: FontWeight.w900),
                ),
        ),
      ),
    );
  }
}
