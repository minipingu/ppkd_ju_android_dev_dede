import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/checkbox_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/dropdown_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/showdatepicker_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/showtimepicker_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/switch_input.dart';

//mencoba ala ala typescript ~_~
typedef NavItem = ({String navigation, IconData icon, Widget route});

final List<NavItem> tugas7Pages = [
  (navigation: 'checkbox', icon: Icons.check, route: CheckboxInput()),
  (navigation: 'switch', icon: Icons.check, route: SwitchInput()),
  (navigation: 'dropdown', icon: Icons.check, route: DropdownInput()),
  (navigation: 'date-picker', icon: Icons.check, route: ShowDatePickerInput()),
  (navigation: 'time-picker', icon: Icons.check, route: ShowTimePickerInput()),
];
