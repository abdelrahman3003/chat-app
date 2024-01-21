import 'package:bloc/bloc.dart';
import 'package:chat_app1/features/chat/data/model/message.dart';
import 'package:chat_app1/features/chat/data/repo/chat_repo_imp.dart';
import 'package:meta/meta.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
  ChatRepoImp chatRepo = ChatRepoImp();
  sendMessage({required String message, required String id}) {
    chatRepo.sendMessage(message: message, id: id);
  }

  Future getMessages() async {
    var result = chatRepo.getMessage();
    emit(ChatSucess(messageList: result));
  }
}
