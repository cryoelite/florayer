import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:florayer/2ndroute.dart';
import 'package:florayer/login.dart';
import './startpage.dart';
import 'package:florayer/2ndRUser.dart';
import './loginData/up.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  var i = 0;
  void setter() {
    setState(() {
      i += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        title: Center(
          child: Text(
            i < 2 ? "Welcome," : "GTF",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        gradient: LinearGradient(colors: UP.temp==0 ? [Colors.cyan, Colors.indigo] : [Colors.cyan, Colors.red[200]]),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: checker(),
      ),
    );
  }

  Widget checker() {
    if (i == 0) {
      return Center(
        child: StartPage(setter),
      );
    } else if (i == 1) {
      return Center(
        child: Card(
          child: Loginner(setter),
          color: Colors.white,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
    } else if (UP.temp == 1) {
      return Seconder();
    } else {
      return SeconderUE();
    }
  }
}
