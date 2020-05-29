import 'package:flutter/material.dart';

class HorizontalIconButtons extends StatelessWidget {
  final icon;
  HorizontalIconButtons(@required this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 120.0,
      height: 60.0,
      color: Colors.white,
      margin: EdgeInsets.only(top: 0, right: 4, left: 4, bottom: 0),
      child: IconButton(
        onPressed: () {
          //Navigator.pushNamed(context, StartScreen.id);
        },
        icon: Icon(
          icon,
          color: Color(0xff97B888),
        ),
      ),
    );
  }
}
