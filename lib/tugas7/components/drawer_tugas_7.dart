import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas7/components/dropdown_input.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas7/components/showdatepicker_input.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas7/components/showtimepicker_input.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas7/components/switch_input.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/tugas7/components/checkbox_input.dart';

class DrawerTugas7 extends StatefulWidget {
  const new({super.key});

  @override
  State<DrawerTugas7> createState() => _DrawerTugas7State();
}

class _DrawerTugas7State extends State<DrawerTugas7> {
  final Map<String, Widget> pages = {
    'Checkbox': const CheckboxInput(),
    'Switch': const SwitchInput(),
    'Dropdown': const DropdownInput(),
    'Date Picker': const ShowDatePickerInput(),
    'Time Picker': const ShowTimePickerInput(),
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
