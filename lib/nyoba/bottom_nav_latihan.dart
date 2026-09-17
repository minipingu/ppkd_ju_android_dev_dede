import 'package:flutter/material.dart';

class BottomNavLatihan extends StatefulWidget {
  const BottomNavLatihan({super.key});

  @override
  State<BottomNavLatihan> createState() => _BottomNavLatihanState();
}

class _BottomNavLatihanState extends State<BottomNavLatihan> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: .bold,
  );

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Halaman Beranda 1', style: optionStyle),
    Text('Halaman cari 2', style: optionStyle),
    Text('Halaman profil 3', style: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Bottom Navigator'),
        backgroundColor: Colors.amber,
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Cari'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Profil'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
