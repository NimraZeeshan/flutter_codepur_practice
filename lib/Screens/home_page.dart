import 'package:flutter/material.dart';
import 'package:flutter_codepur_practice/widgets/google_signup.dart';
import 'package:provider/provider.dart';
import 'package:flutter_codepur_practice/providers/google_signin.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("Water Level Monitoring and Control"),
      ),
      body: ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: SignUpWidget(),
      ));
}
