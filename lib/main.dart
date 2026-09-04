import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas1/tugas_1.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas2/profil_kompleks.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas3/forminput_grid.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas4/listview_listtile.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas_layouting/tugas_layouting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugasssssssss',

      theme: ThemeData(
        colorScheme: .fromSeed(
          //warna dasar tema, nanti bisa diganti
          seedColor: Colors.blue,
        ),
      ),
      home: ForminputGrid(),
      debugShowCheckedModeBanner: false,
    );
  }
}
