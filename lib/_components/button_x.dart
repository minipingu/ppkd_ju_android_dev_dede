import 'package:flutter/material.dart';

class ButtonX extends StatelessWidget {
  final Function() onTap;

  const new({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      padding: EdgeInsets.all(10),
      constraints: const BoxConstraints(),
      onPressed: () {
        onTap();
      },
      icon: Text('❌', style: TextStyle(fontSize: 14)),
    );
  }
}
