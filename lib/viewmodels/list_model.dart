import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:job_change_record/models/company.dart';

class ListModel extends ChangeNotifier {
  final Stream<QuerySnapshot> _companiesStream =
      FirebaseFirestore.instance.collection('companies').snapshots();

  List<Company>? companies;

  void fetchCompanies() {
    _companiesStream.listen(
      (QuerySnapshot snapshot) {
        final List<Company> companies = snapshot.docs.map(
          (DocumentSnapshot document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            final String companyName = data['company_name'];
            final Timestamp applicationDate = data['application_date'];
            return Company(companyName, applicationDate);
          },
        ).toList();
        this.companies = companies;
        notifyListeners();
      },
    );
  }
}
