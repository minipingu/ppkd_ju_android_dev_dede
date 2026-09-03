import 'package:flutter/material.dart';

class TugasLayouting extends StatelessWidget {
  const TugasLayouting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'GibRun News',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        leading: Icon(Icons.menu, color: Colors.black, size: 30),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              radius: 26,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('assets/images/gibs.png'),
              ),
            ),
          ),
        ],
      ),
      body: Container(padding: EdgeInsets.all(16), child: Column()),
    );
  }
}
