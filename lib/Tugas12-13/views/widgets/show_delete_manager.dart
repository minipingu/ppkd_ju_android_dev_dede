import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/models/manager_model.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/services/db_helper.dart';

class DeleteManager {
  void showDeleteManager(
    BuildContext context,
    ManagerModel manager,
    Function update,
  ) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Row(
          children: [
            Icon(Icons.warning_amber_rounded, color: Colors.red),
            SizedBox(width: 8),
            Text('Hapus Pengguna'),
          ],
        ),
        content: Text(
          'Apakah Anda yakin ingin menghapus pengguna "${manager.name}"?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Batal'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            onPressed: () async {
              Navigator.pop(dialogContext);
              if (manager.id != null) {
                await DBHelper().deleteManager(manager.id!);
                update();
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Pengguna ${manager.name} berhasil dihapus',
                      ),
                    ),
                  );
                }
              }
            },
            child: const Text('Hapus'),
          ),
        ],
      ),
    );
  }
}
