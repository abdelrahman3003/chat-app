import 'package:chat_app1/features/chat/data/model/message.dart';
import 'package:chat_app1/features/chat/presentaion/manager/chat/chat_cubit.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/send_icon.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/textformfiledchat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFormBody extends StatefulWidget {
  const TextFormBody({
    super.key,
  });

  @override
  State<TextFormBody> createState() => _TextFormBodyState();
}

class _TextFormBodyState extends State<TextFormBody> {
  GlobalKey<FormState> formastae = GlobalKey<FormState>();
  late Message message;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formastae,
      child: Stack(clipBehavior: Clip.none, children: [
        TextFormfieldChat(
          onSaved: (value) {
            message.message = value!;
          },
        ),
        Positioned(
            right: .5,
            top: -10,
            child: SendIcon(
              onTap: () {
                formastae.currentState!.save();
                BlocProvider.of<ChatCubit>(context)
                    .sendMessage(message: message.message!, id: message.id!);
              },
            )),
      ]),
    );
  }
}
