import 'package:chat_app1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TextsSections extends StatelessWidget {
  const TextsSections({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Styles.textStyle25,
        ),
        Opacity(
          opacity: .4,
          child: Text(
            subtitle,
            style: Styles.textStyle16,
          ),
        ),
      ],
    );
  }
}
