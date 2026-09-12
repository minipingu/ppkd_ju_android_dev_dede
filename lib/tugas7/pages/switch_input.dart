import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/_components/divider_text_divider.dart';

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
        color: switchState ? Colors.black : Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          if (!switchState) DividerTextDivider(title: 'Auk ah gelap'),
          Switch(
            value: switchState,
            onChanged: (value) => setState(() => switchState = !switchState),
          ),
          switchState
              ? Text(
                  'KAU YANG GELAP 🫵🏻',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              : Text(
                  'Indonesia gelap? 🤔',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
        ],
      ),
    );
  }
}
