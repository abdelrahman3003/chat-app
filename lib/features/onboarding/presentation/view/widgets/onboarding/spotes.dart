import 'package:chat_app1/features/onboarding/data/model/onboarding.dart';
import 'package:chat_app1/features/onboarding/presentation/manager/onboarding/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Spotes extends StatelessWidget {
  const Spotes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7,
      width: 80,
      child: ListView.builder(
        itemCount: onboadingList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (context, state) {
                return Container(
                  margin: const EdgeInsets.only(left: 5),
                  width: BlocProvider.of<OnboardingCubit>(context).pagecount ==
                          index
                      ? 20
                      : 10,
                  height: 10,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
