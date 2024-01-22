import 'package:chat_app1/features/chat/data/model/message.dart';
import 'package:chat_app1/features/chat/data/repo/chat_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit(this.chatRepo) : super(ChatInitial());
  final ChatRepo chatRepo;
  void sendMessage({required String message, required String id}) {
    chatRepo.sendMessage(message: message, id: id);
  }

  void getMessage() async {
    var result = await chatRepo.getMessage();
    print("=============== cubit ${result.length}");
    emit(ChatSucess(messageList: result));
  }
}





// import 'package:bloc/bloc.dart';
// import 'package:chat_app1/features/chat/data/model/message.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:meta/meta.dart';

// part 'chat_state.dart';

// class ChatCubit extends Cubit<ChatState> {
//   ChatCubit() : super(ChatInitial());
//   CollectionReference messages =
//       FirebaseFirestore.instance.collection("Messages");
//   void sendMessage({required String message, required String id}) async {
//     await messages.add({"message": message, "date": DateTime.now(), 'id': id});
//   }

//   void getMessage() {
//     List<Message> messageList = [];
//     messages.orderBy("date", descending: true).snapshots().listen((event) {
//       for (var doc in event.docs) {
//         messageList.add(Message.fromjson(doc));

//         emit(ChatSucess(messageList: messageList));
//       }
//       print("=======${messageList.length}");
//     });
//   }
// }
