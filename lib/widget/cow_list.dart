import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demoapp/model/cow.dart';

Firestore database = Firestore.instance;

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
      leading: CircleAvatar(),
      title: Text('cow.number'),
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
