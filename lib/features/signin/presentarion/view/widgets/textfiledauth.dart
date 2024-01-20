import 'package:flutter/material.dart';

class TextfieldAuth extends StatelessWidget {
  const TextfieldAuth({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.15),
              spreadRadius: 2,
              blurRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: TextFormField(
            decoration: InputDecoration(
          hintText: "                 $text",
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none),
        )));
  }
}
