import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/drawer_tugas_7.dart';
import 'package:ppkd_ju_android_dev_dede/tugas8/navigation_widgets/bottom_8.dart';

class ScaffoldTugas8 extends StatelessWidget {
  final String title;
  final Widget body;
  final Color? backgroundColor;

  const ScaffoldTugas8({
    super.key,
    required this.title,
    required this.body,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(title: Text(title), backgroundColor: backgroundColor),
      drawer: DrawerTugas7(),
      body: body,
      bottomNavigationBar: Bottom8(),
    );
  }
}
