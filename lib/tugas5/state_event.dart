import 'package:flutter/material.dart';

class StateEvent extends StatefulWidget {
  const new({super.key});

  @override
  State<StateEvent> createState() => _StateEventState();
}

class _StateEventState extends State<StateEvent> {
  //onPressed Elevated Button
  var elevatedButtonText = '';
  void showTextForElevatedButton() {
    if (elevatedButtonText == '') {
      setState(() => elevatedButtonText = 'Halo, saya Developer!');
    } else {
      setState(() => elevatedButtonText = '');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          spacing: 40,
          children: [
            Column(
              // 1
              children: [
                Text('Elevated Button'),
                ElevatedButton(
                  onPressed: () {
                    showTextForElevatedButton();
                  },
                  child: Text('Elevated Button'),
                ),
                if (elevatedButtonText != '') Text(elevatedButtonText),
              ],
            ),
            Column(
              // 2
              children: [
                Text('Text Button'),
                TextButton(
                  onPressed: () {
                    showTextForElevatedButton();
                  },
                  child: Text('Elevated Button'),
                ),
                if (elevatedButtonText != '') Text(elevatedButtonText),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
