import 'package:flutter/material.dart';

class BelajarGeolocation extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('geolocation')),
      body: ListView(padding: EdgeInsets.all(20), children: []),
    );
  }
}
