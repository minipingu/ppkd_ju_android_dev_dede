import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/bottom_nav_9.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/data/buah_buahan.dart';

class Tugas9Page3 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tugas 9')),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView.builder(
          itemCount: buah.length,
          itemBuilder: (context, index) =>
              ListTile(leading: Text('$index'), title: Text(buah[index])),
        ),
      ),
      bottomNavigationBar: BottomNav9(),
    );
  }
}
