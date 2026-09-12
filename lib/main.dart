import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/latihan_state/latihan_stateful.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas1/tugas_1.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas2/profil_kompleks.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas3/forminput_grid.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas4/listview_listtile.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas5/state_event.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas7/pages/checkbox_input.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas7/pages/dropdown_input.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas7/pages/showdatepicker_input.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas7/pages/showtimepicker_input.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas7/pages/switch_input.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas_layouting/tugas_layouting.dart';

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
      routes: {
        'checkbox': (context) => CheckboxInput(),
        'switch': (context) => SwitchInput(),
        'dropdown': (context) => DropdownInput(),
        'date-picker': (context) => ShowDatePickerInput(),
        'time-picker': (context) => ShowTimePickerInput(),
      },
      //

      debugShowCheckedModeBanner: false,
    );
  }
}
