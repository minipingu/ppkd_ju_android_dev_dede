import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class LoadingMohonBersabar extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(fontSize: 34.0, color: Colors.amberAccent),
      child: AnimatedTextKit(
        animatedTexts: [WavyAnimatedText('Mohon Bersabar')],
        isRepeatingAnimation: true,
      ),
    );
  }
}
