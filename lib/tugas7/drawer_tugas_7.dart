import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/dropdown_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/showdatepicker_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/showtimepicker_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/switch_input.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/pages/checkbox_input.dart';

class DrawerTugas7 extends StatefulWidget {
  const new({super.key});

  @override
  State<DrawerTugas7> createState() => _DrawerTugas7State();
}

class _DrawerTugas7State extends State<DrawerTugas7> {
  final Map<String, Widget> pages = {
    'Checkbox': CheckboxInput(),
    'Switch': SwitchInput(),
    'Dropdown': DropdownInput(),
    'Date Picker': ShowDatePickerInput(),
    'Time Picker': ShowTimePickerInput(),
  };

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('OHKE GAS OHKE GASSS'),
          ),
          ListTile(
            title: const Text('Home'),
            // selected: _selectedIndex == 0,
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
