import 'package:flutter/material.dart';
import 'package:nutayapp/components/horizontalIconButtons.dart';
import 'package:nutayapp/models/patient.dart';
import 'package:nutayapp/components/horizontalPatientInfo.dart';

class PatientTile extends StatelessWidget {
  final Patient patient;
  PatientTile({this.patient});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
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
          child: Text("${patient.name} ${patient.surnames}"),
        ),
        Flexible(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    HorizontalPatientInfo(text: patient.imc.toString()),
                    HorizontalPatientInfo(text: patient.weight.toString()),
                    HorizontalPatientInfo(text: patient.height.toString()),
                    HorizontalPatientInfo(text: patient.age.toString()),
                    HorizontalPatientInfo(text: patient.sex.toString()),
                    HorizontalPatientInfo(text: patient.weight.toString()),
                    HorizontalPatientInfo(text: patient.assessment.toString()),
                    HorizontalPatientInfo(text: patient.weight.toString()),
                    HorizontalPatientInfo(text: patient.weight.toString()),
                    HorizontalIconButtons(Icons.edit),
                    HorizontalIconButtons(Icons.insert_drive_file),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//Padding(
//padding: EdgeInsets.only(top: 8.0),
//child: Card(
//margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
//child: ListTile(
//title: Text('${patient.name} ${patient.surnames}'),
////subtitle: Text(),
//),
//),
//);
