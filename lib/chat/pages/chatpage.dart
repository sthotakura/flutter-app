import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tiktok_clone/chat/models/chatmodel.dart';

import '../conts.dart';
import 'chatitempage.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> list = ChatModel.list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.mainColor,
        title: Text(
          "Chat",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.filter_1,
              color: AppColors.blueColor,
            ),
            onPressed: null,
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: AppColors.darkColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                )),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white54,
                ),
                hintText: "Search",
                hintStyle: TextStyle(
                  color: Colors.white54,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => ChatItemPage(),
                      ),
                    );
                  },
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                      image: DecorationImage(
                        image: ExactAssetImage("assets/default.jpg"),
                      ),
                    ),
                  ),
                  title: Text(
                    list[index].contact.name,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  subtitle: list[index].isTyping
                      ? Row(
                          children: <Widget>[
                            SpinKitThreeBounce(
                              color: AppColors.blueColor,
                              size: 20.0,
                            ),
                          ],
                        )
                      : Row(
                          children: <Widget>[
                            Text(
                              list[index].lastMessage,
                              style: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                            SizedBox(width: 25),
                            Text(
                              list[index].lastMessageTime + " days ago",
                              style: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                          ],
                        ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
        backgroundColor: AppColors.blueColor,
      ),
    );
  }
}