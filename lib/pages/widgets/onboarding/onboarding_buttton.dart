import 'package:chat_app1/components/custombutton.dart';
import 'package:chat_app1/constant.dart/customButton.dart';
import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return custombutton(bottunname: "Next");
  }
}
