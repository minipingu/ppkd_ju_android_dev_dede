import 'package:flutter/material.dart';

class ButtonX extends StatelessWidget {
  final Function() onTap;

  const new({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      iconSize: 16,
      padding: EdgeInsets.all(6),
      constraints: const BoxConstraints(),
      onPressed: () {
        onTap();
      },
      icon: Text('❌', style: TextStyle(fontSize: 10)),
    );
  }
}
