import 'package:flutter/material.dart';

class DropdownInput extends StatefulWidget {
  const new({super.key});

  @override
  State<DropdownInput> createState() => _DropdownInputState();
}

class _DropdownInputState extends State<DropdownInput> {
  String? selected;
  List<String> data = <String>['MBG', 'KOPDES', 'WHOOSH'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(color: Colors.red),
        DropdownButton<String>(
          value: selected,
          icon: Icon(Icons.arrow_downward),
          style: TextStyle(color: Colors.deepPurple),
          underline: Container(height: 2, color: Colors.deepPurpleAccent),
          onChanged: (String? value) {
            // This is called when the user selects an item.
            setState(() {
              selected = value!;
            });
          },
          items: data.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
        ),
        if (selected != null) Text('Program pemerintah??? $selected'),
        Divider(color: Colors.red),
      ],
    );
  }
}
