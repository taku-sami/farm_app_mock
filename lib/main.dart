import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'component/menu_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );

//    MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('北側ハウス'),
//        ),
//        drawer: Drawer(
//          child: SafeArea(
//            child: Padding(
//              padding: EdgeInsets.all(15.0),
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.start,
//                children: <Widget>[
//                  Padding(
//                    padding: EdgeInsets.symmetric(vertical: 20.0),
//                    child: Row(
//                      children: <Widget>[
//                        CircleAvatar(
//                          backgroundColor: Colors.grey,
//                          radius: 20.0,
//                        ),
//                        SizedBox(
//                          width: 15.0,
//                        ),
//                        Text(
//                          '原牧場',
//                          style: TextStyle(
//                              fontSize: 20.0, fontWeight: FontWeight.bold),
//                        ),
//                      ],
//                    ),
//                  ),
//                  Column(
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                    children: <Widget>[
//                      Text(
//                        '牛舎一覧',
//                        style: TextStyle(
//                            fontSize: 20.0, fontWeight: FontWeight.bold),
//                      ),
//                      Text('表示する牛舎を選択していません。'),
//                    ],
//                  ),
//                  Divider(),
//                  Padding(
//                    padding: EdgeInsets.symmetric(vertical: 10.0),
//                    child: Row(
//                      children: <Widget>[
//                        CircleAvatar(
//                          backgroundColor: Colors.grey,
//                          radius: 15.0,
//                        ),
//                        SizedBox(
//                          width: 15.0,
//                        ),
//                        Text('全ての牛舎'),
//                      ],
//                    ),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.symmetric(vertical: 10.0),
//                    child: Row(
//                      children: <Widget>[
//                        CircleAvatar(
//                          backgroundColor: Colors.grey,
//                          radius: 15.0,
//                        ),
//                        SizedBox(
//                          width: 15.0,
//                        ),
//                        Text('大牛舎'),
//                      ],
//                    ),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.symmetric(vertical: 10.0),
//                    child: Row(
//                      children: <Widget>[
//                        CircleAvatar(
//                          backgroundColor: Colors.grey,
//                          radius: 15.0,
//                        ),
//                        SizedBox(
//                          width: 15.0,
//                        ),
//                        Text('小牛舎'),
//                      ],
//                    ),
//                  ),
//                  Padding(
//                    padding: EdgeInsets.symmetric(vertical: 10.0),
//                    child: Row(
//                      children: <Widget>[
//                        CircleAvatar(
//                          backgroundColor: Colors.grey,
//                          radius: 15.0,
//                          child: Icon(Icons.check),
//                        ),
//                        SizedBox(
//                          width: 15.0,
//                        ),
//                        Text('北側ハウス'),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ),
//        ),
//        body: MainScreen(),
//        bottomNavigationBar: BottomMenu(),
//      ),
//    );
  }
}
