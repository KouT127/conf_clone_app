import 'package:flutter/material.dart';

class AppTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 50),
              color: Colors.blue,
              child: TabBar(
                tabs: _tabChildParameters(),
                indicatorColor: Colors.black45,
                indicatorWeight: 3,
                indicatorSize: TabBarIndicatorSize.label,
              ),
            ),
          ],
        ));
  }
}

List<Widget> _tabChildParameters() => [
      Tab(
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints.expand(),
          child: Text("Day1"),
        ),
      ),
      Tab(
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints.expand(),
          child: Text("Day2"),
        ),
      ),
      Tab(
        child: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints.expand(),
          child: Text("Fav"),
        ),
      ),
    ];
