import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

import './loginData/up.dart';

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
      child: Center(
        child: Card(
          color: Colors.white,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: 300,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                i == 1 ? buildColumn() : buildColumn2(),
                GradientButton(
                  increaseWidthBy: 150,
                  increaseHeightBy: 4,
                  callback: () {
                    authentize();
                  },
                  gradient: Gradients.hotLinear,
                  child: GradientText(
                    "Login",
                    shaderRect: Rect.fromLTWH(0.0, 0.0, 50.0, 50.0),
                    gradient: Gradients.deepSpace,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
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
