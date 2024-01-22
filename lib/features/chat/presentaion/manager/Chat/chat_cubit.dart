import 'package:bloc/bloc.dart';
import 'package:chat_app1/features/chat/data/model/message.dart';
import 'package:chat_app1/features/chat/data/repo/chat_repo_imp.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit(this.chatRepo) : super(ChatInitial());
  final ChatRepoImp chatRepo;
  CollectionReference messages =
      FirebaseFirestore.instance.collection("messages");

  sendMessage({required String message, required String id}) {
    chatRepo.sendMessage(message: message, id: id);
  }

  getMessage() async {
    var result = await chatRepo.getMessage();
    emit(ChatSucess(messageList: result));
  }

  clearText(String text) {
    text = "";
    emit(ChatClearText());
  }
}
