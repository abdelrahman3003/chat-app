import 'package:chat_app1/core/utils/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtom extends StatelessWidget {
  CustomButtom(
      {super.key,
      required this.backgroundcolor,
      required this.textcolor,
      required this.text,
      this.borderRadius,
      required this.onPressed,
      this.width = double.infinity,
      this.fontSizetext = 20});
  final Color backgroundcolor;
  final Color textcolor;
  final Function()? onPressed;
  BorderRadius? borderRadius;
  final String text;
  final double width;
  final double fontSizetext;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(10)),
        ),
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(
              color: textcolor,
              fontWeight: FontWeight.bold,
              fontSize: fontSizetext),
        ),
      ),
    );
  }
}
