import 'package:chat_app1/features/auth/presentarion/view/signup.dart';
import 'package:chat_app1/features/onboarding/presentation/view/onboarding.dart';
import 'package:chat_app1/features/auth/presentarion/view/signin.dart';
import 'package:go_router/go_router.dart';

abstract class RoutesApp {
  static const konboarding = "/onboarding";
  static const ksignin = "/signin";
  static const ksignup = "/signup";

  static final router = GoRouter(routes: [
    GoRoute(
      path: konboarding,
      builder: (context, state) => const OnBoarding(),
    ),
    GoRoute(
      path: ksignin,
      builder: (context, state) => const Signin(),
    ),
    GoRoute(
      path: "/",
      builder: (context, state) => const Signup(),
    ),
  ]);
}
