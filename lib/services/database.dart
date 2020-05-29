import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nutayapp/models/patient.dart';

class DataBaseService {
  final String uid;
  DataBaseService({this.uid});
  final CollectionReference patientInfo =
      Firestore.instance.collection('patient');
  Future updateUserData(
    String name,
    String surnames,
    int phoneNumber,
    String email,
    double height,
    double weight,
    String sex,
    int age,
    String assessment,
    double imc,
    String commentaries,
    String physicalActivity,
    String objective,
    int carbohydrates,
    int lipids,
    int protein,
    int get,
    int finalGet,
    int ger,
    int naf,
  ) async {
    return await patientInfo.document(uid).setData({
      'name': name,
      'surnames': surnames,
      'phoneNumber': phoneNumber,
      'email': email,
      'height': height,
      'weight': weight,
      'sex': sex,
      'age': age,
      'assessment': assessment,
      'imc': imc,
      'commentaries': commentaries,
      'physicalActivity': physicalActivity,
      'objective': objective,
      'carbohydrates': carbohydrates,
      'lipids': lipids,
      "protein": protein,
      'get': get,
      'finalGet': finalGet,
      'ger': ger,
      'naf': naf,
    });
  }

  List<Patient> _patientListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Patient(
        name: doc.data['name'] ?? '',
        surnames: doc.data['surnames'] ?? '',
        phoneNumber: doc.data['phoneNumber'] ?? null,
        email: doc.data['email'] ?? '',
        height: doc.data['height'] ?? 0.0,
        weight: doc.data['weight'] ?? 0.0,
        sex: doc.data['sex'] ?? '',
        age: doc.data['age'] ?? null,
        assessment: doc.data['assessment'] ?? '',
        imc: doc.data['imc'] ?? 0.0,
        commentaries: doc.data['commentaries'] ?? '',
        physicalActivity: doc.data['physicalActivity'],
        objective: doc.data['objective'] ?? '',
        carbohydrates: doc.data['carbohydrates'] ?? 0,
        lipids: doc.data['lipids'] ?? 0,
        protein: doc.data['protein'] ?? 0,
        get: doc.data['get'] ?? 0,
        finalGet: doc.data['finalGet'] ?? 0,
        ger: doc.data['ger'] ?? 0,
        naf: doc.data['naf'] ?? 0,
      );
    }).toList();
  }

  Stream<List<Patient>> get patient {
    return patientInfo.snapshots().map(_patientListFromSnapshot);
  }
}
