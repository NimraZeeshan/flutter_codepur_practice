import 'package:flutter/material.dart';
//import 'package:flutter_codepur_practice/widgets/drawer.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
   final Future<FirebaseApp> _future = Firebase.initializeApp();
  final days = 30;
  final bool _isSelected = false;
  List<bool> _isToggle = List.generate(1, (_) => false);
//  final name = 'nimra';
  final databaseref = FirebaseDatabase.instance.reference();
   final textcontroller = TextEditingController();

  void addData(String data, bool _isToggle) {
    databaseref.push().set({
      'distance': data,
      'state': _isToggle,
      'name': data,
      'comment': 'A good season'
    });
  }
  void printFirebase(){
    databaseref.once().then((DataSnapshot snapshot) {
      print('Data : ${snapshot.value}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Water Level Monitoring and Control"),
      ),
      body: FutureBuilder(future: _future,
      builder: (context, snapshot){
      if(snapshot.hasError){
        return Text(snapshot.error.toString());
      }
      else{
        return Row(
        children: [
          SizedBox(
            child: Container(
              child: ToggleButtons(
                children: [Icon(Icons.lightbulb)],
                isSelected: _isToggle,
                onPressed: (int index) {
                  setState(() {
                    _isToggle[index] = !_isToggle[index];
                  });
                },
              ),
            ),
          ),
          Text("Tap me to add to database"),

          Expanded(
            child: Center(
              child: ElevatedButton(
                  child: Text("Save to Database"),
                  onPressed: () {
                    addData(textcontroller.text, _isSelected);
                    TextField(controller: textcontroller);

                    //call method flutter upload
                  }),
            ),
          ),

          //Container(child: SizedBox(height: 25)
          // Text('$name working on flutter with CodePur  in $days days'),
        ],
      
      
      );
     // drawer: MyDrawer();
    
      
      }
      },
     )
    )
    );
  }
}
