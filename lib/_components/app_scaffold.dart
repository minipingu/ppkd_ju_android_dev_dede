import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/drawer_tugas_7.dart';

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
      appBar: AppBar(title: Text(title), backgroundColor: backgroundColor),
      drawer: const DrawerTugas7(),
      body: body,
    );
  }
}
