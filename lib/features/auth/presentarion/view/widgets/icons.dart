import 'package:chat_app1/core/utils/routesApp.dart';
import 'package:chat_app1/features/auth/presentarion/manager/social_signin/social_signin_cubit.dart';
import 'package:chat_app1/features/auth/presentarion/view/widgets/iconauth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class IconsMeida extends StatelessWidget {
  const IconsMeida({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SocialSigninCubit, SocialSigninState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconAuth(onTap: () {}, icon: FontAwesomeIcons.facebook),
            IconAuth(
                onTap: () {
                  BlocProvider.of<SocialSigninCubit>(context).googleSignin();
                  if (state is SocialSigninSuccess) {
                    GoRouter.of(context)
                        .push(RoutesApp.kchat, extra: state.email);
                  }
                },
                icon: FontAwesomeIcons.google),
            IconAuth(onTap: () {}, icon: FontAwesomeIcons.twitter),

            //  IconAuth(icon: FlutterIcons.twitter_ant,),
          ],
        );
      },
    );
  }
}
