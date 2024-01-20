import 'package:chat_app1/core/utils/styles.dart';
import 'package:chat_app1/features/onboarding/data/model/onboarding.dart';
import 'package:chat_app1/features/onboarding/presentation/manager/onboarding/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageViewOnboarding extends StatelessWidget {
  const PageViewOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return PageView.builder(
      controller: BlocProvider.of<OnboardingCubit>(context).pageController,
      itemCount: onboadingList.length,
      itemBuilder: (context, index) {
        BlocProvider.of<OnboardingCubit>(context).pageIndex(index);
        if (index == onboadingList.length - 1) {
          BlocProvider.of<OnboardingCubit>(context).isfinish = true;
        } else {
          BlocProvider.of<OnboardingCubit>(context).isfinish = false;
        }

        return Column(
          children: [
            const SizedBox(height: 150),
            SizedBox(
              height: 200,
              width: width * .9,
              child: Image.asset(onboadingList[index].image),
            ),
            Text(
              onboadingList[index].title,
              style: Styles.textStyle25,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Opacity(
                opacity: .4,
                child: Text(
                  textAlign: TextAlign.center,
                  onboadingList[index].subtilte,
                  style: Styles.textStyle16,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
