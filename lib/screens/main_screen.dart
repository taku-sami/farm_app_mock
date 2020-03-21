import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demoapp/model/cow.dart';

Firestore database = Firestore.instance;

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildBody(context),
    );
  }
}

Widget _buildBody(BuildContext context) {
  return StreamBuilder(
    stream: database.collection('cows').snapshots(),
    builder: (context, snapshot) {
      if (!snapshot.hasData) return LinearProgressIndicator();

      return _buildList(context, snapshot.data.documents);
    },
  );
}

Widget _buildList(BuildContext context, List snapshot) {
  return ListView(
    padding: EdgeInsets.only(top: 20.0),
    children: snapshot.map((data) => _buildListItem(context, data)).toList(),
  );
}

Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
  final cow = Cow.fromSnapshot(data);

  return Card(
    child: ListTile(
      leading: CircleAvatar(
        backgroundColor: sexColor(cow.sex),
      ),
      title: Text(cow.number.toString()),
      subtitle: Text(cow.name),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('0歳9ヶ月'),
          Text('123日目'),
        ],
      ),
    ),
  );
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

//FlatButton(
//onPressed: () {
//Navigator.push(
//context,
//MaterialPageRoute(
//builder: (BuildContext context) => DetailPage(),
//),
//);
//},
//child: Row(
//crossAxisAlignment: CrossAxisAlignment.center,
//children: <Widget>[
//CircleAvatar(
//child: Icon(
//Icons.account_circle,
//size: 40.0,
//),
//),
//Padding(
//padding: EdgeInsets.symmetric(horizontal: 5.0),
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.start,
//children: <Widget>[
//Text('5963'),
//Text('たろう'),
//],
//),
//),
//Expanded(
//child: SizedBox(),
//),
//Column(
//children: <Widget>[
//Text('0歳9ヶ月'),
//Text('123日目'),
//],
//),
//],
//),
//),
//Divider(),
//FlatButton(
//onPressed: () {
//Navigator.push(
//context,
//MaterialPageRoute(
//builder: (BuildContext context) => DetailPage(),
//),
//);
//},
//child: Row(
//crossAxisAlignment: CrossAxisAlignment.center,
//children: <Widget>[
//CircleAvatar(
//backgroundColor: Colors.green,
//child: Icon(
//Icons.account_circle,
//size: 40.0,
//),
//),
//Padding(
//padding: EdgeInsets.symmetric(horizontal: 5.0),
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.start,
//children: <Widget>[
//Text('5963'),
//Text('たろう'),
//],
//),
//),
//Expanded(
//child: SizedBox(),
//),
//Column(
//children: <Widget>[
//Text('0歳9ヶ月'),
//Text('123日目'),
//],
//)
//],
//),
//),
//Divider(),
//FlatButton(
//onPressed: () {
//Navigator.push(
//context,
//MaterialPageRoute(
//builder: (BuildContext context) => DetailPage(),
//),
//);
//},
//child: Row(
//crossAxisAlignment: CrossAxisAlignment.center,
//children: <Widget>[
//CircleAvatar(
//backgroundColor: Colors.pinkAccent,
//radius: 20.0,
//child: Icon(
//Icons.account_circle,
//size: 40.0,
//),
//),
//Padding(
//padding: EdgeInsets.symmetric(horizontal: 5.0),
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.start,
//children: <Widget>[
//Text('5963'),
//Text('たろう'),
//],
//),
//),
//Expanded(
//child: SizedBox(),
//),
//Column(
//children: <Widget>[
//Text('0歳9ヶ月'),
//Text('123日目'),
//],
//)
//],
//),
//),
//Divider(),
