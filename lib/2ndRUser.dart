import 'package:flutter/material.dart';
import 'package:florayer/tigger_icons.dart';

import './floraFaunaData/ff.dart';

class SeconderUE extends StatefulWidget {
  @override
  _SeconderUEState createState() => _SeconderUEState();
}

class _SeconderUEState extends State<SeconderUE> {
  final enteredFauna = TextEditingController();
  final enteredFlora = TextEditingController();
  static var i = 0;
  static var counterFl = FF.flora.length;
  static var counterFa = FF.fauna.length;
  void fillerFlora() {
    final flora = enteredFlora.text;
    if (flora.isNotEmpty) {
      FF.flora[counterFl] = enteredFlora.text;
      enteredFlora.clear();
      counterFl += 1;
    } else {
      return;
    }
  }

  void fillerFauna() {
    final fauna = enteredFauna.text;
    if (fauna.isNotEmpty) {
      FF.fauna[counterFa] = enteredFauna.text;
      enteredFauna.clear();
      counterFa += 1;
    } else {
      return;
    }
  }

  static const fontprops = TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
  static const vals = [
    Text(
      "Flora",
      style: fontprops,
    ),
    Text(
      "Fauna",
      style: fontprops,
    )
  ];
  void setter(int si) {
    setState(() {
      i = si;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black,
            child: Center(
              child: carder(),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
              child: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(
                      Tigger.plant,
                      //        color: Colors.white,
                    ),
                    title: Text(
                      "Flora",
                      style: TextStyle(
                          //            color: Colors.white,
                          ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Tigger.tiger,
                      //            color: Colors.white,
                      size: 32,
                    ),
                    title: Text(
                      "Fauna",
                      style: TextStyle(
//                color: Colors.white,
                          ),
                    ),
                  )
                ],
                currentIndex: i,
                onTap: setter,
                selectedItemColor: Colors.amber[600],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget carder() {
    if (i == 0) {
      return Card(
        margin: EdgeInsets.all(1),
        color: Colors.white,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFF3377A),
                Color(0xFF9C3788),
                Color(0xFF6B3890),
              ],
            ),
          ),
          child: Center(
            child: Container(
              width: 300,
              height: 130,
              decoration: BoxDecoration(color: Colors.black26),
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFFFCF3F1),
                        Color(0xFFF5EAE8),
                      ],
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Flora Name",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontFamily: "Times New Roman"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0),
                            ),
                            hintText: "Enter Name of Plant",
                          ),
                          controller: enteredFlora,
                          onSubmitted: (_) {
                            fillerFlora();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      return Card(
        margin: EdgeInsets.all(1),
        color: Colors.white,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFF3377A),
                Color(0xFF9C3788),
                Color(0xFF6B3890),
              ],
            ),
          ),
          child: Center(
            child: Container(
              width: 300,
              height: 130,
              decoration: BoxDecoration(color: Colors.black26),
              child: Card(
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFFFCF3F1),
                        Color(0xFFF5EAE8),
                      ],
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Fauna Name",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontFamily: "Times New Roman"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2.0),
                            ),
                            hintText: "Enter Name of Animal",
                          ),
                          controller: enteredFauna,
                          onSubmitted: (_) {
                            fillerFauna();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
}
