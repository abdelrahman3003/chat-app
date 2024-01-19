import 'package:chat_app1/pages/widgets/onboarding/onboarding_buttton.dart';
import 'package:chat_app1/pages/widgets/onboarding/pageview_onboard.dart';
import 'package:chat_app1/pages/widgets/onboarding/spotes.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  static String id = "onboarding";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        SizedBox(height: 150),
        Expanded(child: PageViewOnboarding()),
        Spotes(),
        OnboardingButton()
      ],
    ));
  }
}
