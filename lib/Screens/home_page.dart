import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final days = 30;
  final name = 'nimra';
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Water Level Monitoring and Control"),
      ),
      body: Center(
        child: Container(
          child: Text('$name working on flutter with CodePur  in $days days'),
        ),
      ),
      // drawer: Drawer(),
    ));
  }
}
