import 'package:flutter/material.dart';
import 'package:flutter_appmineview/login/style/theme.dart' as theme;

class StartMeeting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: theme.Colors.meetingbackgroundcolor,
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          primary: true,
          shrinkWrap: true,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF8D9AAF),
                    size: fontsize1,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                "发起圆桌",
                style: TextStyle(color: color1, fontSize: fontsize1),
              ),
            ),
            new Input(
              title: "圆桌标题",
              hinttext: "请输入圆桌标题",
            ),
            new Input(
              title: "圆桌简介",
              hinttext: "简单介绍一下圆桌内容",
              hight: 200,
            ),
            new Invitation(),
            new Input(
              title: "开始时间",
              hinttext: "设置圆桌的开始时间",
              icon: Icon(
                Icons.date_range,
                color: color3,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width/5,
              padding: EdgeInsets.all(10),
              child: new RaisedButton(
                elevation: 2,
                onPressed: (){
                  Navigator.of(context).pop();
                },
                color: color5,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '发起圆桌',
                  style: TextStyle(color: color1, fontSize: fontsize3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Invitation extends StatefulWidget {
  @override
  _InvitationState createState() => _InvitationState();
}

class _InvitationState extends State<Invitation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '邀请嘉宾',
            style: TextStyle(color: color2, fontSize: fontsize3),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: color3,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)),
            width: MediaQuery.of(context).size.width,
            height: null,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 0),
                      child: CircleAvatar(
                        backgroundColor: color5,
                        child: Icon(
                          Icons.people,
                          color: color1,
                        ),
                      ),
                    ),
                    Text(
                      '邀请嘉宾',
                      style: TextStyle(color: color1, fontSize: fontsize2),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    '已邀请0位',
                    style: TextStyle(color: color1, fontSize: fontsize3),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Input extends StatelessWidget {
  @required
  String title;
  @required
  String hinttext;
  Icon icon;
  double hight;

  Input({this.title, this.hinttext, this.hight, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(color: color2, fontSize: fontsize3),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: color4,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5)),
            width: MediaQuery.of(context).size.width,
            height: hight ?? null,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  hinttext,
                  overflow: TextOverflow.clip,
                  maxLines: hight == null ? 1 : 100,
                  style: TextStyle(color: color3, fontSize: fontsize3),
                ),
                icon == null ? Text("") : icon,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final Color color1 = Color(0xFFFFFFFF);
final Color color2 = Color(0xFFDBE5F7);
final Color color3 = Color(0xFF5D647F);
final Color color4 = Color(0xFF3B4156);
final Color color5 = Color(0xFF546AE8);

final double fontsize1 = 18;
final double fontsize2 = 16;
final double fontsize3 = 14;
