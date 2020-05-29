import 'package:flutter/material.dart';
import 'package:nutayapp/screens/loginScreen.dart';
import 'package:nutayapp/screens/registerScreen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcomeScreen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 200.0),
                Image(
                  image: AssetImage('Assets/NUTAY_DOC/nutay_logo_final.png'),
                ),
                SizedBox(
                  height: 48.0,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  color: Colors.green,
                  minWidth: 250.0,
                  height: 42.0,
                  child: Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RegisterScreen.id);
                  },
                  color: Colors.white,
                  minWidth: 250.0,
                  height: 42.0,
                  child: Text(
                    'Don\'t have an account? Sign up',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
