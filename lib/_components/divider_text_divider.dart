import 'package:flutter/material.dart';

class DividerTextDivider extends StatelessWidget {
  final String title;

  const new({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        Expanded(child: Divider()),
        Text(title, style: TextStyle(fontSize: 16, fontWeight: .w700)),
        Expanded(child: Divider()),
      ],
    );
  }
}
