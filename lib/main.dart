import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'welcome.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        cardColor: Colors.deepOrange,
        fontFamily: 'Lato',
      ),
      home: welcome(),
    );
  }
}
