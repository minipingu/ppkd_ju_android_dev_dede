import 'package:flutter/material.dart';

class StateEvent extends StatefulWidget {
  const new({super.key});

  @override
  State<StateEvent> createState() => _StateEventState();
}

enum ButtonStatus { closed, open }

class _StateEventState extends State<StateEvent> {
  //onPressed Elevated Button
  ButtonStatus elevatedButtonText = ButtonStatus.closed;
  void showTextForElevatedButton() {
    elevatedButtonText == ButtonStatus.closed
        ? setState(() => elevatedButtonText = ButtonStatus.open)
        : setState(() => elevatedButtonText = ButtonStatus.closed);
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
            spacing: 20,
            children: [
              //Elevated Button
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
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
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          textStyle: TextStyle(fontSize: 20),
                        ),
                        child: Text(
                          elevatedButtonText == ButtonStatus.open
                              ? 'Buka'
                              : 'Tutup',
                        ),
                      ),
                      if (elevatedButtonText == ButtonStatus.open)
                        Column(
                          children: [
                            Text(
                              "Halo, Saya ini WaPres-mu!",
                              style: TextStyle(fontSize: 24),
                            ),
                            Image.asset('assets/images/gibs.png'),
                          ],
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
