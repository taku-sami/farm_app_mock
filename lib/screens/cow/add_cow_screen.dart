import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Firestore database = Firestore.instance;
Color maleColor;
Color venusColor;

class AddCowScreen extends StatefulWidget {
  @override
  _AddCowScreenState createState() => _AddCowScreenState();
}

class _AddCowScreenState extends State<AddCowScreen> {
  String cowName;
  int cowNumber;
  int sex;
  var selectedPlace;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('子牛の登録'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                setState(() {
                  cowName = value;
                });
                print(cowName);
              },
              decoration: InputDecoration(
                labelText: '名前',
                filled: true,
                fillColor: Colors.white,
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
                labelText: '耳標番号',
                hintText: '10ケタの個体識別番号を入力',
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
            StreamBuilder<QuerySnapshot>(
                stream: database.collection('places').snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Text('no data');
                  } else {
                    List<DropdownMenuItem> places = [];
                    for (int i = 0; i < snapshot.data.documents.length; i++) {
                      DocumentSnapshot snap = snapshot.data.documents[i];
                      places.add(
                        DropdownMenuItem(
                          child: Text(
                            snap.data['name'],
                          ),
                          value: "${snap.data['name']}",
                        ),
                      );
                    }

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('牛舎:'),
                          SizedBox(
                            width: 10.0,
                          ),
                          DropdownButton(
                            hint: Text('牛舎を選択してくだい'),
                            items: places,
                            onChanged: (value) {
                              setState(() {
                                selectedPlace = value;
                              });
                            },
                            value: selectedPlace,
                          ),
                        ],
                      ),
                    );
                  }
                }),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '性別',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                sex = 1;
                                changeIconColor(sex);
                              });
                            },
                            color: maleColor,
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
                                changeIconColor(sex);
                              });
                            },
                            color: venusColor,
                            child: Icon(
                              FontAwesomeIcons.venus,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              color: Colors.green,
              onPressed: () {
                database.collection('cows').add({
                  'name': cowName,
                  'number': cowNumber,
                  'sex': sex,
                  'place': selectedPlace,
                });
                Navigator.pop(context);
              },
              child: Text(
                '登 録',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            Text('名前:$cowName 番号:$cowNumber 性別:$sex 牛舎:$selectedPlace'),
          ],
        ),
      ),
    );
  }
}

void changeIconColor(int sex) {
  if (sex == 1) {
    maleColor = Colors.blue;
    venusColor = Colors.grey;
  } else if (sex == 2) {
    maleColor = Colors.grey;
    venusColor = Colors.pinkAccent;
  }
}
