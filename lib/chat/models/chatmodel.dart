import 'contactmodel.dart';

class ChatModel {
  final bool isTyping;
  final String lastMessage;
  final String lastMessageTime;
  final ContactModel contact;

  ChatModel(
      {this.isTyping, this.lastMessage, this.lastMessageTime, this.contact});

  static List<ChatModel> list = [
    ChatModel(
      isTyping: true,
      lastMessage: "hello!",
      lastMessageTime: "2d",
      contact: ContactModel(name: "Amrutha"),
    ),
    ChatModel(
      isTyping: false,
      lastMessage: "Sure, no problem Anurag!",
      lastMessageTime: "2d",
      contact: ContactModel(name: "Anupam"),
    ),
    ChatModel(
      isTyping: false,
      lastMessage: "thank you Nivas!",
      lastMessageTime: "2d",
      contact: ContactModel(name: "Nivas"),
    ),
  ];
}
