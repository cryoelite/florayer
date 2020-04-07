import 'package:flutter/material.dart';

import './loginData/up.dart';
import './basepage.dart';

class Loginner extends StatefulWidget {
  final Function resetter;
  Loginner(this.resetter);
  @override
  _LoginnerState createState() => _LoginnerState();
}

class _LoginnerState extends State<Loginner> {
  var i = 0;
  final enteredName = TextEditingController();
  final enteredPas = TextEditingController();
  void setter() {
    setState(
      () {
        i = 1;
      },
    );
  }

  void authentize() {
    final name = enteredName.text;
    final pass = enteredPas.text;
    if (name.isEmpty || pass.isEmpty) {
      return;
    } else if (UP.uID[name] == pass) {
      if (UP.uType[name] == Ut.admin) {
        UP.temp = 1;
        widget.resetter();
      } else {
        UP.temp = 0;
        widget.resetter();
      }
    } else {
      setter();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: i == 1 ? buildColumn() : buildColumn2(),
    );
  }

  Column buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Wrong Credentials !",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            textAlign: TextAlign.center,
            decoration: new InputDecoration(
              hintText: "UserID",
            ),
            controller: enteredName,
            onSubmitted: (_) {
              authentize();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            obscureText: true,
            textAlign: TextAlign.center,
            decoration: new InputDecoration(
              hintText: "Password",
            ),
            controller: enteredPas,
            onSubmitted: (_) {
              authentize();
            },
          ),
        ),
      ],
    );
  }

  Column buildColumn2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            textAlign: TextAlign.center,
            decoration: new InputDecoration(
              hintText: "UserID",
            ),
            controller: enteredName,
            onSubmitted: (_) {
              authentize();
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            obscureText: true,
            textAlign: TextAlign.center,
            decoration: new InputDecoration(
              hintText: "Password",
            ),
            controller: enteredPas,
            onSubmitted: (_) {
              authentize();
            },
          ),
        ),
      ],
    );
  }
}
