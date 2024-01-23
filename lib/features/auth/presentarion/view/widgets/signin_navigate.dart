import 'package:chat_app1/core/utils/navigate.dart';
import 'package:chat_app1/core/utils/routesApp.dart';
import 'package:chat_app1/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class SigninNavigate extends StatelessWidget {
  const SigninNavigate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Do have an account ",
          style: Styles.textStyle16,
        ),
        GestureDetector(
          onTap: () {
            navigateToPage(context, RoutesApp.ksignin);
          },
          child: const Text("Sign In", style: Styles.textStyle16),
        ),
      ],
    );
  }
}
