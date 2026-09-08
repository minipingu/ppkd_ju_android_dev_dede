import 'package:flutter/material.dart';

class StateEvent extends StatefulWidget {
  const new({super.key});

  @override
  State<StateEvent> createState() => _StateEventState();
}

class _StateEventState extends State<StateEvent> {
  //onPressed Elevated Button
  var elevatedButtonText = '';
  void showTextForElevatedButton() {
    elevatedButtonText == ''
        ? setState(() => elevatedButtonText = 'Halo, saya WaPres! 🗿')
        : setState(() => elevatedButtonText = '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Salam Interaksi!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: .bold,
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            spacing: 40,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    // 1
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        'Elevated Button',
                        textAlign: .start,
                        style: TextStyle(
                          fontStyle: .italic,
                          color: Colors.blueGrey,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          showTextForElevatedButton();
                        },
                        child: Text(
                          elevatedButtonText != '' ? 'Tutup' : 'Buka',
                        ),
                      ),
                      if (elevatedButtonText != '')
                        Text(
                          elevatedButtonText,
                          style: TextStyle(fontSize: 30),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
