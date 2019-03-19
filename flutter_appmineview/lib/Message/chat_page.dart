import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'package:dim/dim.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter_appmineview/Message/decodejson/ChatMessage.dart';

class ChatPage extends StatefulWidget {
  ChatPage({this.user, this.chattinguser, this.dim});

  Dim dim;
  String user;
  String chattinguser;

  @override
  _ChatPageState createState() => new _ChatPageState(user, chattinguser, dim);
}

class _ChatPageState extends State<ChatPage> with TickerProviderStateMixin {
  final String _user;
  bool rightlogin;
  final String _chattinguser;
  final Dim _dim;
  final List<UIChatMessage> _messages = <UIChatMessage>[];
  final TextEditingController _textController = new TextEditingController();
  bool _isComposing = false;
  String _platformVersion = 'Unknown';
  StreamSubscription<dynamic> _messageStreamSubscription;

  _ChatPageState(this._user, this._chattinguser, this._dim) : super();

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await _dim.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    if (_messageStreamSubscription == null) {
      _messageStreamSubscription = _dim.onMessage.listen((dynamic onData) {
        ChatMessageList messages;
        messages = decodenewmessage(onData);
        _listenednewmessage(messages);
      });
    }

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  //dim login
  Future<void> login() async {
    try {
//      var result = await _dim.imLogin(1400184624, _user, _password);

//      print("result of login:" + result);
//      rightlogin = true;
    } on PlatformException {
      logout();
      print("登录  失败");
      rightlogin = false;
    }
  }

  Future<void> logout() async {
    try {
      var result = await _dim.imLogout();
      print(result);
    } on PlatformException {
      print("登出  失败");
    }
  }

  Future<void> sendTextMsg(String user, String text) async {
    try {
      var result = await _dim.sendTextMessages(user, text);
      print(result);
    } on PlatformException {
      print("发送消息失败");
    }
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      _isComposing = false;
    });

    sendTextMsg(_chattinguser, text);

    UIChatMessage message = new UIChatMessage(
        user: _user,
        text: text,
        direction: "right",
        animationController: new AnimationController(
            duration: new Duration(milliseconds: 300), vsync: this));
    setState(() {
      _messages.insert(0, message);
    });
    message.animationController.forward();
  }

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  @override
  void dispose() {
    for (UIChatMessage message in _messages)
      message.animationController.dispose();
    super.dispose();
  }

  void _listenednewmessage(ChatMessageList CM) {
    for (var items in CM.chatMessageList) {
      UIChatMessage message = new UIChatMessage(
        user: items.timConversation.peer,
        text: items.message.text,
        direction: "left",
        animationController: new AnimationController(
          duration: new Duration(milliseconds: 300),
          vsync: this,
        ),
      );
      setState(() {
        _messages.insert(0, message);
      });
      message.animationController.forward();
      print(items.message.identifier);
    }
  }

  Widget _buildTextComposer() {
    return new IconTheme(
        data: new IconThemeData(color: Theme.of(context).accentColor),
        child: new Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: new Row(children: <Widget>[
              new Flexible(
                  child: new TextField(
                controller: _textController,
                onChanged: (String text) {
                  setState(() {
                    _isComposing = text.length > 0;
                  });
                },
                onSubmitted: _handleSubmitted,
                decoration: new InputDecoration.collapsed(hintText: '发送消息'),
              )),
              new Container(
                margin: new EdgeInsets.symmetric(horizontal: 4.0),
                child: Theme.of(context).platform == TargetPlatform.iOS
                    ? new CupertinoButton(
                        child: new Text('发送'),
                        onPressed: _isComposing
                            ? () => _handleSubmitted(_textController.text)
                            : null)
                    : new IconButton(
                        icon: new Icon(Icons.send),
                        onPressed: _isComposing
                            ? () => _handleSubmitted(_textController.text)
                            : null),
              )
            ])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text(
            Convert(_chattinguser),
            style: TextStyle(color: Theme.of(context).accentColor),
          ),
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
        ),
        body: new Container(
            child: new Column(children: <Widget>[
              new Flexible(
                  child: new ListView.builder(
                padding: new EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_, int index) => _messages[index],
                itemCount: _messages.length,
              )),
              new Divider(height: 1.0),
              new Container(
                decoration: new BoxDecoration(
                  color: Theme.of(context).cardColor,
                ),
                child: _buildTextComposer(),
              )
            ]),
            decoration: Theme.of(context).platform == TargetPlatform.iOS
                ? new BoxDecoration(
                    border: new Border(
                        top: new BorderSide(color: Colors.grey[200])))
                : null));
  }
}

