import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/Tugas12-13/views/app_kopdes.dart';
import 'package:ppkd_ju_android_dev_dede/ngetes_geolocation/belajar_geolocation.dart';
import 'package:ppkd_ju_android_dev_dede/tugas11_tidak_jadi_ada_di_labs/services/preference_handler.dart';
import 'package:ppkd_ju_android_dev_dede/tugas11_tidak_jadi_ada_di_labs/tugas11.dart';
import 'package:ppkd_ju_android_dev_dede/tugas14/views/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  // tugas8
  // runApp(const Tugas8());

  // tugas9
  // runApp(const Tugas9());
}

// //Tugas 11
// void main() async {
//   // intinya kalau pakai async/await harus ada ini :
//   WidgetsFlutterBinding.ensureInitialized();
//   //
//   await PreferenceHandler.init();
//   runApp(const Tugas11());
// }

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

      //tugas10
      // home: Tugas10(),

      //tugas11
      //tugas11 diatas GAJADI, adanya di veranza labs

      //tugas 12-13
      // home: Tugas12Dan13(),

      //tugas 14
      // home: RandomEmbege(),

      // nyoba
      // bottom nav 1
      // home: BottomNav1(),
      // home: BottomNav2(),
      // home: BottomNav3(),
      // home: BottomNav4(),
      // home: BottomNavLatihan(),
      // home: DrawerLatihan(),

      //latihan db, sekarang sqflite
      // home: LoginScreenDB(),

      //latihan geolocator
      home: BelajarGeolocation(),
      debugShowCheckedModeBanner: false,
    );
  }
}
