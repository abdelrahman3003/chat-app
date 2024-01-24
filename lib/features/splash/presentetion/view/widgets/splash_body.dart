import 'package:chat_app1/features/splash/presentetion/view/widgets/splash_logo.dart';
import 'package:chat_app1/features/splash/presentetion/view/widgets/textAnimatio.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganmation;

  @override
  void initState() {
    animate();
    // navigateToPage(context, RoutesApp.ksignin);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SplashLogo(),
          TextAnimation(slidinganmation: slidinganmation),
        ],
      ),
    );
  }

  void animate() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidinganmation =
        Tween<Offset>(begin: const Offset(0, 5), end: const Offset(0, -1.3))
            .animate(animationController);
    animationController.forward();
    slidinganmation.addListener(() {});
  }
}
