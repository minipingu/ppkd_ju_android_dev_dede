import 'package:flutter/material.dart';

class ButtonSearchMbg extends StatelessWidget {
  final Function onPressed;
  const new({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      child: Text('Gacha-in Donk...'),
    );
  }
}
