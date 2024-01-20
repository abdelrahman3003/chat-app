import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());
  int pagecount = 0;
  PageController pageController = PageController();
  bool isfinish = false;
  next() {
    pagecount++;
    pageController.animateToPage(pagecount,
        duration: const Duration(milliseconds: 900), curve: Curves.ease);
  }

  pageIndex(int index) {
    pagecount = index;
    emit(OnboardingChangeIndex());
  }
}
