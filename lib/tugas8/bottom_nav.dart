import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/tugas7_routes.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  String menuTitleConverter(String title) {
    var splittedText = title.split('-').join(' ');
    final result = splittedText[0].toUpperCase() + splittedText.substring(1);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    print(location);

    final selectedIndex = bottomNavRoutes.indexWhere(
      (page) => '/${page.navigation}' == location,
    );

    print(selectedIndex);

    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        ...bottomNavRoutes.map(
          (page) => BottomNavigationBarItem(
            icon: Icon(page.icon),
            label: menuTitleConverter(page.navigation),
          ),
        ),
      ],
      currentIndex: selectedIndex < 0 ? 0 : selectedIndex,
      selectedItemColor: Colors.deepPurple[800],
      onTap: (index) {
        context.go(bottomNavRoutes[index].navigation);
      },
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
