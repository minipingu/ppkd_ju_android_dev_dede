import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/tugas7_routes.dart';

class Tugas8Bottomnavbar extends StatefulWidget {
  const Tugas8Bottomnavbar({super.key});

  @override
  State<Tugas8Bottomnavbar> createState() => _Tugas8BottomnavbarState();
}

class _Tugas8BottomnavbarState extends State<Tugas8Bottomnavbar> {
  int _selectedIndex = 0;

  String menuTitleConverter(String title) {
    var splittedText = title.split('-').join(' ');
    final result = splittedText[0].toUpperCase() + splittedText.substring(1);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        ...bottomNavRoutes.map((item) {
          return BottomNavigationBarItem(
            icon: Icon(item.icon),
            label: menuTitleConverter(item.navigation),
          );
        }),
      ],
      // currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: (val) {
        setState(() {
          _selectedIndex = val;
        });
      },
      currentIndex: _selectedIndex,
    );
  }
}
