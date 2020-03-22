import 'package:flutter/material.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class DetailPage extends StatelessWidget {
  final cow;
  DetailPage(this.cow);

  final List<TimelineModel> items = [
    TimelineModel(
      Container(
        height: 100.0,
        child: Row(
          children: <Widget>[
            Text('2/24'),
            Expanded(
              child: SizedBox(),
            ),
            Text('誕生'),
          ],
        ),
      ),
      position: TimelineItemPosition.left,
      iconBackground: Colors.blue,
      icon: Icon(
        Icons.cake,
        color: Colors.white,
      ),
    ),
    TimelineModel(
      Container(
        height: 100.0,
        child: Row(
          children: <Widget>[
            Text('2/25'),
            Expanded(
              child: SizedBox(),
            ),
            Text('誕生'),
          ],
        ),
      ),
      position: TimelineItemPosition.left,
      iconBackground: Colors.blue,
      icon: Icon(
        Icons.blur_circular,
        color: Colors.white,
      ),
    ),
    TimelineModel(
      Container(
        height: 100.0,
        child: Row(
          children: <Widget>[
            Text('2/26'),
            Expanded(
              child: SizedBox(),
            ),
            Text('誕生'),
          ],
        ),
      ),
      position: TimelineItemPosition.left,
      iconBackground: Colors.blue,
      icon: Icon(
        Icons.blur_circular,
        color: Colors.white,
      ),
    ),
    TimelineModel(
      Container(
        height: 100.0,
        child: Row(
          children: <Widget>[
            Text('2/26'),
            Expanded(
              child: SizedBox(),
            ),
            Text('誕生'),
          ],
        ),
      ),
      position: TimelineItemPosition.left,
      iconBackground: Colors.blue,
      icon: Icon(
        Icons.blur_circular,
        color: Colors.white,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cow.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 250.0,
              child: CircleAvatar(
                backgroundColor: sexColor(cow.sex),
                radius: 100.0,
                child: Icon(
                  Icons.landscape,
                  size: 40.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                children: <Widget>[
                  Text(
                    cow.name,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Column(
                    children: <Widget>[
                      Text('0歳6ヶ月'),
                      Text('123日目'),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              height: 500.0,
              child: Timeline(children: items, position: TimelinePosition.Left),
            ),
          ],
        ),
      ),
    );
  }
}

Color sexColor(int number) {
  Color color;

  if (number == 1) {
    color = Colors.blue;
  } else if (number == 2) {
    color = Colors.pinkAccent;
  }
  return color;
}
