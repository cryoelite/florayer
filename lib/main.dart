import 'package:flutter/material.dart';


import 'package:florayer/basepage.dart';


void main() => runApp(Base());

class Base extends StatefulWidget {
  @override
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<Base> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BasePage',
      home: BasePage(),
    );
  }
}
