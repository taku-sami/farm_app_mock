import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Firestore database = Firestore.instance;

class AddPlaceScreen extends StatefulWidget {
  @override
  _AddPlaceScreenState createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  String placeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('親牛を追加'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextField(
                onChanged: (value) {
                  setState(() {
                    placeName = value;
                  });
                  print(placeName);
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(Icons.account_circle, color: Colors.black),
                  hintText: '牛舎の名称を入力',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  database.collection('places').add({
                    'name': placeName,
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  '登録',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text('牛舎名:$placeName '),
            ],
          ),
        ),
      ),
    );
  }
}
