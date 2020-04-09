import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'package:florayer/2ndRadmin.dart';
import 'package:florayer/login.dart';
import 'package:florayer/2ndRUser.dart';
import './loginData/up.dart';
import './startpage.dart';

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
            i < 2 ? "Welcome" : "GTF",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        gradient: LinearGradient(colors: [
          Color(0xFFF3377A),
          Color(0xFF9C3788),
          Color(0xFF6B3890),
        ]),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xCCF3377A),
              Color(0xFF9C3788),
              Color(0xFC6B3890),
            ],
          ),
        ),
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
          color: Colors.white,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Loginner(setter),
        ),
      );
    } else if (UP.temp == 1) {
      return Seconder();
    } else {
      return SeconderUE();
    }
  }
}
