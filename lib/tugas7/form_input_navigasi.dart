import 'package:flutter/material.dart';

class FormInputNavigasi extends StatefulWidget {
  const FormInputNavigasi({Key? key}) : super(key: key);

  @override
  _FormInputNavigasiState createState() => _FormInputNavigasiState();
}

class _FormInputNavigasiState extends State<FormInputNavigasi> {
  bool checkboxState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Input Interaktif dengan Navigasi Drawer'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    value: checkboxState,
                    onChanged: (bool? newValue) =>
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
            ],
          ),
        ],
      ),
    );
  }
}
