import 'package:flutter/material.dart';

class LatihanStateful extends StatefulWidget {
  const LatihanStateful({Key? key}) : super(key: key);

  @override
  _LatihanStatefulState createState() => _LatihanStatefulState();
}

class _LatihanStatefulState extends State<LatihanStateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Latihan stateful')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                print('button di klik saya');
              },
              child: Text('button'),
            ),
            IconButton(
              onPressed: () {
                print('ikon saya');
              },
              icon: Icon(Icons.favorite),
            ),
            TextButton(
              onPressed: () {
                print('teks button saya');
              },
              child: Text('Teks Button'),
            ),
            InkWell(
              onTap: () {
                print('teks button saya');
              },
              child: Text('Teks Button'),
            ),
            GestureDetector(
              onTap: () {
                print('on tap');
              },
              onDoubleTap: () {
                print('double tap');
              },
              onLongPress: () {
                print('long press');
              },
              child: Container(
                color: Colors.red,
                child: SizedBox(height: 100, width: 100),
              ),
            ),
            FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
