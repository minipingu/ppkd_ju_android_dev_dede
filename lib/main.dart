import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/latihan_validasi/latihan_validasi.dart';
import 'package:ppkd_ju_android_dev_dede/nyoba/bottom_nav1.dart';
import 'package:ppkd_ju_android_dev_dede/nyoba/bottom_nav2.dart';
import 'package:ppkd_ju_android_dev_dede/nyoba/bottom_nav3.dart';
import 'package:ppkd_ju_android_dev_dede/nyoba/bottom_nav4.dart';
import 'package:ppkd_ju_android_dev_dede/nyoba/bottom_nav_latihan.dart';
import 'package:ppkd_ju_android_dev_dede/nyoba/drawer_latihan.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/tugas7_routes.dart';
import 'package:ppkd_ju_android_dev_dede/tugas8/app.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/app.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/pages/tugas9_page1.dart';

void main() {
  runApp(const MyApp());
  // tugas8
  // runApp(const Tugas8());
  // tugas9
  runApp(const Tugas9());
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

      // tugas7
      // initialRoute: 'checkbox',
      // routes: {
      //   ...Map.fromEntries(
      //     drawerRoutes.map(
      //       (page) => MapEntry(page.navigation, (context) => page.route),
      //     ),
      //   ),
      // },

      //tugas8
      // tugas 8 ada diatas

      //tugas9
      //tugas 9 diatas

      // nyoba
      // bottom nav 1
      // home: BottomNav1(),
      // home: BottomNav2(),
      // home: BottomNav3(),
      // home: BottomNav4(),
      // home: BottomNavLatihan(),
      // home: DrawerLatihan(),

      //latihan db
      // home: LoginScreenDB(),

      // debugShowCheckedModeBanner: false,
    );
  }
}
