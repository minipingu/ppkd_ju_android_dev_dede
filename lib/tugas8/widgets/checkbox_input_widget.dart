import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/_components/app_scaffold.dart';

class CheckboxInputWidget extends StatefulWidget {
  const new({super.key});

  @override
  State<CheckboxInputWidget> createState() => _CheckboxInputWidgetState();
}

class _CheckboxInputWidgetState extends State<CheckboxInputWidget> {
  bool _checkboxState = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: .center,
          children: [
            Checkbox(
              value: _checkboxState,
              onChanged: (bool? value) =>
                  setState(() => _checkboxState = !_checkboxState),
            ),
            Text(
              !_checkboxState ? 'Join KOPDES 🤔' : 'KOPDES! SHAPPP 🥴',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        if (_checkboxState)
          Text(
            'Selamat Datang Di KOPDES Merah Putih',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
      ],
    );
  }
}
