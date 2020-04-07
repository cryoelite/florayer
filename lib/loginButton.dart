import 'package:flutter/material.dart';


class LoginButter extends StatelessWidget {
  final Function i;
  LoginButter(this.i);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {i();
      },
      child: Text(
        "Login",
        style: TextStyle(
          fontSize: 32,
        ),
      ),
    );
  }
}
