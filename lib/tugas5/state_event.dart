import 'package:flutter/material.dart';

class StateEvent extends StatefulWidget {
  const new({super.key});

  @override
  State<StateEvent> createState() => _StateEventState();
}

enum ButtonStatus { closed, open }

class _StateEventState extends State<StateEvent> {
  //onPressed ElevatedButton
  ButtonStatus elevatedButtonStatus = ButtonStatus.closed;
  void elevatedButtonEvent() {
    elevatedButtonStatus == ButtonStatus.closed
        ? setState(() => elevatedButtonStatus = ButtonStatus.open)
        : setState(() => elevatedButtonStatus = ButtonStatus.closed);
  }

  //onPressed TextButton
  ButtonStatus iconButtonStatus = ButtonStatus.closed;
  void iconButtonEvent() {
    iconButtonStatus == ButtonStatus.closed
        ? setState(() => iconButtonStatus = ButtonStatus.open)
        : setState(() => iconButtonStatus = ButtonStatus.closed);
  }

  //onPressed TextButton
  ButtonStatus textButtonStatus = ButtonStatus.closed;
  void textButtonEvent() {
    textButtonStatus == ButtonStatus.closed
        ? setState(() => textButtonStatus = ButtonStatus.open)
        : setState(() => textButtonStatus = ButtonStatus.closed);
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
              // 1. Elevated Button
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
                        'ElevatedButton',
                        textAlign: .start,
                        style: TextStyle(
                          fontStyle: .italic,
                          color: Colors.blueGrey,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          elevatedButtonEvent();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          textStyle: TextStyle(fontSize: 20),
                        ),
                        child: Text(
                          elevatedButtonStatus == ButtonStatus.closed
                              ? 'Buka'
                              : 'Tutup',
                        ),
                      ),
                      if (elevatedButtonStatus == ButtonStatus.open)
                        Column(
                          children: [
                            Text(
                              "Halo, Saya ini WaPres-mu! 🗿",
                              style: TextStyle(fontSize: 24),
                            ),
                            Image.asset('assets/images/gibs.png'),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
              // 2. IconButton
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
                        'IconButton',
                        textAlign: .start,
                        style: TextStyle(
                          fontStyle: .italic,
                          color: Colors.blueGrey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          iconButtonEvent();
                        },
                        icon: Icon(
                          Icons.attach_money,
                          color: iconButtonStatus == ButtonStatus.closed
                              ? Colors.blue
                              : Colors.red,
                        ),
                      ),
                      if (iconButtonStatus == ButtonStatus.open)
                        Text(
                          'Kapan dollar turun wok? 😡',
                          style: TextStyle(fontSize: 24),
                        ),
                    ],
                  ),
                ),
              ),

              // 3. TextButton
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
                        'TextButton',
                        textAlign: .start,
                        style: TextStyle(
                          fontStyle: .italic,
                          color: Colors.blueGrey,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          textButtonEvent();
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.blue,
                          textStyle: TextStyle(fontSize: 20),
                        ),
                        child: Text(
                          textButtonStatus == ButtonStatus.closed
                              ? 'Buka'
                              : 'Tutup',
                        ),
                      ),
                      if (textButtonStatus == ButtonStatus.open)
                        Column(
                          children: [
                            Text(
                              "Hari ini saya mau pidato, tapi semoga saya tidak blunder.",
                              style: TextStyle(fontSize: 18),
                              textAlign: .justify,
                            ),
                            SizedBox(height: 20),
                            Align(
                              alignment: .centerStart,
                              child: Text(
                                "Ada pantun juga nih...",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Jalan-jalan ke pasar beli tomat, eh ngeliat foto terbang di langit.",
                              style: TextStyle(fontSize: 18),
                              textAlign: .justify,
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Doakan semoga saya selamat, saya pamit 🗿",
                              style: TextStyle(fontSize: 18),
                              textAlign: .justify,
                            ),
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
