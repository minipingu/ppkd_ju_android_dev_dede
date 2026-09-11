import 'package:flutter/material.dart';

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
        Divider(),
        Row(
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
        Divider(),
      ],
    );
  }
}
