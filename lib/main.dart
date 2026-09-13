import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/tugas7_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugasssssssss',
      //tugas 1
      // home: TugasFlutter1(),

      // tugas layouting
      // home: TugasLayouting(),

      // tugas 2
      // home: ProfilKompleks(),

      // tugas 3
      // home: ForminputGrid(),

      //tugas 4
      // home: ListviewListtile(),

      //tugas5
      // home: StateEvent(),

      //tugas7
      initialRoute: 'checkbox',
      routes: Map.fromEntries(
        tugas7Pages.map(
          (page) => MapEntry(page.navigation, (context) => page.route),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
