import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String name = "";
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Padding(
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
                    }
                    // onChanged: (value) {
                    //   name = value;
                    //   setState(() {});
                    // },

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
        ),
      ),
    );
  }
}
