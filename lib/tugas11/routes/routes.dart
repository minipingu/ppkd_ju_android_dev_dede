import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas11/views/home.dart';
import 'package:ppkd_ju_android_dev_dede/tugas11/views/login.dart';

//mencoba ala ala typescript ~_~
typedef NavItem = ({String navigation, Widget route});

final List<NavItem> tugas9Routes = [
  (navigation: 'home', route: Home()),
  (navigation: 'login', route: Login11()),
];
