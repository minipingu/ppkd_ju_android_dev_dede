import 'package:flutter/material.dart';

class CheckboxInput extends StatefulWidget {
  const new({super.key});

  @override
  State<CheckboxInput> createState() => _CheckboxInputState();
}

class _CheckboxInputState extends State<CheckboxInput> {
  bool checkboxState = false;

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
