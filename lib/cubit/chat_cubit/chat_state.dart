part of 'chat_cubit.dart';

@immutable
sealed class ChatState {}

final class ChatInitial extends ChatState {}

final class ChatSucess extends ChatState {
  final List<Message> messageList;

  ChatSucess({required this.messageList});
}
