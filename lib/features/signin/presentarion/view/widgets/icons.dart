import 'package:chat_app1/features/signin/presentarion/view/widgets/iconauth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconsMeida extends StatelessWidget {
  const IconsMeida({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconAuth(icon: FontAwesomeIcons.facebook),
        IconAuth(icon: FontAwesomeIcons.google),
        IconAuth(icon: FontAwesomeIcons.twitter),

        //  IconAuth(icon: FlutterIcons.twitter_ant,),
      ],
    );
  }
}
