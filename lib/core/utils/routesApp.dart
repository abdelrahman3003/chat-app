import 'package:chat_app1/features/onboarding/presentation/view/onboarding.dart';
import 'package:chat_app1/features/signin/presentarion/view/signin.dart';
import 'package:go_router/go_router.dart';

abstract class RoutesApp {
  static const konboarding = "/onboarding";
  static const ksignin = "/signin";

  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Signin(),
    ),
    GoRoute(
      path: konboarding,
      builder: (context, state) => const OnBoarding(),
    ),
  ]);
}
