import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nutayapp/components/horizontalPatientInfo.dart';
import 'package:nutayapp/components/verticalNames.dart';
import 'package:provider/provider.dart';
import 'package:nutayapp/models/patient.dart';
import 'package:nutayapp/home/patientTile.dart';

class PatientList extends StatefulWidget {
  @override
  _PatientListState createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
  @override
  Widget build(BuildContext context) {
    final patients = Provider.of<List<Patient>>(context);
    //print(patients.documents);
//    patients.forEach((patient) {
//      print(patient.name);
//      print(patient.surnames);
//      print(patient.phoneNumber);
//      print(patient.email);
//      print(patient.height);
//      print(patient.weight);
//      print(patient.sex);
//      print(patient.age);
//      print(patient.imc);
//      print(patient.commentaries);
//      print(patient.physicalActivity);
//      print(patient.objective);
//      print(patient.carbohydrates);
//      print(patient.lipids);
//      print(patient.protein);
//      print(patient.get);
//      print(patient.finalGet);
//      print(patient.ger);
//      print(patient.naf);
//      print(patient.assessment);
//    });
    return ListView.builder(
      itemCount: patients.length,
      itemBuilder: (context, index) {
        return PatientTile(patient: patients[index]);
      },
    );
  }
}

//Row(
//children: <Widget>[
////VerticalNames("Names"),
//// HorizontalPatientInfo(text: 'Imc'),
//PatientTile(patient: patients[index]),
//],
//);
