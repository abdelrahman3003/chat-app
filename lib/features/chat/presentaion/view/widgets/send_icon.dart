import 'package:flutter/material.dart';

class SendIcon extends StatelessWidget {
  const SendIcon({
    super.key,
    this.onTap,
  });
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 3),
              ),
            ],
            color: Colors.white),
        child: const Icon(
          Icons.send,
          color: Colors.blue,
        ),
      ),
    );
  }
}
