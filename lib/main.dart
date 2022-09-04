import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:job_change_record/views/company_list_page.dart';
import 'package:job_change_record/utils/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '転職管理記録',
      home: CompanyListPage(),
    );
  }
}
