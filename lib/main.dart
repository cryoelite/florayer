import 'package:flutter/material.dart';

import 'package:florayer/basepage.dart';

void main() => runApp(Base());

class Base extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BasePage',
      home: BasePage(),
    );
  }
}  
