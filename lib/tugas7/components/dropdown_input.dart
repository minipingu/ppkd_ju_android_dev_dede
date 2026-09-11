import 'package:flutter/material.dart';

class DropdownInput extends StatefulWidget {
  const new({super.key});

  @override
  State<DropdownInput> createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
  String? selected;
  List<String> data = ['MBG', 'KOPDES', 'WHOOSH'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          items: data.map(
            (String val) => DropdownMenuItem(child: Text(val)).toList(),
          ),
          onChanged: (val) => setState(() {}),
        ),
      ],
    );
  }
}
