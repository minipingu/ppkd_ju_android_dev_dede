import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/form_kopdes.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/table_kopdes.dart';

class Tugas12Dan13 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 13, 13),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            'Pendaftaran Manajer KopDes',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: ListView(children: [FormKopdes(), TableKopdes()]),
      ),
    );
  }
}
