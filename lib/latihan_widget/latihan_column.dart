import 'package:flutter/material.dart';

class LatihanColumn extends StatelessWidget {
  const LatihanColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar KOPDES', style: TextStyle(color: Colors.amber)),
        titleTextStyle: TextStyle(
          color: const Color.fromARGB(255, 104, 189, 7),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          Text('Saya ini kolom kopdes 1'),
          Text('Saya ini kolom kopdes 2'),
          Text('Saya ini kolom kopdes 3'),
          Text('Saya ini kolom kopdes 4'),
          Text('Saya ini kolom kopdes 5'),
          Text('Saya ini kolom kopdes 6'),
          Text('Saya ini kolom kopdes 7'),
          Text('Saya ini kolom kopdes 8'),
        ],
      ),
    );
  }
}
