import 'package:chat_app1/features/onboarding/presentation/view/onboarding.dart';
import 'package:go_router/go_router.dart';

abstract class RoutesApp {
  static const konboarding = "/onboarding";

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnBoarding(),
    ),
  ]);
}
