import 'package:flutter/material.dart';

class TextfieldAuth extends StatelessWidget {
  const TextfieldAuth({super.key, required this.text, required this.onsave});
  final String text;
  final void Function(String?) onsave;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 60),
        Container(
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.10),
                  spreadRadius: 2,
                  blurRadius: 1,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onSaved: onsave,
              decoration: InputDecoration(
                prefix: const SizedBox(width: 30),
                hintText: text,
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
