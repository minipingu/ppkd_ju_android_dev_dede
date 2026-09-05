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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 300,
              child: ListView(
                children: [
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      title: Text(
                        'Jakarta Pusat',
                        style: TextStyle(fontWeight: .bold, fontSize: 18),
                      ),
                      leading: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Icon(Icons.warning, color: Colors.white),
                      ),
                      subtitle: Text(
                        'AQI: 156 - Tidak Sehat. Dilaporkan 1 menit lalu',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      title: Text('Bandung Kota'),
                      leading: CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Icon(Icons.cloud, color: Colors.white),
                      ),
                      subtitle: Text(
                        'AQI 156 - Tidak Sehat. Dilaporkan 5 menit lalu',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      title: Text('Yogyakarta'),
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(Icons.check_circle, color: Colors.white),
                      ),
                      subtitle: Text(
                        'AQI 156 - Tidak Sehat. Dilaporkan 30 menit lalu',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      title: Text('Semarang'),
                      leading: CircleAvatar(
                        backgroundColor: Colors.redAccent,
                        child: Icon(Icons.masks, color: Colors.white),
                      ),
                      subtitle: Text(
                        'AQI 120 - Sensitif. Dilaporkan 1 jam lalu',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    child: ListTile(
                      title: Text('Lampung'),
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(Icons.check_circle, color: Colors.white),
                      ),
                      subtitle: Text(
                        'AQI 42 - Baik. Dilaporkan 3 jam lalu',
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
