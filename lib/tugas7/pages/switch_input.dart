import 'package:flutter/material.dart';
import 'package:ppkd_ju_android_dev_dede/_components/app_scaffold.dart';

class SwitchInput extends StatefulWidget {
  const new({super.key});

  @override
  State<SwitchInput> createState() => _SwitchInputState();
}

class _SwitchInputState extends State<SwitchInput> {
  bool switchState = false;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Auk ah gelap',
      backgroundColor: switchState ? Colors.black : Colors.white,
      body: Container(
        width: .infinity,
        height: 200,
        decoration: BoxDecoration(
          color: switchState ? Colors.black : Colors.transparent,
        ),
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
      ),
    );
  }
}
