import 'package:chat_app1/features/chat/data/model/message.dart';
import 'package:chat_app1/features/chat/data/repo/chat_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatRepoImp implements ChatRepo {
  CollectionReference messages =
      FirebaseFirestore.instance.collection("Messages");
  @override
  Future<List<Message>> getMessage() async {
    List<Message> messageList = [];
    messages.orderBy("date", descending: true).snapshots().listen((event) {
      for (var doc in event.docs) {
        messageList.add(Message.fromjson(doc));
      }
    });
    await Future.delayed(const Duration(seconds: 2));
    return messageList;
  }

  @override
  void sendMessage({required String message, required String id}) {
    messages.add({"message": message, "date": DateTime.now(), 'id': id});
  }
}
