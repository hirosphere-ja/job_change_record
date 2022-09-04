import 'package:flutter/material.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('編集画面'),
      ),
      body: const Center(
        child: Text('edit page'),
      ),
    );
  }
}
