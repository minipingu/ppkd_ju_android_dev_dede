import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/checkbox_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas8/about_us.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/pages/tugas9_page1.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/pages/tugas9_page2.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/pages/tugas9_page3.dart';

//mencoba ala ala typescript ~_~
typedef NavItem = ({String navigation, IconData icon, Widget route});

final List<NavItem> tugas9BottomNav = [
  (navigation: 'nomor-1', icon: Icons.home, route: Tugas9Page1()),
  (navigation: 'nomor-2', icon: Icons.question_mark, route: Tugas9Page2()),
  (navigation: 'nomor-3', icon: Icons.question_mark, route: Tugas9Page3()),
];
