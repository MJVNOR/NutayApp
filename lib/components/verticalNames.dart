import 'package:flutter/material.dart';

class VerticalNames extends StatelessWidget {
  final String text;
  VerticalNames(@required this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0,
            offset: Offset(2.0, 0),
          ),
        ],
      ),
      alignment: Alignment.center,
      width: 120.0,
      height: 60.0,
      margin: EdgeInsets.only(top: 0, right: 4, left: 4, bottom: 0),
      child: Text(text),
    );
  }
}
