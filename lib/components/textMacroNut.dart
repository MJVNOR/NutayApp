import 'package:flutter/material.dart';

class TextMacroNut extends StatelessWidget {
  final String text;
  TextMacroNut({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xff97B888),
      ),
      textAlign: TextAlign.center,
    );
  }
}
