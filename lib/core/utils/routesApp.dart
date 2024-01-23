import 'package:chat_app1/features/auth/data/repo/auth_repo/auth_repo_imp.dart';
import 'package:chat_app1/features/auth/presentarion/manager/signin/signin_cubit.dart';
import 'package:chat_app1/features/auth/presentarion/manager/signup/signup_cubit.dart';
import 'package:chat_app1/features/auth/presentarion/view/signup.dart';
import 'package:chat_app1/features/chat/data/repo/chat_repo_imp.dart';
import 'package:chat_app1/features/chat/presentaion/manager/chat/chat_cubit.dart';
import 'package:chat_app1/features/chat/presentaion/view/chat.dart';
import 'package:chat_app1/features/onboarding/presentation/view/onboarding.dart';
import 'package:chat_app1/features/auth/presentarion/view/signin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class RoutesApp {
  static const konboarding = "/onboarding";
  static const ksignin = "/signin";
  static const ksignup = "/signup";
  static const kchat = "/chat";

  static final router = GoRouter(routes: [
    GoRoute(
      path: konboarding,
      builder: (context, state) => const OnBoarding(),
    ),
    GoRoute(
      path: "/",
      builder: (context, state) => BlocProvider(
        create: (context) => SigninCubit(AuthRepoImp()),
        child: const Signin(),
      ),
    ),
    GoRoute(
      path: ksignup,
      builder: (context, state) => BlocProvider(
        create: (context) => SignupCubit(AuthRepoImp()),
        child: const Signup(),
      ),
    ),
    GoRoute(
      path: kchat,
      builder: (context, state) => BlocProvider(
        create: (context) => ChatCubit(ChatRepoImp())..getMessage(),
        child: Chat(email: state.extra as String),
      ),
    ),
  ]);
}
