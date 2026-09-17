import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/bottom_nav_9.dart';
import 'package:ppkd_ju_android_dev_dede/tugas9/data/buah_harga_kategori.dart';

class Tugas9Page3 extends StatelessWidget {
  const Tugas9Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tugas 9')),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: ListView.builder(
          itemCount: buahHargaKategori.length,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              title: Text(buahHargaKategori[index].namaBuah),
              isThreeLine: true,
              subtitle: Row(
                spacing: 10,
                children: [
                  Text('Kategori : ${buahHargaKategori[index].kategoriBuah},'),
                  Text('Harga : Rp${buahHargaKategori[index].hargaBuah}'),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav9(),
    );
  }
}
