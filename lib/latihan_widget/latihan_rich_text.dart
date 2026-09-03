import 'package:flutter/material.dart';

class LatihanRichText extends StatelessWidget {
  const LatihanRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Belajar Rich Text')),
      body: RichText(
        text: TextSpan(
          //Gaya teks default untuk seluruh paragraf
          style: const TextStyle(color: Colors.black, fontSize: 18),
          children: <TextSpan>[
            TextSpan(text: 'Belajar '),
            TextSpan(
              text: 'Flutter ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue[700],
              ),
            ),
            TextSpan(text: 'itu '),
            TextSpan(
              text: 'Mudah!',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.green,
              ), //Membuat kata 'Mudah! jadi miring
            ),
          ],
        ),
      ),
    );
  }
}
