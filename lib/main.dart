import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas2/profil_kompleks.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas_layouting/tugas_layouting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugasssssssss shiapppp',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.yellow)),
      home: const TugasLayouting(),
      debugShowCheckedModeBanner: false,
    );
  }
}
