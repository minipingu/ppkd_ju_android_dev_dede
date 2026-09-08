import 'package:flutter/material.dart';

enum Status { closed, open }

class StateEvent extends StatefulWidget {
  const new({super.key});

  @override
  State<StateEvent> createState() => _StateEventState();
}

class _StateEventState extends State<StateEvent> {
  //onPressed Elevated Button
  var elevatedButtonText = '';
  Status elevatedStatus = Status.closed;
  void showTextForElevatedButton() {
    elevatedButtonText == ''
        ? setState(() => elevatedButtonText = 'Halo, saya WaPres! 🗿')
        : setState(() => elevatedButtonText = '');

    elevatedStatus == Status.closed
        ? setState(() {
            print(elevatedStatus);
            elevatedStatus = Status.open;
          })
        : setState(() {
            print(elevatedStatus);
            elevatedStatus = Status.closed;
          });
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
                          elevatedStatus == Status.closed ? 'Tutup' : 'Buka',
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
