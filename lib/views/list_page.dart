import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:job_change_record/models/company.dart';
import 'package:job_change_record/viewmodels/list_model.dart';
import 'package:provider/provider.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListModel>(
      create: (_) => ListModel()..fetchCompanies(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('転職管理記録'),
        ),
        body: Consumer<ListModel>(
          builder: (context, model, child) {
            final List<Company>? companies = model.companies;
            if (companies == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final List<Widget> widgets = companies
                .map(
                  (company) => ListTile(
                    title: Text("会社名：${company.companyName}"),
                    subtitle: Text(
                        "応募日：${DateFormat('yyyy-MM-dd').format(company.applicationDate.toDate()).toString()}"),
                  ),
                )
                .toList();
            return ListView(
              children: widgets,
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/edit');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
