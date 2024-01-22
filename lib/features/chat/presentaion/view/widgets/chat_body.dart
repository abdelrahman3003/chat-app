import 'package:chat_app1/core/widgets/customloadingindicatorr.dart';
import 'package:chat_app1/features/chat/presentaion/manager/chat/chat_cubit.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/formtext.dart';
import 'package:chat_app1/features/chat/presentaion/view/widgets/messages_user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        if (state is ChatSucess) {
          return state.messageList.isEmpty
              ? const Center(child: Text("No Messages"))
              : Column(
                  children: [
                    Expanded(
                      child: MessageUserList(messages: state.messageList),
                    ),
                    const SizedBox(height: 10),
                    const TextFormBody(),
                    const SizedBox(height: 5),
                  ],
                );
        } else {
          return const CustomcLoadingIndicator();
        }
      },
    );
  }
}
