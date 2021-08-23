import 'package:flutter/material.dart';
import 'package:flutter_codepur_practice/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  moveToHome(BuildContext context) async {
    setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    String name = "";
    final _formkey = GlobalKey<FormState>();
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/Login_image.png",
                height: 160, fit: BoxFit.cover),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome $name',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.blue[700],
                  fontWeight: FontWeight.w900),
            ),
            Text(
              "Water Level Monitoring & Control",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter username',
                      labelText: 'UserName',
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return "Username cann't be empty";
                      }

                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter password',
                        labelText: 'Password',
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "password cann't be empty";
                        }
                      }),
                ],
              ),
            ),
            SizedBox(height: 40),
            Material(
              borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
              color: Colors.blue,
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
            )
          ],
        ),
      ),
    );
  }
}
