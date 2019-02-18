import 'package:flutter/material.dart';

class AppTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
                tabs: tabChildParameters(),
                indicatorColor: Colors.black45,
                indicatorWeight: 3,
                indicatorSize: TabBarIndicatorSize.label,
              );
  }
}

List<Tab> tabChildParameters() => [
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
          child: Text("Day3"),
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
