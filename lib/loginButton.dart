import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class LoginButter extends StatelessWidget {
  final Function i;
  LoginButter(this.i);
  @override
  Widget build(BuildContext context) {
    return GradientButton(increaseWidthBy: 30,
      increaseHeightBy: 12,
      callback: () {
        i();
      },
      gradient: Gradients.hotLinear,
      child: GradientText(
        "Login",
        shaderRect: Rect.fromLTWH(0.0, 0.0, 50.0, 50.0),
        gradient: Gradients.deepSpace,
        style: TextStyle(
          fontSize: 32,
        ),
      ),
    );
  }
}
