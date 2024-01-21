import 'package:flutter/material.dart';

class TextFormfieldChat extends StatelessWidget {
  const TextFormfieldChat({
    super.key,
    required this.onSaved,
  });
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: TextFormField(
              onSaved: onSaved,
              decoration: InputDecoration(
                prefix: const SizedBox(width: 30),
                hintText: "Type",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none),
              ),
            )),
      ],
    );
  }
}
