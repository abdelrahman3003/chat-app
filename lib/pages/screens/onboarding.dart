import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  static String id = "onboarding";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: width * .9,
            child: Image.asset("assets/images/onboardingImages/1.PNG"),
          ),
        ],
      ),
    );
  }
}
