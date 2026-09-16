import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas8/bottom_nav.dart';
import 'package:ppkd_ju_android_dev_dede/tugas8/drawer8.dart';

class AppScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final Color? backgroundColor;

  const AppScaffold({
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
      drawer: Drawer8(),
      body: body,
      bottomNavigationBar: BottomNav(),
    );
  }
}
