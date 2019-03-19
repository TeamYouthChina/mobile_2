import 'package:flutter/material.dart';
import 'package:flutter_appmineview/login/style/theme.dart' as theme;

class MeetingOn extends StatelessWidget {
  List<String> jiabin = ['郭老师', '郭老师', '郭老师'];
  List<String> text = ['IBM资深前端开发师', 'IBM资深前端开发师', 'IBM资深前端开发师'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: theme.Colors.meetingbackgroundcolor,
      body: Container(
        child: ListView(
          primary: true,
          shrinkWrap: true,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            Meetinglogo(),
            JiabinList(
              name: jiabin,
              text: text,
            ),
            MeetingDiscribe(),
          ],
        ),
      ),
    );
  }
}

class Meetinglogo extends StatefulWidget {
  @override
  _MeetinglogoState createState() => _MeetinglogoState();
}

class _MeetinglogoState extends State<Meetinglogo> {
  @override
  Widget build(BuildContext context) {
    TimeOfDay time = TimeOfDay.now();
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "正在直播",
                    style: TextStyle(color: Color.fromRGBO(141, 154, 175, 1)),
                  ),
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset('assets/icons/MeetingOn.png'),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(
                top: (MediaQuery.of(context).size.width - 100) / 3),
            child: Center(
              widthFactor: 2,
              heightFactor: 2,
              child: Column(
                children: <Widget>[
                  Text(time.hour.toString() + ":" + time.minute.toString()),
                  Container(
                    height: (MediaQuery.of(context).size.width - 100) / 2,
                    width: (MediaQuery.of(context).size.width - 100) / 2,
                    child: Text(
                      '如何通过VR在地铁站的介入拓宽人们的体验？',
                      overflow: TextOverflow.clip,
                      maxLines: 5,
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            height: MediaQuery.of(context).size.width - 100,
            width: MediaQuery.of(context).size.width - 100,
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                  image: AssetImage('image/Meetinglogo.png'),
                  fit: BoxFit.cover),
            ),
            margin: const EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}

class JiabinList extends StatelessWidget {
  List<String> name;
  List<String> text;
  int number;

  JiabinList({this.name, this.text});

  @override
  Widget build(BuildContext context) {
    number = name.length;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "嘉宾列表($number)",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: number,
              itemBuilder: (BuildContext context, int idx) {
                return Jiabin(
                  user: name[idx],
                  text: text[idx],
                );
              }),
        ],
      ),
    );
  }
}

class Jiabin extends StatefulWidget {
  String user;
  final String text;

  Jiabin({
    this.text,
    this.user,
  });

  @override
  _JiabinState createState() => _JiabinState(text: text, user: user);
}

class _JiabinState extends State<Jiabin> {
  _JiabinState({
    this.text,
    this.user,
  });

  String user;
  final String text;
  TextStyle headstyle;
  TextStyle namestyle;
  TextStyle messagestyle;
  BoxDecoration chatboxstyle;
  EdgeInsets boxpadding;
  Color maincolor;

  @override
  Widget build(BuildContext context) {
    maincolor = Colors.white;
    chatboxstyle = new BoxDecoration(color: Colors.transparent);
    headstyle = new TextStyle(color: maincolor);
    messagestyle = new TextStyle(color: maincolor);
    namestyle = new TextStyle(color: maincolor);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Container(
                margin: const EdgeInsets.only(right: 10.0),
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
                    new Text(user, style: namestyle),
                    new Container(
                      padding: boxpadding,
                      decoration: chatboxstyle,
                      margin: const EdgeInsets.only(bottom: 3.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 200),
                        child: new Text(
                          text,
                          style: messagestyle,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              RaisedButton.icon(
                color: Color(0xFF546AE8),
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Color(0xFFFFFFFF),
                ),
                label: Text(
                  "关注",
                  style: TextStyle(color: maincolor),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0),
                    borderRadius: BorderRadius.circular(50)),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MeetingDiscribe extends StatelessWidget {
  Text headtext;
  Text datetext;
  Text detailtext;
  String details =
      "如何通过VR在地铁站的介入拓宽人们的体验？下面是一些简介，希望大家多多参与！如何通过VR在地铁站的介入拓宽人们的体验？下面是一些简介，希望大家多多参与！";
  DateTime date;

  @override
  Widget build(BuildContext context) {
    date = new DateTime(2019, 1, 9);
    headtext = new Text(
      "圆桌介绍",
      style: TextStyle(color: Colors.white, fontSize: 16),
    );
    datetext = new Text(
      "${date.year}年${date.month}月${date.day}日",
      style: TextStyle(color: Color(0xFF8D9AAF), fontSize: 12),
    );
    detailtext = new Text(
      details,
      style: TextStyle(color: Colors.white, fontSize: 14),
      overflow: TextOverflow.clip,
      maxLines: 100,
    );
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          headtext,
          datetext,
          Container(
            child: detailtext,
          )
        ],
      ),
    );
  }
}
