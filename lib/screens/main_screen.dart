import 'package:demoapp/screens/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demoapp/model/cow.dart';

Firestore database = Firestore.instance;

class MainScreen extends StatelessWidget {
  String selectedPlace;
  MainScreen(this.selectedPlace);
  @override
  Widget build(BuildContext context) {
    print(selectedPlace);
    return Container(
      child: _buildBody(context, selectedPlace),
    );
  }
}

Widget _buildBody(BuildContext context, String selectedPlace) {
  if (selectedPlace != null) {
    return StreamBuilder(
      stream: database
          .collection('cows')
          .where("place", isEqualTo: selectedPlace)
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return _buildList(context, snapshot.data.documents);
      },
    );
  } else {
    return StreamBuilder(
      stream: database.collection('cows').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return _buildList(context, snapshot.data.documents);
      },
    );
  }
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
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => DetailPage(cow),
          ),
        );
      },
      title: Text(cow.number.toString()),
      subtitle: Text(cow.name),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(cow.place),
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
