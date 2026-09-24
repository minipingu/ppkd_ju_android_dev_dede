import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/pages/tugas9_page1.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/pages/tugas9_page2.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/pages/tugas9_page3.dart';

//mencoba ala ala typescript ~_~
typedef NavItem = ({String navigation, Text icon, Widget route});

final List<NavItem> tugas9Routes = [
  (navigation: 'tugas-1', icon: Text('1'), route: Tugas9Page1()),
  (navigation: 'tugas-2', icon: Text('2'), route: Tugas9Page2()),
  (navigation: 'tugas-3', icon: Text('3'), route: Tugas9Page3()),
];
