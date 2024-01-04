import 'package:chat_app1/cubit/chat_cubit/chat_cubit.dart';
import 'package:chat_app1/models/message.dart';
import 'package:chat_app1/constant.dart/constant.dart';
import 'package:chat_app1/pages/widgets/messege.dart';
import 'package:chat_app1/pages/widgets/textformfiledchat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class Chat extends StatelessWidget {
  Chat({super.key});
  static String id = "Chat";

  String? message;
  List<Message> messageslist = [];
  TextEditingController controller = TextEditingController();
  final scrollcontroller = ScrollController();

  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Scholar"),
            Container(width: 50, height: 50, child: Image.asset(klogo)),
          ],
        ),
        backgroundColor: kprimaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            BlocConsumer<ChatCubit, ChatState>(
              listener: (context, state) {
                if (state is ChatSucess) {
                  messageslist = state.messageList;
                }
              },
              builder: (context, state) {
                return Expanded(
                  child: ListView.builder(
                    reverse: true,
                    controller: scrollcontroller,
                    itemCount: messageslist.length,
                    itemBuilder: (context, index) {
                      return messageslist[index].id == id
                          ? messageUser(message: messageslist[index])
                          : messageFriend(message: messageslist[index]);
                    },
                  ),
                );
              },
            ),
            TextFormfieldChat(
              controller: controller,
              onSubmitted: (value) {
                message = value;
              },
              onPressed: () {
                BlocProvider.of<ChatCubit>(context)
                    .sendMessage(message: message!, id: id);
                controller.clear();
                scrollcontroller.animateTo(0,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.fastOutSlowIn);
              },
            )
          ],
        ),
      ),
    );
  }
}
