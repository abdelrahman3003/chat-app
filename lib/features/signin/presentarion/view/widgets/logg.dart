import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: Image.asset(image, fit: BoxFit.fill),
    );
  }
}
