import 'package:flutter/material.dart';

class LatihanScafold extends StatelessWidget {
  const LatihanScafold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Belajar KOPDES',
          style: TextStyle(color: const Color.fromARGB(255, 56, 7, 190)),
        ),
        titleTextStyle: TextStyle(
          color: const Color.fromARGB(255, 104, 189, 7),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          Text(
            'Hallo, saya ini adalah KOPDES MERAH PUTIH yang dibungkus oleh widget column dan scafold',
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
