import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/dropdown_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/showdatepicker_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/showtimepicker_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/switch_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/checkbox_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/tugas7_routes.dart';

class DrawerTugas7 extends StatelessWidget {
  new({super.key});

  final Map<String, Widget> pages = {
    'Checkbox': CheckboxInput(),
    'Switch': SwitchInput(),
    'Dropdown': DropdownInput(),
    'Date Picker': ShowDatePickerInput(),
    'Time Picker': ShowTimePickerInput(),
  };

  String menuTitleConverter(String title) {
    var splittedText = title.split('-').join(' ');
    final result = splittedText[0].toUpperCase() + splittedText.substring(1);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'OHKE GAS OHKE GASSS',
              style: TextStyle(color: Colors.white, fontSize: 38),
            ),
          ),
          ...tugas7Pages.entries.map(
            (route) => ListTile(
              title: Text(
                menuTitleConverter(route.key),
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.pushNamed(context, route.key);
              },
            ),
          ),
        ],
      ),
    );
  }
}
