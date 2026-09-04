import 'package:flutter/material.dart';

class ForminputGrid extends StatelessWidget {
  const ForminputGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Form Input dan Grid')),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                child: Text(
                  'Form Pendaftaran Omke Gas',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Nama lengkap'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
