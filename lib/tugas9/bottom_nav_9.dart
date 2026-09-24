import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/route/tugas9_routes.dart';

class BottomNav9 extends StatefulWidget {
  const BottomNav9({super.key});

  @override
  State<BottomNav9> createState() => _BottomNav9State();
}

class _BottomNav9State extends State<BottomNav9> {
  String menuTitleConverter(String title) {
    var splittedText = title.split('-').join(' ');
    final result = splittedText[0].toUpperCase() + splittedText.substring(1);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;

    final selectedIndex = tugas9Routes.indexWhere(
      (page) => '/${page.navigation}' == location,
    );

    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        ...tugas9Routes.map(
          (page) => BottomNavigationBarItem(
            icon: page.icon,
            label: menuTitleConverter(page.navigation),
          ),
        ),
      ],
      currentIndex: selectedIndex < 0 ? 0 : selectedIndex,
      selectedItemColor: Colors.deepPurple[800],
      onTap: (index) {
        context.go(tugas9Routes[index].navigation);
      },
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
