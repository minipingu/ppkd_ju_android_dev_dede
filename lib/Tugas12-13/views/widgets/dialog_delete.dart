import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/models/manager_model.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/services/db_helper.dart';

//HARUS STATEFUL KARENA ADA MOUNTED!, tapi karena datanya bisa berubah juga sih...
class DialogDelete extends StatefulWidget {
  final ManagerModel manager;
  final Function refreshUsers;

  // HARUS inisialisasi tuh pake this.
  // lupa mulu ingetnya type ... = { } wowkowowkokw 💀
  const DialogDelete({
    super.key,
    required this.manager,
    required this.refreshUsers,
  });

  @override
  State<DialogDelete> createState() => _DialogDeleteState();
}

class _DialogDeleteState extends State<DialogDelete> {
  //ternyata ngakses variabel di class stf pake widget. jir..
  //kalo udh set variabelnya dari stl ke stf auto pake widget.
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Row(
        children: [
          Icon(Icons.warning_amber_rounded, color: Colors.red),
          SizedBox(width: 8),
          Text('Hapus Manager'),
        ],
      ),
      content: Text(
        'Apakah Anda yakin ingin menghapus manager "${widget.manager.name}"?',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Batal'),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          onPressed: () async {
            Navigator.pop(context);

            if (widget.manager.id != null) {
              await DBHelper().deleteManager(widget.manager.id!);
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Pengguna ${widget.manager.email} berhasil dihapus',
                    ),
                  ),
                );
                //ini ga pake dbheper karena kan variabelnya diluar sini
                widget.refreshUsers();
              }
            }
          },
          child: const Text('Hapus'),
        ),
      ],
    );
  }
}
