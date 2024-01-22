import 'package:chat_app1/features/chat/data/model/message.dart';

abstract class ChatRepo {
  void sendMessage({required String message, required String id}) {}
  Future<List<Message>> getMessage();
}
