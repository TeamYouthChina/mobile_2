import 'package:flutter/material.dart';
import 'package:dim/dim.dart';
import 'Message/Chatlist.dart';

class MessagePage extends StatefulWidget {
  String user;
  Dim dim;

  MessagePage({this.dim, this.user});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MessagePageState(
      dim: dim,
      user: user,
    );
  }
}

class MessagePageState extends State<MessagePage> {
  String user;
  Dim dim;

  MessagePageState({this.dim, this.user});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if ((user == null) || (dim == null)) {
      return Center(
        child: Text('contactview'),
      );
    }
    return ChatList(dim: dim,user: user,);
  }
}
