import 'package:flutter/material.dart';

class LatihanRow extends StatelessWidget {
  const LatihanRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HIDUP COKOWI!!!!!',
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 255, 255),
            fontSize: 40,
          ),
        ),
        titleTextStyle: TextStyle(
          color: const Color.fromARGB(255, 104, 189, 7),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 0, 170),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(children: [Text('asdasdasd')]),
          SizedBox(height: 100),
          Text('sayap kiri', style: TextStyle(color: Colors.blue)),
          Text(
            'sayap tengah',
            style: TextStyle(color: Colors.deepOrangeAccent),
          ),
          Text('sayap kanan', style: TextStyle(color: Colors.green)),
        ],
      ),
    );
  }
}
