import 'package:florayer/loginButton.dart';
import 'package:flutter/material.dart';



class StartPage extends StatelessWidget {
  final Function i;
  StartPage(this.i);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          height: 40,
          width: 130,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: [0.1, 1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.cyan, Colors.indigo],
            ),
          ),
          child: Center(
            child: LoginButter(i),
          ),
        ),
      ),
    );
  }
}
