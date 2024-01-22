import 'package:chat_app1/core/widgets/customloadingindicatorr.dart';
import 'package:chat_app1/features/chat/presentaion/manager/chat/chat_cubit.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/formtext.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/messages_friend_list.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/messages_user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //   MessageUserList(messages: state.messageList),
        //  MessagesFriendList(messages: state.messageList),
        const SizedBox(height: 3),
        const TextFormBody(),
        const SizedBox(height: 5),
      ],
    );
  }
}
