import 'package:chat_app1/constants.dart';
import 'package:chat_app1/core/utils/navigate.dart';
import 'package:chat_app1/core/utils/routesApp.dart';
import 'package:chat_app1/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class SignupNavigate extends StatelessWidget {
  const SignupNavigate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Opacity(
          opacity: .6,
          child: Text(
            "Don't have an account ",
            style: Styles.textStyle14,
          ),
        ),
        GestureDetector(
          onTap: () {
            navigateToPage(context, RoutesApp.ksignup);
          },
          child: Text("SignUp",
              style:
                  Styles.textStyle16.copyWith(color: Constant.kprimaryColor2)),
        ),
      ],
    );
  }
}
