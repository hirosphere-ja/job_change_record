import 'package:cloud_firestore/cloud_firestore.dart';

class Company {
  Company(
    this.companyName,
    this.applicationDate,
  );
  String companyName;
  Timestamp applicationDate;
}
