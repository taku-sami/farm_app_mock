import 'package:flutter/material.dart';
import 'package:demoapp/screens/main_screen.dart';
import 'package:demoapp/screens/menu_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demoapp/model/place.dart';

Firestore database = Firestore.instance;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.selectedPlace}) : super(key: key);

  final String title;
  final String selectedPlace;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Text> _titles = <Text>[
    Text(''),
    Text('メニュー'),
    Text('設定'),
  ];

  void _onItemTopped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _switchScreen() {
    if (_selectedIndex == 0) {
      return MainScreen(widget.selectedPlace);
    } else if (_selectedIndex == 1) {
      return Menu();
    } else if (_selectedIndex == 2) {
      return Text('設定');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _titles.elementAt(_selectedIndex),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text('原牧場'),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyHomePage(
                      title: 'Flutter Demo Home Page',
                      selectedPlace: null,
                    ),
                  ),
                );
              },
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
              title: Text('全ての牛舎'),
            ),
            Container(
              height: 300.0,
              child: _buildBody(context),
            ),
          ],
        ),
      ),
      body: _switchScreen(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('ホーム'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.format_list_bulleted,
            ),
            title: Text('メニュー'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('設定'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTopped,
      ),
    );
  }
}

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
    children: snapshot
        .map(
          (data) => _buildListItem(context, data),
        )
        .toList(),
  );
}

Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
  final place = Place.fromSnapshot(data);

  return ListTile(
    onTap: () {
      Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => MyHomePage(
            title: 'Flutter Demo Home Page',
            selectedPlace: place.name,
          ),
        ),
      );
    },
    leading: CircleAvatar(
      backgroundColor: Colors.grey,
    ),
    title: Text(place.name),
  );
}
