import 'package:chat_app1/constant.dart/constant.dart';
import 'package:chat_app1/constant.dart/styles%20copy.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtom extends StatelessWidget {
  CustomButtom(
      {super.key,
      required this.backgroundcolor,
      required this.text,
      this.borderRadius,
      required this.onPressed,
      this.height = 27,
      this.width = 65});
  final Color backgroundcolor;
  final double height;
  final double width;
  final Function()? onPressed;
  BorderRadius? borderRadius;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(25)),
        ),
        child: Text(
          text,
          style: Styles.textStyle14.copyWith(
            color:
                backgroundcolor == kprimaryColor ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: width == 65 ? 11 : 20,
          ),
        ),
      ),
    );
  }
}
