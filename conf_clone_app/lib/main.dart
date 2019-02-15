import 'package:flutter/material.dart';
import 'package:conf_clone_app/ui/pages/time_table.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Conf-App'),
        ),
        body: TimeTableList(),
      ),
    );
  }
}