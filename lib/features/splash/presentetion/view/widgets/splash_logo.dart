import 'package:chat_app1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Colors.white,
            width: 1.5,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "T",
                style: Styles.textStyle30.copyWith(fontSize: 35),
              ),
              const Text(
                "emsah",
                style: Styles.textStyle30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
