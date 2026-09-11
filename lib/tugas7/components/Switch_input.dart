import 'package:flutter/material.dart';

class SwitchInput extends StatefulWidget {
  const new({super.key});

  @override
  State<SwitchInput> createState() => _SwitchInputState();
}

class _SwitchInputState extends State<SwitchInput> {
  bool switchState = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      height: 200,
      decoration: BoxDecoration(
        color: switchState ? Colors.black : Colors.white,
      ),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          if (!switchState) Divider(),
          Switch(
            value: switchState,
            onChanged: (value) => setState(() => switchState = !switchState),
          ),
          switchState
              ? Text(
                  'KAU  YANG GELAP 🫵🏻',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              : Text(
                  'Indonesia gelap? 🤔',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
          if (!switchState) Divider(),
        ],
      ),
    );
  }
}
