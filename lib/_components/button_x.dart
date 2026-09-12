import 'package:flutter/material.dart';

class ButtonX extends StatelessWidget {
  final Function(Null) onTap;

  const new({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton.filledTonal(
      onPressed: () {
        onTap(null);
      },
      icon: Icon(Icons.filter_drama),
    );
  }
}
