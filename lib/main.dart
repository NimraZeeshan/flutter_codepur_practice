import 'package:flutter/material.dart';
import 'package:flutter_codepur_practice/Screens/home_page.dart';
import 'package:flutter_codepur_practice/Screens/login_page.dart';
import 'package:flutter_codepur_practice/utils/routes.dart';
import 'package:flutter_codepur_practice/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
