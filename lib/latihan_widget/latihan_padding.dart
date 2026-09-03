import 'package:flutter/material.dart';

class LatihanCenter extends StatelessWidget {
  const LatihanCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi GIBRUN '),
        backgroundColor: Colors.orange,
        leading: Icon(Icons.arrow_back, color: Colors.white, size: 50),
        actions: [Icon(Icons.view_headline, color: Colors.black, size: 50)],
      ),
      body: Column(
        children: [Text('X'), Text('X'), Text('X'), Text('X'), Text('X')],
      ),
    );
  }
}
