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
      body: Center(child: Text('asdasd')),
    );
  }
}
