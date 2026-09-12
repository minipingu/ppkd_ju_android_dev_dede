import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede_nurhidayat/_components/button_x.dart';

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
        Text('Pilih Program :'),
        Row(
          spacing: 12,
          children: [
            Expanded(child: Container()),
            DropdownButton<String>(
              value: selected,
              icon: Icon(Icons.arrow_downward),
              style: TextStyle(color: Colors.deepPurple),
              underline: Container(height: 2, color: Colors.deepPurpleAccent),
              onChanged: (String? value) {
                setState(() {
                  selected = value;
                });
              },
              items: data.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: TextStyle(fontSize: 20)),
                );
              }).toList(),
            ),
            if (selected != null)
              ButtonX(onTap: (nullIt) => setState(() => selected = null)),
            Expanded(child: Container()),
          ],
        ),
        if (selected != null)
          RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 20),
              text: 'Anda memilih',
              children: [
                TextSpan(
                  text: ' $selected 🥴',
                  style: TextStyle(fontWeight: .w700),
                ),
              ],
            ),
          ),
        Divider(color: Colors.red),
      ],
    );
  }
}
