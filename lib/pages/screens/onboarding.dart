import 'package:chat_app1/pages/widgets/onboarding/onboarding_buttton.dart';
import 'package:chat_app1/pages/widgets/onboarding/pageview_onboard.dart';
import 'package:chat_app1/pages/widgets/onboarding/spotes.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});
  static String id = "onboarding";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * .8,
                child: const PageViewOnboarding()),
            const Spotes(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: OnboardingButton(),
            )
          ],
        ),
      ),
    );
  }
}
