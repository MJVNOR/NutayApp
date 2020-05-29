import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  LongButton({this.title, @required this.color, this.chScreen});

  final String title;
  final Color color;
  final Function chScreen;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //Todavía no sé como acortar el botón
      height: 60.0,
      width: 10.0,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.0),
        ),
        onPressed: chScreen,
        color: color,
        textColor: Colors.white,
        child: Text(title, style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
