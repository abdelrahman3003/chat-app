import 'package:chat_app1/features/chat/data/model/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  CollectionReference messages =
      FirebaseFirestore.instance.collection("Messages");
  void sendMessage({required String message, required String id}) async {
    await messages.add({"message": message, "date": DateTime.now(), 'id': id});
  }

  void getMessage() {
    messages.orderBy("date", descending: false).snapshots().listen((event) {
      List<Message> messageList = [];
      for (var doc in event.docs) {
        messageList.add(Message.fromjson(doc));
      }

      emit(ChatSucess(messageList: messageList));
    });
  }
}
