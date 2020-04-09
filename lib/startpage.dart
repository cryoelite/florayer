import 'package:flutter/material.dart';


import 'package:florayer/loginButton.dart';

class StartPage extends StatelessWidget {
  final Function i;
  StartPage(this.i);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Center(
          child: LoginButter(i),
        ),
      ),
    );
  }
}
