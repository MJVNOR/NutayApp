import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'startScreen.dart';
import 'package:nutayapp/services/database.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'registerScreen';

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  Future<String> getCurrentUID() async {
    return (await _auth.currentUser()).uid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 350.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Text('Create an account'),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: InputDecoration(
                      hintText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  MaterialButton(
                    onPressed: () async {
                      setState(() {
                        showSpinner = true;
                      });
                      try {
                        final newUser =
                            await _auth.createUserWithEmailAndPassword(
                                email: email, password: password);

                        FirebaseUser resultUser = newUser.user;
                        await DataBaseService(uid: resultUser.uid)
                            .updateUserData(
                                'Martin',
                                'Vega',
                                6622267832,
                                'martin@gmail.com',
                                1.85,
                                74.0,
                                'male',
                                20,
                                'Normal weight',
                                21.6,
                                'nothing',
                                'Light',
                                'Keep weight',
                                25,
                                25,
                                50,
                                1888,
                                1888,
                                200,
                                300);
                        if (newUser != null) {
                          Navigator.pushNamed(context, StartScreen.id);
                        }
                        setState(() {
                          showSpinner = false;
                        });
                      } catch (e) {
                        print(e);
                      }
                    },
                    color: Colors.green,
                    minWidth: 250.0,
                    height: 42.0,
                    child: Text(
                      'Join Us',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
