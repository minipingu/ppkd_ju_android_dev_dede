import 'package:flutter/material.dart';

class ButtonSearchMbg extends StatelessWidget {
  final Function onPressed;
  const new({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: .infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: () => onPressed(),
        child: Text(
          'Gacha-in Donk... ',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    );
  }
}
