import 'package:flutter/material.dart';

class FormInputNavigasi extends StatefulWidget {
  const FormInputNavigasi({Key? key}) : super(key: key);

  @override
  _FormInputNavigasiState createState() => _FormInputNavigasiState();
}

class _FormInputNavigasiState extends State<FormInputNavigasi> {
  bool checkboxState = false;
  bool switchState = false;
  List programUtamaPemerintah = ['MBG', 'KOPDES'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Form Input & Drawer'))),
      body: ListView(
        children: [
          Column(
            children: [
              Divider(),
              Row(
                children: [
                  Checkbox(
                    value: checkboxState,
                    onChanged: (bool? value) =>
                        setState(() => checkboxState = !checkboxState),
                  ),
                  Text('Saya menyetujui semua persyaratan yang berlaku'),
                ],
              ),
              checkboxState
                  ? Text(
                      'Nah, gaskan!!!!!!!!',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    )
                  : Text(
                      'Klik setuju dulu lah bejir',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
              Divider(),
              Container(
                width: .infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: switchState ? Colors.black : Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    Switch(
                      value: switchState,
                      onChanged: (value) =>
                          setState(() => switchState = !switchState),
                    ),
                    switchState
                        ? Text(
                            'KAU  YANG GELAP 🫵🏻',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        : Text(
                            'Indonesia gelap? 🤔',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                  ],
                ),
              ),
              Divider(),
            ],
          ),
        ],
      ),
    );
  }
}
