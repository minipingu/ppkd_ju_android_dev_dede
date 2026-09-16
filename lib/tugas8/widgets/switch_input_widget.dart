import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/_components/app_scaffold.dart';

class SwitchInputWidget extends StatefulWidget {
  const new({super.key});

  @override
  State<SwitchInputWidget> createState() => _SwitchInputWidgetState();
}

class _SwitchInputWidgetState extends State<SwitchInputWidget> {
  bool switchState = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: .infinity,
      height: .infinity,
      child: Column(
        mainAxisAlignment: .center,
        children: [
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
