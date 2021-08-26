import 'package:flutter/material.dart';
import 'package:flutter_codepur_practice/utils/routes.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      //splashColor: Colors.redAccent,
      //hoverColor: Colors.green,
      onTap: () async {
        setState(() {
          changeButton = true;
        });
        await Future.delayed(Duration(seconds: 1));
        Navigator.pushNamed(context, MyRoutes.homeRoute);
      },
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
        decoration: BoxDecoration(
          //   shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: BorderRadius.circular(changeButton ? 50 : 30),
          //borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
      ),
    );
  }
}
