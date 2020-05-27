import 'package:flutter/material.dart';
import 'package:nutayapp/screens/registerScreen.dart';
import 'package:nutayapp/screens/loginScreen.dart';
import 'package:nutayapp/screens/welcomeScreen.dart';
import 'package:nutayapp/screens/startScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        "loginScreen": (context) => LoginScreen(),
        "registerScreen": (context) => RegisterScreen(),
        "startScreen": (context) => StartScreen(),
      },
    );
  }
}
