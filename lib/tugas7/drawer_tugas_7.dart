import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/tugas7_routes.dart';

class DrawerTugas7 extends StatelessWidget {
  const new({super.key});

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
          ...tugas7Pages.map(
            (page) => ListTile(
              leading: Icon(page.icon),
              title: Text(
                menuTitleConverter(page.navigation),
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                Navigator.pushNamed(context, page.navigation);
              },
            ),
          ),
        ],
      ),
    );
  }
}
