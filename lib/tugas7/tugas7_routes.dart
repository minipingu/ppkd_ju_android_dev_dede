import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/checkbox_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/dropdown_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/showdatepicker_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/showtimepicker_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/switch_input.dart';

final Map<String, Widget> tugas7Pages = {
  'checkbox': CheckboxInput(),
  'switch': SwitchInput(),
  'dropdown': DropdownInput(),
  'date-picker': ShowDatePickerInput(),
  'time-picker': ShowTimePickerInput(),
};
