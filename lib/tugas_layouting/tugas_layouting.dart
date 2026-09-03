import 'package:flutter/material.dart';

class TugasLayouting extends StatelessWidget {
  const TugasLayouting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'GibRun News',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        leading: Icon(Icons.menu, color: Colors.black, size: 30),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              radius: 26,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('assets/images/gibs.png'),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.green,
                    ),
                  ),
                  Text(
                    'Inovasi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Column(
                  children: [
                    //judul
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14),
                      child: Text(
                        'Masa Depan Energi Terbarukan: Inovasi Bahan Bakar Minyak Sawit di 2077',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                        ),
                      ),
                    ),
                    //tanggal dan admin
                    Row(
                      children: [
                        Icon(Icons.date_range),
                        SizedBox(width: 4),
                        Text('24 Mei 2024'),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, right: 6),
                          child: CircleAvatar(
                            radius: 2.8,
                            backgroundColor: Colors.black,
                          ),
                        ),
                        Text('Oleh Admin Owkeygas'),
                      ],
                    ),
                    //gambar berita
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/nyawit2.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        'Sawit lu warna apa bos??? udah punya sawit berapa hektar bos? sawit berkembang pesat, membawa energi tidak berguna yg menghancurkan hutan ke tingkat yg menyengsengsarakan rakyat, tidak pernah terbayangkan sebelumnya 😩',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
