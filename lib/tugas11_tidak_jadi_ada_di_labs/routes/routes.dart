import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas11_tidak_jadi_ada_di_labs/views/home.dart';
import 'package:ppkd_ju_android_dev_dede/tugas11_tidak_jadi_ada_di_labs/views/login.dart';

//mencoba ala ala typescript ~_~
typedef NavItem = ({String navigation, Widget route});

final List<NavItem> routes11 = [
  (navigation: 'home', route: Home()),
  (navigation: 'login', route: LoginScreen()),
];
