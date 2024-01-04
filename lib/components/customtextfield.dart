import 'package:flutter/material.dart';

// ignore: must_be_immutable
class customtextfield extends StatelessWidget {
  customtextfield({
    super.key,
    required this.hintText,
    this.onchange,
  });
  final String hintText;
  Function(String)? onchange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: const TextStyle(color: Colors.white),
        onChanged: onchange,
        validator: (value) {
          if (value!.isEmpty || value.length < 5) return 'value is wrong';
        },
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white, fontSize: 16),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white))));
  }
}
