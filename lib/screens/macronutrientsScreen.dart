import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nutayapp/components/macroField.dart';
import 'package:nutayapp/components/myDrawer.dart';
import 'package:nutayapp/components/textMacroNut.dart';
import 'package:nutayapp/screens/startScreen.dart';

class MacronutrientsScreen extends StatefulWidget {
  static const String id = 'macronutrientsScreen';

  @override
  _MacronutrientsScreenState createState() => _MacronutrientsScreenState();
}

class _MacronutrientsScreenState extends State<MacronutrientsScreen> {
  int dummy;
  int carbohydrates;
  int lipids;
  int protein;
  int total;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Nutay',
            style: TextStyle(
              color: Color(0xffC4D9BA),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color(0xffC4D9BA))),
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Icon(
                    Icons.layers,
                    color: Color(0xffC4D9BA),
                    size: 24.0,
                  ),
                ),
                Text(
                  'Macronutrients',
                  style: TextStyle(
                    color: Color(0xff707070),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Step 2 of 2',
                style: TextStyle(
                  color: Color(0xff707070),
                ),
                textAlign: TextAlign.right,
              ),
            ),
            TextMacroNut(text: 'Final GET'),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 130.0),
              child: new MacroField(
                theValue: dummy,
              ),
            ),
            SizedBox(height: 30.0),
            TextMacroNut(text: 'Carbohydrates'),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 130.0),
              child: new MacroField(
                theValue: carbohydrates,
              ),
            ),
            SizedBox(height: 30.0),
            TextMacroNut(text: 'Lipids'),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 130.0),
              child: new MacroField(
                theValue: lipids,
              ),
            ),
            SizedBox(height: 30.0),
            TextMacroNut(text: 'Protein'),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 130.0),
              child: new MacroField(
                theValue: protein,
              ),
            ),
            SizedBox(height: 30.0),
            TextMacroNut(text: 'Total'),
            SizedBox(height: 5.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 130.0),
              child: new MacroField(),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0),
              child: MaterialButton(
                onPressed: () {
                  //Navigator.of(context).popUntil((route) => StartScreen.id);
                },
                color: Color(0xffE6E5BA),
                height: 42.0,
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
