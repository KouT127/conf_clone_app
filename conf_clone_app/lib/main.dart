import 'package:flutter/material.dart';
import 'package:conf_clone_app/ui/pages/time_table.dart';
import 'package:conf_clone_app/ui/pages/drawer.dart';
import 'package:conf_clone_app/ui/pages/webview.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/web': (context) => WebView()
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Conf-App'),
          elevation: 0.0,
        ),
        body: TimeTableView(),
        drawer: AppDrawer(),
      ),
    );
  }
}