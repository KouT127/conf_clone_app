import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('お知らせ'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Map'),
            onTap: () {
              Navigator.pushNamed(context, '/web');
            },
          ),
        ],
      ),
    );
  }
}
