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
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        selectedPlace: null,
      ),
    );
  }
}
