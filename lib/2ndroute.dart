import 'package:flutter/material.dart';

import 'package:florayer/tigger_icons.dart';

/* import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
 */
class Seconder extends StatefulWidget {
  @override
  _SeconderState createState() => _SeconderState();
}

class _SeconderState extends State<Seconder> {
  final enteredFauna = TextEditingController();
  final enteredFlora = TextEditingController();
  static var i = 0;
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Center(
          child: carder(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        selectedItemColor: Colors.green,
        onTap: setter,
        backgroundColor: Colors.white70,
        type: BottomNavigationBarType.fixed,
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
            gradient: RadialGradient(
                colors: [Colors.green[400], Colors.black], radius: 0.7),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Flora Name",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontFamily: "Times New Roman"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.0),
                      ),
                      hintText: "Enter Name of Animal",
                    ),
                    controller: enteredFlora,
                    onSubmitted: (_) {},
                  ),
                ),
              ],
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
            gradient: RadialGradient(
                colors: [Colors.amber[600], Colors.black], radius: 0.7),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Fauna Name",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontFamily: "Times New Roman"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, right: 80),
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2.0),
                      ),
                      hintText: "Enter Name of Animal",
                    ),
                    controller: enteredFlora,
                    onSubmitted: (_) {},
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
