import 'package:chat_app1/core/widgets/customloadingindicatorr.dart';
import 'package:chat_app1/features/chat/presentaion/manager/chat/chat_cubit.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/customappbar.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/formtext.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/messages_user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({
    super.key,
    required this.email,
  });
  final String email;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const CustomAppbar(),
        BlocBuilder<ChatCubit, ChatState>(
          builder: (context, state) {
            if (state is ChatSucess) {
              return state.messageList.isEmpty
                  ? const Expanded(
                      child:
                          SizedBox(child: Center(child: Text("No Messages"))))
                  : Expanded(
                      child: MessageUserList(
                          messages: state.messageList, email: email),
                    );
            } else {
              return const CustomcLoadingIndicator();
            }
          },
        ),
        const SizedBox(height: 10),
        TextFormBody(email: email),
        const SizedBox(height: 5),
      ],
    );
  }
}
