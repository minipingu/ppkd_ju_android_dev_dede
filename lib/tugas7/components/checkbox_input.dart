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
            Text(
              !checkboxState ? 'Join KOPDES 🤔' : 'KOPDES! SHAPPP 🥴',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
        if (checkboxState)
          Text(
            'Selamat Datang Di KOPDES Merah Putih',
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 0, 0),
              fontSize: 20,
            ),
          ),
        Divider(),
      ],
    );
  }
}
