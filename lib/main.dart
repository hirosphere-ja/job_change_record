import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:job_change_record/utils/firebase_options.dart';
import 'package:job_change_record/views/edit_page.dart';
import 'package:job_change_record/views/list_page.dart';

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
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const ListPage(),
        '/edit': (context) => const EditPage(),
      },
    );
  }
}
