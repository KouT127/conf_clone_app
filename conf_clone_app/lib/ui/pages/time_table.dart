import 'package:flutter/material.dart';

class TimeTableList extends StatefulWidget {
  @override
  _TimeTableListState createState() => _TimeTableListState();
}

class _TimeTableListState extends State<TimeTableList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TimeTableTile(PresentationList[index]);
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
      margin: EdgeInsets.fromLTRB(100, 10, 10, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              presentation.title,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
                presentation.name,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                )
            ),
          Wrap(spacing: 5.0,
            children: _buildTags(presentation.tags)
          )
        ],
      )
    );
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
  Presentation(title: 'マルチモジュールなプロジェクトでテストはどう変わる？', name: 'Name', content: 'content', tags: [
    '初心者',
    'Flutter',
    'Web',
  ]),
  Presentation(title: 'マルチモジュールなプロジェクトでテストはどう変わる？', name: 'Name', content: 'content', tags: [
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

  const Presentation({
    this.title,
    this.name,
    this.content,
    this.tags,
    this.time
  });

  @override
  String toString() {
    return 'Presentation { title: $title, content: $content, tags: $tags)';
  }
}
