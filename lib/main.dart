import 'package:flutter/material.dart';
import 'package:flutter_codepur_practice/Screens/home_page.dart';
import 'package:flutter_codepur_practice/Screens/login_screen/login_page.dart';
import 'package:flutter_codepur_practice/utils/routes.dart';
import 'package:flutter_codepur_practice/widgets/themes.dart';
//import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            themeMode: ThemeMode.light,
            theme: MyTheme.lightTheme(context),
            darkTheme: MyTheme.darkTheme(context),
            debugShowCheckedModeBanner: false,
            //  initialRoute: MyRoutes.homeRoute,
            routes: {
              "/": (context) => LoginPage(),
              MyRoutes.homeRoute: (context) => Homepage(),
              MyRoutes.loginRoute: (context) => LoginPage()
            },
          );
        }
        return Text('Wow');
      },
    );
  }
}
