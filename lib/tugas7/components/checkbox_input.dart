import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/_components/divider_text_divider.dart';

class CheckboxInput extends StatefulWidget {
  const new({super.key});

  @override
  State<CheckboxInput> createState() => _CheckboxInputState();
}

class _CheckboxInputState extends State<CheckboxInput> {
  bool _checkboxState = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DividerTextDivider(title: 'Syarat dan ketentuan'),
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
