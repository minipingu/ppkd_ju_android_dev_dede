import 'package:flutter/material.dart';

class ProfilKompleks extends StatelessWidget {
  const ProfilKompleks({Key? key}) : super(key: key);

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
        backgroundColor: Color(0xFF76A3E2),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Ini adalah Profil dari GibRun.exe',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF76A3E2),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.mail, color: Colors.white),
                    SizedBox(width: 20),
                    Text(
                      'okgas@okgas.com',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Icon(Icons.phone),
                  SizedBox(width: 10),
                  Text('08123123123'),
                  Expanded(child: Container()),
                  Icon(Icons.location_pin),
                  SizedBox(width: 10),
                  Text('08123123123'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.2),
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(0, 5),
                      ),
                    ],
                    color: Color(0xFF76A3E2),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              '19 Juta +++',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'lapangan pekerjaan',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
