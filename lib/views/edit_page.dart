import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('編集画面'),
      ),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: '会社名',
              ),
            ),
            DateTimeField(
              decoration: const InputDecoration(
                labelText: '応募日',
              ),
              format: DateFormat("yyyy-MM-dd"),
              onShowPicker: (
                BuildContext context,
                DateTime? currentValue,
              ) {
                return showDatePicker(
                    context: context,
                    firstDate: DateTime(1900),
                    initialDate: currentValue ?? DateTime.now(),
                    lastDate: DateTime(2100));
              },
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('新規作成'),
            )
          ],
        ),
      ),
    );
  }
}
