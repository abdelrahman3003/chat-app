import 'package:chat_app1/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ShowSnackbar extends StatelessWidget {
  const ShowSnackbar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SnackBar(
        content: Text(
      text,
      style: Styles.textStyle14,
    ));
  }
}
