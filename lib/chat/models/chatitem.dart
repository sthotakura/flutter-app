class ChatItemModel {
  final String senderId;
  final String message;

  ChatItemModel({this.senderId, this.message});

  static List<ChatItemModel> list = [
    ChatItemModel(
      senderId: "1",
      message: "Hi Nivas",
    ),
    ChatItemModel(
      senderId: "1",
      message: "Sure we can talk tomorrow",
    ),
    ChatItemModel(
      senderId: "1",
      message: "Hi Amrutha",
    ),
    ChatItemModel(
      senderId: "2",
      message: "I'd like to discuss about reports for Amrutha",
    ),
    ChatItemModel(
      senderId: "2",
      message: "Are you available tomorrow at 3PM?",
    ),
    ChatItemModel(
      senderId: "2",
      message: "Hi Anupam",
    ),
  ];
}
