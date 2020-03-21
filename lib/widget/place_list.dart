import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demoapp/model/place.dart';

Firestore database = Firestore.instance;

Widget _buildBody(BuildContext context) {
  return StreamBuilder(
    stream: database.collection('places').snapshots(),
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
  final place = Place.fromSnapshot(data);

  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    child: Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 15.0,
        ),
        SizedBox(
          width: 15.0,
        ),
        Text(place.name),
      ],
    ),
  );
}
