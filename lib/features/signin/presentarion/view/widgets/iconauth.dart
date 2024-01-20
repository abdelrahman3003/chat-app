import 'package:flutter/material.dart';

class IconAuth extends StatelessWidget {
  const IconAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.25),
              spreadRadius: 2,
              blurRadius: 3,
              offset: const Offset(0, 3),
            ),
          ],
          color: Colors.white),
      child: Icon(
        Icons.person,
        color: Colors.blue,
      ),
    );
  }
}
