import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas7/components/dropdown_input.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas7/components/showdatepicker_input.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas7/components/switch_input.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas7/components/checkbox_input.dart';

class FormInputNavigasi extends StatefulWidget {
  const FormInputNavigasi({Key? key}) : super(key: key);

  @override
  _FormInputNavigasiState createState() => _FormInputNavigasiState();
}

class _FormInputNavigasiState extends State<FormInputNavigasi> {
  List programUtamaPemerintah = ['MBG', 'KOPDES'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Form Input & Drawer'))),
      body: ListView(
        children: [
          Column(
            spacing: 30,
            children: [
              CheckboxInput(),
              SwitchInput(),
              DropdownInput(),
              ShowDatePickerInput(),
            ],
          ),
        ],
      ),
    );
  }
}
