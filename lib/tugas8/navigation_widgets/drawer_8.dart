import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas7/tugas7_routes.dart';

class Drawer8 extends StatelessWidget {
  final Function(Widget widget) onTap;
  const new({super.key, required this.onTap});

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
          ...drawerRoutes.map((page) {
            final currentRoute = ModalRoute.of(context)?.settings.name;

            return ListTile(
              selected: currentRoute == page.navigation,
              leading: Icon(page.icon),
              title: Text(
                menuTitleConverter(page.navigation),
                style: TextStyle(fontSize: 16),
              ),
              onTap: () {
                onTap(page.route);
              },
            );
          }),
        ],
      ),
    );
  }
}
