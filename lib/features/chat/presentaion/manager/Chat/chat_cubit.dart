import 'package:bloc/bloc.dart';
import 'package:chat_app1/features/chat/data/model/message.dart';
import 'package:meta/meta.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());
}
