import 'package:bloc/bloc.dart';
import 'package:chat_app1/constant.dart/constant.dart';
import 'package:chat_app1/models/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  CollectionReference messages =
      FirebaseFirestore.instance.collection("Messages");
  void sendMessage({required String message, required String id}) async {
    await messages.add({kMessage: message, kdate: DateTime.now(), 'id': id});
  }

  void getMessage() {
    messages.orderBy("date", descending: true).snapshots().listen((event) {
      List<Message> messageList = [];
      for (var doc in event.docs) {
        messageList.add(Message.fromjson(doc));
        print("doc====${doc.data()}");
        emit(ChatSucess(messageList: messageList));
      }
    });
  }
}
