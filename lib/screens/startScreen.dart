import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nutayapp/components/horizontalIconButtons.dart';
import 'package:nutayapp/screens/patientdataScreen.dart';
import 'package:nutayapp/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:nutayapp/services/patientList.dart';
import 'package:nutayapp/models/patient.dart';
import 'package:nutayapp/screens/registerScreen.dart';

class StartScreen extends StatelessWidget {
  static const String id = 'startScreen';
  final _auth = FirebaseAuth.instance;
  final List<Patient> patientList = [
    Patient(
      name: 'Martin',
      surnames: 'Vega',
      email: 'martin@gmail.com',
      height: 1.85,
      weight: 74.0,
      sex: 'male',
      age: 20,
      assessment: "Normal weight",
      imc: 21.6,
    ),
    Patient(
      name: 'Martin',
      surnames: 'Vega',
      email: 'martin@gmail.com',
      height: 1.85,
      weight: 74.0,
      sex: 'male',
      age: 20,
      assessment: "Normal weight",
      imc: 21.6,
    ),
    Patient(
      name: 'Martin',
      surnames: 'Vega',
      email: 'martin@gmail.com',
      height: 1.85,
      weight: 74.0,
      sex: 'male',
      age: 20,
      assessment: "Normal weight",
      imc: 21.6,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Patient>>.value(
      value: DataBaseService().patient,
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, PatientDataScreen.id);
          },
          backgroundColor: Color(0xffE6E5BA),
          child: Icon(Icons.person_add),
        ),
        appBar: AppBar(
          leading: null,
          title: Text(
            'Nutay',
            style: TextStyle(color: Color(0xffC4D9BA)),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.close,
                color: Color(0xffC4D9BA),
              ),
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              },
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 5,
        ),
        body: PatientList(),
//            new ListView.builder(
//          itemCount: patientList.length,
//          itemBuilder: (BuildContext context, int index) =>
//              buildPatientCard(context, index),
//        ),
      ),
    );
  }

  Widget buildPatientCard(BuildContext context, int index) {
    final patient = patientList[index];
    return new Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: Card(
          child: Column(
            children: <Widget>[
              Text(
                '${patient.name} ${patient.surnames}',
                style: TextStyle(fontSize: 30.0),
              ),
              Text(
                patient.email,
              ),
              Text(
                patient.height.toString(),
              ),
              Text(
                patient.weight.toString(),
              ),
              Text(
                patient.sex,
              ),
              Text(
                patient.age.toString(),
              ),
              Text(
                patient.assessment,
              ),
              Text(
                patient.imc.toString(),
              ),
              HorizontalIconButtons(Icons.edit),
              HorizontalIconButtons(Icons.insert_drive_file),
            ],
          ),
        ),
      ),
    );
  }
}

//  FirebaseUser loggedInUser;

//  @override
//  void initState() {
//    super.initState();
//    getCurrentUser();
//  }
//
//  void getCurrentUser() async {
//    try {
//      final user = await _auth.currentUser();
//      if (user != null) {
//        loggedInUser = user;
//        print(loggedInUser.email);
//      }
//    } catch (e) {
//      print(e);
//    }
//  }
