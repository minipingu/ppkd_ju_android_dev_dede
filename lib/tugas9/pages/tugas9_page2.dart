import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/bottom_nav_9.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/data/buah_buahan.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/data/buah_buahan_icon.dart';

class Tugas9Page2 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tugas 9')),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView.builder(
          itemCount: buahBuahanIcon.length,
          itemBuilder: (context, index) => ListTile(
            leading: Icon(buahBuahanIcon[index]['icon']),
            title: Text(buahBuahanIcon[index]['nama']),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav9(),
    );
  }
}