class UIChatMessage extends StatelessWidget {
  UIChatMessage(
      {this.text, this.user, this.animationController, this.direction});

  final String direction;
  String user;
  final String text;
  final AnimationController animationController;
  TextStyle headstyle;
  TextStyle messagestyle;
  BoxDecoration chatboxstyle;
  EdgeInsets boxpadding;

  @override
  Widget build(BuildContext context) {
    chatboxstyle = BoxDecoration(
      color: Colors.lightBlueAccent[100],
      borderRadius:
//      BorderRadius.circular(10.0),
          BorderRadius.only(
        topLeft:
            direction == "left" ? Radius.circular(0) : Radius.circular(12.0),
        topRight:
            direction == "right" ? Radius.circular(0) : Radius.circular(12.0),
        bottomLeft: Radius.circular(12.0),
        bottomRight: Radius.circular(12.0),
      ),
    );
    headstyle = TextStyle(color: Colors.white);
    user = Convert(user);
    boxpadding = new EdgeInsets.all(10.0);
    messagestyle = TextStyle(color: Colors.black);

    return new SizeTransition(
      sizeFactor: new CurvedAnimation(
          parent: animationController, curve: Curves.easeOut),
      axisAlignment: 0.0,
      child: new Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: direction == "left"
            ? new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    margin: const EdgeInsets.only(right: 16.0),
                    child: new CircleAvatar(
                        child: new Text(
                      user[0],
                      style: headstyle,
                    )),
                  ),
                  new Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text(user,
                            style: Theme.of(context).textTheme.subhead),
                        new Container(
                          padding: boxpadding,
                          decoration: chatboxstyle,
                          margin: const EdgeInsets.only(top: 5.0),
                          child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 200),child: new Text(
                            text,
                            style: messagestyle,
                          ),)
                          ,
                        )
                      ],
                    ),
                  ),
                ],
              )
            : new Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        new Text(user,
                            style: Theme.of(context).textTheme.subhead),
                        new Container(
                          padding: boxpadding,
                          decoration: chatboxstyle,
                          margin: const EdgeInsets.only(top: 5.0),
                          child: ConstrainedBox(constraints: BoxConstraints(maxWidth: 200), child: new Text(
                            text,
                            style: messagestyle,
                          ),)
                          ,
                        )
                      ],
                    ),
                  ),
                  new Container(
                    margin: const EdgeInsets.only(left: 16.0),
                    child: new CircleAvatar(
                        child: new Text(
                      user[0],
                      style: headstyle,
                    )),
                  ),
                ],
              ),
      ),
    );
  }
}

final ThemeData kIOSTheme = new ThemeData(
  primarySwatch: Colors.orange,
  primaryColor: Colors.grey[100],
  primaryColorBrightness: Brightness.light,
);

final ThemeData kDefaultTheme = new ThemeData(
  primarySwatch: Colors.purple,
  accentColor: Colors.orangeAccent[400],
);

ChatMessageList decodenewmessage(jsonString) {
  jsonString = "{\"chatMessageList\":" + jsonString + "}";
  Map<String, dynamic> parsedjson = json.decode(jsonString);
  ChatMessageList newmessagelist = new ChatMessageList.fromJson(parsedjson);
  return (newmessagelist);
}

String Convert(String str) {
  if ((str == "User1") || (str == "齐昊")) {
    return "齐昊";
  } else if ((str == "User2") || (str == "郭益豪")) {
    return "郭益豪";
  } else if ((str == "User3") || (str == "张至诚")) {
    return "张至诚";
  } else if ((str == "User4") || (str == "徐泽培")) {
    return "徐泽培";
  } else if (str == "C2C") {
    return "职道员工";
  }
  return "error";
}
