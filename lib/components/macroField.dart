import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MacroField extends StatelessWidget {
  int theValue;
  MacroField({this.theValue});
  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: <TextInputFormatter>[
        WhitelistingTextInputFormatter.digitsOnly
      ],
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 5.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onChanged: (value) {
        theValue = num.tryParse(value);
        //print(theValue + 1);
      },
      style: TextStyle(color: Color(0xff707070)),
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
    );
  }
}
