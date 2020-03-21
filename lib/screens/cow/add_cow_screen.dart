import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demoapp/model/place.dart';

Firestore database = Firestore.instance;
final place = database.collection('places').getDocuments();

class AddCowScreen extends StatefulWidget {
  @override
  _AddCowScreenState createState() => _AddCowScreenState();
}

class _AddCowScreenState extends State<AddCowScreen> {
  String cowName;
  int cowNumber;
  int sex;
  String place;

  Future getData(String collection, String documentId, String field) async {
    DocumentSnapshot docSnapshot = await Firestore.instance
        .collection(collection)
        .document(documentId)
        .get();
    Map record = docSnapshot.data;
    return record[field];
  }

  @override
  Widget build(BuildContext context) {
    print(getData('places', 'Qzga9kjYjX2wbMZt5uV8', 'name'));
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
                    cowName = value;
                  });
                  print(cowName);
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(Icons.account_circle, color: Colors.black),
                  hintText: '牛の名前を入力',
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
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    try {
                      cowNumber = int.parse(value);
                    } catch (e) {
                      cowNumber = 0;
                    }
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  icon: Icon(Icons.confirmation_number, color: Colors.black),
                  hintText: '個体識別番号を入力',
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
              DropdownButton(),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          sex = 1;
                        });
                      },
                      color: Colors.blue,
                      child: Icon(
                        FontAwesomeIcons.mars,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        setState(() {
                          sex = 2;
                        });
                      },
                      color: Colors.pinkAccent,
                      child: Icon(
                        FontAwesomeIcons.venus,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  database.collection('cows').add({
                    'name': cowName,
                    'number': cowNumber,
                    'sex': sex,
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  '登録',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Text('名前:$cowName 番号:$cowNumber 性別:$sex'),
              Text('クラウド:$place'),
            ],
          ),
        ),
      ),
    );
  }
}
