import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl =
      'https://media-exp1.licdn.com/dms/image/C4E03AQGuKFqvQ7EDNg/profile-displayphoto-shrink_200_200/0/1624706123959?e=1631145600&v=beta&t=GxbrJMWR0GJ3nixw20HxyAr8rmc8bbjeLEr8qjZ3kts';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
              accountName: Text(
                'Nimra Ghazal',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 16),
              ),
              accountEmail: Text(
                'nimraghazal19@gmail.com',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 14),
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.blue),
            title: Text(
              'Home',
              textScaleFactor: 1.2,
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.blue),
            title: Text(
              'Profile',
              textScaleFactor: 1.2,
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings, color: Colors.blue),
            title: Text(
              'Setting',
              textScaleFactor: 1.2,
              style: TextStyle(
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
