import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/form_kopdes.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/table_kopdes.dart';

class Tugas12Dan13 extends StatefulWidget {
  const new({super.key});

  @override
  State<Tugas12Dan13> createState() => _Tugas12Dan13State();
}

class _Tugas12Dan13State extends State<Tugas12Dan13> {
  int update = 0;

  void addUpdate() {
    setState(() {
      update++;
    });
  }

  void _showDialogManager(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: const Color.fromARGB(255, 17, 17, 17),
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.viewInsetsOf(context).bottom,
        ),
        child: SingleChildScrollView(child: FormKopdes(onAdd: addUpdate)),
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
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: TableKopdes(update: update),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsetsGeometry.all(40),
        child: SizedBox(
          height: 48,
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
      ),
    );
  }
}
