import 'package:chat_app1/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class AuthNavigatorTo extends StatelessWidget {
  const AuthNavigatorTo(
      {super.key, required this.authtext, required this.auth, this.onTap});
  final String authtext;
  final String auth;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          authtext,
          style: Styles.textStyle16,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(auth, style: Styles.textStyle16),
        ),
      ],
    );
  }
}
