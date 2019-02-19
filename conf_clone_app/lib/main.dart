import 'package:flutter/material.dart';
import 'package:conf_clone_app/ui/pages/time_table.dart';
import 'package:conf_clone_app/ui/pages/drawer.dart';
import 'package:conf_clone_app/ui/pages/webview.dart';
import 'package:conf_clone_app/ui/components/tab.dart';
import 'package:conf_clone_app/ui/pages/detail.dart';

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
          '/web': (context) => WebView(),
          '/detail': (context) => DetailView(),
        },
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Conf-App'),
              elevation: 0.0,
              bottom: TabBar(tabs: tabChildParameters()),
            ),
            body: TabBarView(children: [
              TimeTableList(),
              TimeTableList(),
              TimeTableList()
            ]),
            drawer: AppDrawer(),
          ),
        ));
  }
}
