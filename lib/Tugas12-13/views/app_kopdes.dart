import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/form_kopdes.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/table_kopdes.dart';

class Tugas12Dan13 extends StatelessWidget {
  new({super.key});

  void _showDialogManager(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.viewInsetsOf(context).bottom,
        ),
        child: FormKopdes(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 23, 23),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Daftar Manajer KopDes',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(padding: EdgeInsetsGeometry.all(20), child: TableKopdes()),
      bottomNavigationBar: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 222, 222, 222),
            backgroundColor: const Color.fromARGB(255, 134, 9, 0),
          ),
          onPressed: () {
            _showDialogManager(context);
          },
          child: Text('Tambah Manager'),
        ),
      ),
    );
  }
}
