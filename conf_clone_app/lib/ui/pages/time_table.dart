import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class TimeTableView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
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

class TimeTableList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemBuilder: (context, index) {
        return StickyHeader(
            header: Text(
              PresentationList[index].getStringTime(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 19.0,
                color: Colors.black,
              ),
            ),
            content: TimeTableTile(PresentationList[index]));
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
    Size size = MediaQuery.of(context).size;
    double sectionWidth = size.width / 4.0;

    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(sectionWidth, 0, 5, 5),
      title: Column(
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
        ],
      ),
      subtitle: Wrap(
          spacing: 5.0,
          children: presentation.tags.map((tag) {
            return Chip(label: Text(tag));
          }).toList()),
      onTap: (){
        Navigator.pushNamed(context, '/detail');
      },
    );
  }
}

const PresentationList = [
  Presentation(
      title: 'Flutterでアプリを作る',
      name: 'TestUser1',
      content: '10:00',
      tags: [
        '初心者',
        'iOS',
      ]),
  Presentation(
      title: 'Androidでアプリを作る.Androidでアプリを作る.Androidでアプリを作る',
      name: 'TestUser2',
      content: '11:00',
      tags: ['Android', 'Google', '上級者向け', 'Test']),
  Presentation(title: 'iOSでアプリを作る', name: 'TestUser3', content: '12:00', tags: [
    'Apple',
    'iOS',
  ]),
  Presentation(
      title: 'クローンアプリをつくってみた！',
      name: 'TestUser4',
      content: '13:00',
      tags: [
        '初心者',
        'Flutter',
      ]),
  Presentation(
      title: 'クロスプラットフォームアプリを作る！',
      name: 'TestUser5',
      content: '13:30',
      tags: ['XPlatform', 'Flutter', 'Dart', 'Xamarin', 'C#']),
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
      title:
          'Test 某Kaigiクローンアプリケーションを作る？Test 某Kaigiクローンアプリケーションを作るTest 某Kaigiクローンアプリケーションを作るTest 某Kaigiクローンアプリケーションを作る',
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
    return this.content;
  }
}
