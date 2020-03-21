import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demoapp/model/place.dart';

Firestore database = Firestore.instance;
List<String> sampleList = ['1', '2', '3'];

class AddCowScreen extends StatefulWidget {
  @override
  _AddCowScreenState createState() => _AddCowScreenState();
}

class _AddCowScreenState extends State<AddCowScreen> {
  String cowName;
  int cowNumber;
  int sex;
  var selectedValue;

  final String _collection = 'places';
  final Firestore _fireStore = Firestore.instance;
  String dropdownValue = '1';

  getData() async {
    return await _fireStore.collection(_collection).getDocuments();
  }

//  List<String> getDataFromDB() {
//    List<String> places = [];
//
//    getData().then((val) {
//      int count = val.documents.length;
//      print(count);
//      var place;
//
//      if (count > 0) {
//        for (int i = 0; i < count; i++) {
//          print(i);
//          place = val.documents[i].data["name"].toString();
//          print(place);
//          places.add(place);
//        }
//      } else {
//        print("Not Found");
//      }
//    });
//    print(places);
//    print('tex');
//    return places;
//  }

  @override
  Widget build(BuildContext context) {
//    print(getDataFromDB().toList());
    print(sampleList);
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

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('牛舎:'),
                          SizedBox(
                            width: 20.0,
                          ),
                          DropdownButton(
                            hint: Text('牛舎を選択してくだい'),
                            items: places,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value;
                              });
                            },
                            value: selectedValue,
                          ),
                        ],
                      );
                    }
                  }),
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
              Text('名前:$cowName 番号:$cowNumber 性別:$sex 牛舎:$selectedValue'),
//              Text('クラウド:$place'),
            ],
          ),
        ),
      ),
    );
  }
}
