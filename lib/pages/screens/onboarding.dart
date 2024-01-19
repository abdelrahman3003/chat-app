import 'package:chat_app1/constant.dart/styles%20copy.dart';
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
          Text(
            "Chat anytime , anyware",
            style: Styles.textStyle25,
          ),
          SizedBox(height: 20),
          Opacity(
            opacity: .4,
            child: Text(
              "PAssing for any information on any screen , any device instaly is mode simple at its subtime",
              style: Styles.textStyle16,
            ),
          ),
        ],
      ),
    );
  }
}
