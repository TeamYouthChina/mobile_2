import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:dim/dim.dart';
import 'package:flutter_appmineview/Message/decodejson/CoversationMessage.dart';
import 'package:flutter_appmineview/Message/chat_page.dart';

import 'dart:convert';

class ChatList extends StatefulWidget {
  final String user;
  final Dim dim;

  ChatList({this.dim, this.user});

  @override
  State createState() => new _ChatListState(dim: dim, user: user);
}

class _ChatListState extends State<ChatList> {
  String user;
  Dim dim;
  bool init = false;
  bool flapping = true;

  ConversationList conversationList = new ConversationList();

  _ChatListState({this.dim, this.user}) : super();

  @override
  void initState() {
//    conversationList = new ConversationList();

    try {
//      print("get pre");
      getConversations();
//      print("get suf");
    } on PlatformException {
      print("获取会话列表失败");
    }
    super.initState();
//    print(conversationList.conversationList.length);
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> logout() async {
    try {
      var result = await dim.imLogout();
      print(result);
    } on PlatformException {}
  }

  Future<void> getConversations() async {
    try {
      var result = await dim.getConversations();
      result = "{\"conversationList\":" + result + "}";
      print("get conversation:" + result);
      final Map<String, dynamic> Jsoncode = json.decode(result);
      conversationList = new ConversationList.fromJson(Jsoncode);
      setState(() {
        init = true;
      });
    } on PlatformException {
      print("获取会话列表失败");
    }
  }

  Widget _buildchatlist(ConversationList list) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFE0E0E0),
      ),
      child: ListView.builder(
        itemCount: list.conversationList.length,
        itemBuilder: (context, idx) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(bottom: BorderSide(color: Color(0xFFEEEEEE))),
            ),
            child: ListTile(
              leading: Container(
                margin: const EdgeInsets.only(right: 5.0),
                child: new CircleAvatar(
                  child: new Text(
                    Convert(list.conversationList[idx].peer)[0],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              title: Text(Convert(list.conversationList[idx].peer)),
              subtitle: Text(Convert(list.conversationList[idx].type)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                          dim: dim,
                          user: user,
                          chattinguser: list.conversationList[idx].peer,
                        ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    if (!init) {
      return new Center(
        child: Text("Waiting for loading..."),
      );
    }
    return new Scaffold(
      appBar: new AppBar(
        title: Center(
          child: new Text("消息",
          style: TextStyle(color: Theme.of(context).accentColor),),
        ),
      ),
      body: _buildchatlist(conversationList),
//      floatingActionButton: new FloatingActionButton(
//        onPressed: () {},
//        child: new Icon(Icons.add),
//      ),
    );
  }
}
