import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/models/manager_model.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/services/db_helper.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/widgets/dialog_delete.dart';

class TableKopdes extends StatefulWidget {
  final int update;
  final Function showSheetManager;
  const new({super.key, required this.update, required this.showSheetManager});

  @override
  State<TableKopdes> createState() => _TableKopdesState();
}

class _TableKopdesState extends State<TableKopdes> {
  late Future<List<ManagerModel>> _managersFuture;

  // ini useEffect dependency kosong [] ala flutter
  @override
  void initState() {
    super.initState();
    _refreshManagers();
  }
  //

  // ribet beud dah dependency update widgetnya
  @override
  void didUpdateWidget(covariant TableKopdes oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.update != widget.update) {
      _refreshManagers();
    }
  }

  void _showDeleteDialog(ManagerModel manager) {
    showDialog(
      context: context,
      builder: (dialogContext) =>
          //perlu ga sih ngasih context?
          DialogDelete(manager: manager, refreshUsers: _refreshManagers),
    );
  }

  void _refreshManagers() {
    _managersFuture = DBHelper().getAllManagers();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ManagerModel>>(
      future: _managersFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Terjadi kesalahan: ${snapshot.error}'));
        }
        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(
            child: Text(
              'Tidak ada data manager, ayo Tambah sekarang.',
              style: TextStyle(color: Colors.white),
            ),
          );
        }
        final managers = snapshot.data!;

        return ListView.builder(
          itemCount: managers.length,
          itemBuilder: (context, index) {
            final manager = managers[index];
            return Card(
              child: ListTile(
                onTap: () {
                  widget.showSheetManager(context);
                },
                leading: const CircleAvatar(
                  radius: 14,
                  child: Icon(Icons.person, size: 20, color: Colors.red),
                ),
                title: Text('Nama: ${manager.name}'),
                subtitle: Text('Asal Kota: ${manager.city}'),
                trailing: Icon(Icons.arrow_right),
              ),
            );
          },
        );
      },
    );
  }
}
