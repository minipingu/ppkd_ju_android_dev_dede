import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/services/db_helper.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/models/manager_model.dart';

class TableKopdes extends StatefulWidget {
  const new({super.key});

  @override
  State<TableKopdes> createState() => _TableKopdesState();
}

class _TableKopdesState extends State<TableKopdes> {
  late Future<List<ManagerModel>> _managers;

  void _refreshManagers() async {
    setState(() {
      _managers = DBHelper().getAllManagers();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.builder(
        itemBuilder: (context, index) =>
            Card(child: ListTile(title: Text(managers[index].name))),
        itemCount: _managers.length,
      ),
    );
  }
}
