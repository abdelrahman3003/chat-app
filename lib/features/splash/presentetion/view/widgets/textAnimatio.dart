import 'package:chat_app1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TextAnimation extends StatelessWidget {
  const TextAnimation({
    super.key,
    required this.slidinganmation,
  });

  final Animation<Offset> slidinganmation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidinganmation,
      builder: (context, _) {
        return SlideTransition(
          position: slidinganmation,
          child: const Text(
            "Chat",
            style: Styles.textStyle25,
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
