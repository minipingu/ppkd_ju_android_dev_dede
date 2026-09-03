import 'package:flutter/material.dart';

class TugasFlutter1 extends StatelessWidget {
  const TugasFlutter1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil saya'),
        backgroundColor: Colors.red,
        // leading: Icon(Icons.arrow_back, color: Colors.white, size: 40),
        // actions: [
        //   Center(
        //     child: CircleAvatar(
        //       radius: 20,
        //       backgroundColor: Colors.amberAccent,
        //       backgroundImage: AssetImage('assets/images/gibs.png'),
        //     ),
        //   ),
        //   // Icon(Icons.view_headline, color: Colors.white, size: 40),
        // ],
      ),
      body: Column(
        children: [
          // Baris 1: Nama lengkap (gunakan Text dengan ukuran font besar)
          Text(
            'Nama : Dede Nurhidayat',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          //  Baris 2: Gunakan Row yang berisi Icon(Icons.location_on) dan nama kota
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.black, size: 20),
              Text(
                'Jakarta Utara',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ],
          ),
          Text(
            'Seseorang yang sedang belajar pemrograman berbasiskan device dengan menggunakan flutter',
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
