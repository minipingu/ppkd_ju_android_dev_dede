import 'package:flutter/material.dart';

class ListviewListtile extends StatelessWidget {
  const ListviewListtile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            'Laporan & Riwayat Udara',
            style: TextStyle(color: Colors.white, fontWeight: .bold),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              height: 430,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    spreadRadius: 4,
                    color: const Color.fromARGB(43, 0, 0, 0),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  children: [
                    Center(
                      child: Text(
                        'Laporan Kondisi Udara',
                        style: TextStyle(fontSize: 20, fontWeight: .bold),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(26, 0, 255, 8),
                        prefixIcon: Icon(Icons.map),
                        border: OutlineInputBorder(),
                        labelText: 'Titik Lokasi (Nama Jalan/Gedung)',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(26, 0, 255, 8),
                        prefixIcon: Icon(Icons.air),
                        border: OutlineInputBorder(),
                        labelText: 'Skor AQI Teramati',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(26, 0, 255, 8),
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                        labelText: 'Nama Pelapor',
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromARGB(26, 0, 255, 8),
                        prefixIcon: Icon(Icons.notes),
                        border: OutlineInputBorder(),
                        labelText: 'Catatan Tambahan (Misal : Berkabut)',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              'Riwayat Laporan Terakhir',
              style: TextStyle(fontWeight: .bold, fontSize: 20),
            ),
          ),
          ListTile(title: Text('sdasd'), leading: Icon(Icons.warning)),
        ],
      ),
    );
  }
}
