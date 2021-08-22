import 'package:flutter/material.dart';
import 'package:flutter_codepur_practice/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                'Welcome',
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
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter username',
                        labelText: 'UserName',
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter password',
                        labelText: 'Password',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 32, horizontal: 32),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        },
                        child: Text('Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900)),
                        style: TextButton.styleFrom(
                            shadowColor: Colors.black45,
                            minimumSize: Size(100, 40)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
