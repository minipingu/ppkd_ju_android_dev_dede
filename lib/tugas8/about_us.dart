import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/_components/app_scaffold.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Tentang Kami',
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: SizedBox(
          width: .infinity,
          height: .infinity,
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            spacing: 30,
            children: [
              Text(
                'Tugas 8',
                style: TextStyle(fontSize: 30, fontWeight: .bold),
              ),
              Text(
                'Aplikasi ini dibuat dengan menggunakan package go router, karena saya tidak suka route berbasis index, biasanya pakai folder based yang lebih gampang, nanti lah di explore lagi, kemarin versi terbaru yg routefly masih ngebug. Sekian dan terima gaji. ps : Routing ini penting banget yah, sama pentingnya seperti data',
                textAlign: .justify,
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'by minipingu, cari aja di github',
                textAlign: .center,
                style: TextStyle(fontSize: 16, fontWeight: .bold),
              ),
              Text(
                'versi? 0.000000001',
                textAlign: .center,
                style: TextStyle(fontSize: 16, fontWeight: .bold),
              ),
              Text(
                'sekiannnnn......',
                textAlign: .center,
                style: TextStyle(fontSize: 16, fontStyle: .italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
