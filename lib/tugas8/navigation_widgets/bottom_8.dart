import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/tugas7_routes.dart';

class Bottom8 extends StatefulWidget {
  const Bottom8({super.key});

  @override
  State<Bottom8> createState() => _Bottom8State();
}

class _Bottom8State extends State<Bottom8> {
  int _selectedIndex = 0;

  String menuTitleConverter(String title) {
    var splittedText = title.split('-').join(' ');
    final result = splittedText[0].toUpperCase() + splittedText.substring(1);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;

    final selectedIndex = bottomNavRoutes.indexWhere(
      (item) => item.navigation == currentRoute,
    );
    print(selectedIndex);

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
        Navigator.pushNamed(context, bottomNavRoutes[val].navigation);
      },
      currentIndex: selectedIndex,
    );
  }
}
