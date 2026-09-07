import 'package:flutter/material.dart';

class ProfilKompleks extends StatelessWidget {
  ProfilKompleks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Profil GibRun Tidak Gas',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 133, 184, 255),
      ),
      body: Container(
        color: const Color.fromARGB(255, 0, 56, 105),
        child: Padding(
          padding: EdgeInsets.only(left: 24, right: 24, bottom: 20),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Ini adalah Profil dari GibRun.exe',
                    style: TextStyle(
                      fontFamily: 'MarckScript',
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF76A3E2),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.blue, width: 1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.mail, color: Colors.white),
                      SizedBox(width: 20),
                      Text(
                        'okgas@okgas.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Icon(Icons.phone, color: Colors.white),
                    SizedBox(width: 10),
                    Text('08123123123', style: TextStyle(color: Colors.white)),
                    Expanded(child: Container()),
                    Icon(Icons.location_pin, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Kertanegara, Indonesia',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 5),
                            blurRadius: 4,
                            color: Colors.cyanAccent,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          spacing: 4,
                          children: [
                            Text(
                              '19 Juta +++',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Lapangan Pekerjaan 🗿',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 40),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 5),
                            blurRadius: 4,
                            color: Colors.cyanAccent,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          spacing: 8,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '1',
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' / ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '11 ⭐',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Rating jadi mentri 🗿',
                              style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                '''Katanya 19 juta lapangan pekerjaan sudah disiapkan untuk rakyat 😡😡😡. Rakyat pun diminta optimis, karena masa depan katanya cerah. Begitu cari kerja, lowongannya minta pengalaman 3 tahun, gaji setara UMR, kerja merangkap tiga posisi. Yang fresh graduate akhirnya cuma punya pengalaman melamar kerja dan menerima email “terima kasih, tetapi...”. Katanya investasi masuk besar-besaran dan lapangan kerja akan terbuka lebar. Mungkin benar terbuka lebar, tapi bukan untuk rakyat biasa.''',
                textAlign: TextAlign.justify,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 40),
              Container(
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 4),
                      blurRadius: 4,
                      color: const Color.fromARGB(255, 180, 221, 255),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: .circular(20),
                        child: Image.asset(
                          'assets/images/gibran_transparent.png',
                          height: 140,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('"Kosong"', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
