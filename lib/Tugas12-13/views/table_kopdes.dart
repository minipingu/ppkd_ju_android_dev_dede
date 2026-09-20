import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/models/manager_model.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/services/db_helper.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/widgets/dialog_delete.dart';

class TableKopdes extends StatefulWidget {
  const new({super.key});

  @override
  State<TableKopdes> createState() => _TableKopdesState();
}

class _TableKopdesState extends State<TableKopdes> {
  late Future<List<ManagerModel>> _managersFuture;

  // ini useEffect dependency [] ala flutter
  @override
  void initState() {
    super.initState();
    _refreshManagers();
  }
  //

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
          return const Center(child: Text('Tidak ada data pengguna.'));
        }
        final managers = snapshot.data!;

        return ListView.builder(
          itemCount: managers.length,
          itemBuilder: (context, index) {
            final manager = managers[index];
            return Card(
              child: ListTile(
                leading: const CircleAvatar(child: Icon(Icons.person)),
                title: Text(manager.name),
                subtitle: Text('Asal Kota: ${manager.city}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Tombol Edit -> Membuka Modal Bottom Sheet
                    IconButton(
                      onPressed: () {
                        // _showEditBottomSheet(user)
                      },
                      icon: const Icon(Icons.edit, color: Colors.blue),
                    ),
                    // Tombol Delete -> Membuka Dialog Konfirmasi
                    IconButton(
                      onPressed: () => _showDeleteDialog(manager),
                      icon: const Icon(Icons.delete, color: Colors.red),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
