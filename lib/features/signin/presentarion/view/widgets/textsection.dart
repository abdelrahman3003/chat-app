import 'package:chat_app1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TextsSections extends StatelessWidget {
  const TextsSections({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Welcom! back,",
          style: Styles.textStyle25,
        ),
        Opacity(
          opacity: .4,
          child: Text(
            "Login in your account",
            style: Styles.textStyle16,
          ),
        ),
      ],
    );
  }
}
