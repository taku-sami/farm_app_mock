import 'package:flutter/material.dart';
import 'package:demoapp/screens/cow/add_cow_screen.dart';
import 'package:demoapp/screens/place/add_place_screen.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
            alignment: Alignment.centerLeft,
            child: Text(
              '行動の登録',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        color: Colors.grey,
                        width: 100.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '発情',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '発情を登録します',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        color: Colors.grey,
                        width: 100.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '鼻水',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '鼻水を登録します',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        color: Colors.grey,
                        width: 100.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '食欲不振',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '食欲不振を登録します',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        color: Colors.grey,
                        width: 100.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '行動メニュー４',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '行動メニュー４',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
            alignment: Alignment.centerLeft,
            child: Text(
              '予定の登録',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        color: Colors.grey,
                        width: 100.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '爪切り',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '爪切りを登録します',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        color: Colors.grey,
                        width: 100.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '予定メニュー２',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '予定メニュー２',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        color: Colors.grey,
                        width: 100.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '予定メニュー３',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '予定メニュー３',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        color: Colors.grey,
                        width: 100.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '予定メニュー４',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '予定メニュー４',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
            alignment: Alignment.centerLeft,
            child: Text(
              '牛の管理',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => AddCowScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 90.0,
                          color: Colors.grey,
                          width: 100.0,
                          child: Image(
                            height: 50.0,
                            width: 50.0,
                            color: Colors.white,
                            image: AssetImage('images/cow.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '子牛の登録',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '子牛を追加します',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        color: Colors.grey,
                        width: 100.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '牛メニュー２',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '牛メニュー２',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        color: Colors.grey,
                        width: 100.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '牛メニュー３',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '牛メニュー３',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        color: Colors.grey,
                        width: 100.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '牛メニュー４',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '牛メニュー４',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 2.0),
            alignment: Alignment.centerLeft,
            child: Text(
              '施設の管理',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: 150.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  AddPlaceScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 90.0,
                          color: Colors.grey,
                          width: 100.0,
                          child: Image(
                            height: 50.0,
                            width: 50.0,
                            color: Colors.white,
                            image: AssetImage('images/farm.png'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '牛舎の登録',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '牛舎を登録します。',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        color: Colors.grey,
                        width: 100.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '施設メニュー２',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '施設メニュー２',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        color: Colors.grey,
                        width: 100.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '施設メニュー３',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '施設メニュー３',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  elevation: 5.0,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 90.0,
                        color: Colors.grey,
                        width: 100.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '施設メニュー４',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '施設メニュー４',
                              style: TextStyle(fontSize: 10.0),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
