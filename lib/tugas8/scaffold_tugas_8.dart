import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/drawer_tugas_7.dart';
import 'package:ppkd_ju_android_dev_dede/tugas8/navigation_widgets/bottom_8.dart';
import 'package:ppkd_ju_android_dev_dede/tugas8/navigation_widgets/drawer_8.dart';
import 'package:ppkd_ju_android_dev_dede/tugas8/widgets/checkbox_input_widget.dart';

class ScaffoldTugas8 extends StatefulWidget {
  const ScaffoldTugas8({super.key});

  @override
  State<ScaffoldTugas8> createState() => _ScaffoldTugas8State();
}

class _ScaffoldTugas8State extends State<ScaffoldTugas8> {
  bool _checkboxState = false;
  final int indexBottomNav = 0;
  Widget widget = CheckboxInputWidget();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(title: Text(title), backgroundColor: backgroundColor),
      drawer: Drawer8(onTap: (widget) => setState(() {})),
      body: body,
      bottomNavigationBar: Bottom8(onTap: (index) => setState(() {})),
    );
  }
}
