import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:conf_clone_app/ui/components/tab.dart';

class TimeTableView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        AppTabs(),
        SizedBox(
          height: 25.0,
          width: double.infinity,
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Text(
                '2019.2.14',
                style: TextStyle(fontSize: 22.0, color: Colors.grey),
              )
            ],
          ),
        ),
        Expanded(child: TimeTableList())
      ],
    );
  }
}

class TimeTableList extends StatefulWidget {
  @override
  _TimeTableListState createState() => _TimeTableListState();
}

class _TimeTableListState extends State<TimeTableList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sectionWidth = size.width / 4.0;

    return ListView.builder(
      itemBuilder: (context, index) {
        return StickyHeader(
            header: Container(
              height: 15,
              child: SizedBox(
                width: sectionWidth,
                height: double.infinity,
                child: Text(
                  PresentationList[index].getStringTime(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            content: Container(
              margin: EdgeInsets.fromLTRB(sectionWidth, 10, 10, 10),
              child: TimeTableTile(PresentationList[index]),
            ));
      },
      itemCount: PresentationList.length,
    );
  }
}

class TimeTableTile extends StatelessWidget {
  const TimeTableTile(
    this.presentation, {
    Key key,
  })  : assert(presentation != null),
        super(key: key);
  final Presentation presentation;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          presentation.title,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(presentation.name,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.black,
            )),
        Wrap(spacing: 5.0, children: _buildTags(presentation.tags))
      ],
    ));
  }
}

List<Widget> _buildTags(List<String> tags) {
  List<Widget> tagWidgets = [];
  tags.forEach((tag) {
    tagWidgets.add(Transform(
        transform: Matrix4.identity()..scale(0.9),
        child: Chip(
          label: Text(tag),
        )));
  });
  return tagWidgets;
}

const PresentationList = [
  Presentation(
      title: 'Test 某Kaigiクローンアプリケーションを作る',
      name: 'Name',
      content: '19:20',
      tags: [
        '初心者',
        'Flutter',
        'Web',
      ]),
  Presentation(
      title: 'Test 某Kaigiクローンアプリケーションを作る？',
      name: 'Name',
      content: '19:30^',
      tags: [
        '初心者',
        'Flutter',
        'Web',
      ]),
  Presentation(
      title: 'Test 某Kaigiクローンアプリケーションを作る？',
      name: 'Name',
      content: 'content',
      tags: [
        '初心者',
        'Flutter',
        'Web',
      ]),
  Presentation(
      title: 'Test 某Kaigiクローンアプリケーションを作る？',
      name: 'Name',
      content: 'content',
      tags: [
        '初心者',
        'Flutter',
        'Web',
      ]),
  Presentation(
      title: 'Test 某Kaigiクローンアプリケーションを作る？',
      name: 'Name',
      content: 'content',
      tags: [
        '初心者',
        'Flutter',
        'Web',
      ]),
  Presentation(
      title: 'Test 某Kaigiクローンアプリケーションを作る？',
      name: 'Name',
      content: 'content',
      tags: [
        '初心者',
        'Flutter',
        'Web',
      ]),
  Presentation(
      title: 'Test 某Kaigiクローンアプリケーションを作る？',
      name: 'Name',
      content: '19:20',
      tags: [
        '初心者',
        'Flutter',
        'Web',
      ]),
  Presentation(
      title: 'Test 某Kaigiクローンアプリケーションを作る？Test 某Kaigiクローンアプリケーションを作るTest 某Kaigiクローンアプリケーションを作るTest 某Kaigiクローンアプリケーションを作る',
      name: 'Name',
      content: '19:30^',
      tags: [
        '初心者',
        'Flutter',
        'Web',
      ]),
  Presentation(
      title: 'Test 某Kaigiクローンアプリケーションを作る？',
      name: 'Name',
      content: 'content',
      tags: [
        '初心者',
        'Flutter',
        'Web',
      ]),
  Presentation(
      title: 'Test 某Kaigiクローンアプリケーションを作る？',
      name: 'Name',
      content: 'content',
      tags: [
        '初心者',
        'Flutter',
        'Web',
      ]),
  Presentation(
      title: 'Test 某Kaigiクローンアプリケーションを作る？',
      name: 'Name',
      content: 'content',
      tags: [
        '初心者',
        'Flutter',
        'Web',
      ]),
  Presentation(
      title: 'Test 某Kaigiクローンアプリケーションを作る？',
      name: 'Name',
      content: 'content',
      tags: [
        '初心者',
        'Flutter',
        'Web',
      ]),
];

class Presentation {
  final String title;
  final String name;
  final String content;
  final List<String> tags;
  final DateTime time;

  const Presentation(
      {this.title, this.name, this.content, this.tags, this.time});

  @override
  String toString() {
    return 'Presentation { title: $title, content: $content, tags: $tags)';
  }

  String getStringTime() {
    return '10:00';
  }
}
