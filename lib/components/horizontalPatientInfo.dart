import 'package:flutter/material.dart';

class HorizontalPatientInfo extends StatelessWidget {
  final String text;

  HorizontalPatientInfo({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 120.0,
      height: 60.0,
      color: Colors.white,
      margin: EdgeInsets.only(top: 0, right: 4, left: 4, bottom: 0),
      child: Text(text),
    );
  }
}
