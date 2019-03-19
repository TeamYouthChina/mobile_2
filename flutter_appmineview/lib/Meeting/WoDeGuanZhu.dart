import 'package:flutter/material.dart';
import 'package:flutter_appmineview/Meeting/MeetingOn.dart';

class WoDeGuanZhu extends StatefulWidget {
  @override
  _WoDeGuanZhuState createState() => _WoDeGuanZhuState();
}

class _WoDeGuanZhuState extends State<WoDeGuanZhu> {

  FontWeight fontW;
  double fontS;

  Widget _building() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  '正在进行',
                  style: TextStyle(color: Color(0xFF454F69), fontSize: fontS,fontWeight: fontW),
                ),
              ),
            ],
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 120, maxHeight: 180),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5, // item 的个数
//            itemExtent: 50.0, // 如果为非null，则强制子项在滚动方向上具有给定范围
              itemBuilder: (BuildContext context, int index) {
                return new MeetingCard(
                  On: true,
                );
              }),
        )
      ],
    );
  }

  Widget _buildoff() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                '未开始',
                style: TextStyle(color: Color(0xFF454F69), fontSize: fontS, fontWeight: fontW),
              ),
            ),
          ],
        ),
        ListView.builder(
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return new MeetingCard(
              maxwidth: MediaQuery.of(context).size.width - 10,
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    fontW = FontWeight.w600;
    fontS = 16;
    return Container(
      color: Colors.grey[200],
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          _building(),
          _buildoff(),
        ],
      ),
    );
  }
}

class MeetingCard extends StatefulWidget {
  String title;
  String text;
  String foot1;
  String foot2;
  String foot3;
  String foot4;
  double maxwidth;
  bool On;

  MeetingCard(
      {this.text,
      this.title,
      this.foot1,
      this.foot2,
      this.foot3,
      this.foot4,
      this.maxwidth,
      this.On});

  @override
  _MeetingCardState createState() => _MeetingCardState(
        text: text,
        title: title,
        foot1: foot1,
        foot2: foot2,
        foot3: foot3,
        foot4: foot4,
        maxwidth: maxwidth,
        On: On,
      );
}

class _MeetingCardState extends State<MeetingCard> {
  String title;
  String text;
  String foot1;
  String foot2;
  String foot3;
  String foot4;
  double maxwidth;
  bool On;

  _MeetingCardState(
      {this.text,
      this.title,
      this.foot1,
      this.foot2,
      this.foot3,
      this.foot4,
      this.maxwidth,
      this.On});

  TextStyle titlestyle = null;
  TextStyle textstyle = null;
  Color footcolor = null;
  double footsize = null;
  double footiconsize = null;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    On = On ?? false;
    foot1 = foot1 ?? "已经开始1小时";
    foot2 = foot2 ?? "1765人围观";
    foot3 = foot3 ?? "foot3";
    foot4 = foot4 ?? "foot4";
    title = title ?? "如何通过VR在地铁站的介入拓宽人们的体验？";
    text = text ?? "参与者：郭老师，顾老师，美老师，美老师";
    titlestyle =
        titlestyle ?? TextStyle(color: Color(0xFF454F69), fontSize: 16);
    textstyle = textstyle ?? TextStyle(color: Color(0xFF8D9AAF), fontSize: 12);
    footcolor = footcolor ?? Color(0xFF8D9AAF);
    footsize = 10;
    footiconsize = 15;
    maxwidth = maxwidth ?? MediaQuery.of(context).size.width - 10;

    return Card(
      color: Theme.of(context).primaryColor,
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
      child: ConstrainedBox(
        constraints: BoxConstraints(
            maxHeight: 180, minHeight: 120, maxWidth: maxwidth, minWidth: 250),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(3.0),
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: Image.asset('image/food.jpg'),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: BoxConstraints(maxWidth: maxwidth - 140),
                          child: GestureDetector(
                            onTap: On
                                ? () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MeetingOn(),
                                      ),
                                    );
                                  }
                                : null,
                            child: Text(
                              title,
                              style: titlestyle,
                              overflow: TextOverflow.clip,
                              maxLines: 2,
                            ),
                          ),
                        ),
                        ConstrainedBox(
                          constraints:
//                          BoxConstraints.expand(),
                              BoxConstraints(maxWidth: maxwidth - 140),
                          child: Text(
                            text,
                            style: textstyle,
                            overflow: TextOverflow.clip,
                            maxLines: 2,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          foot1,
                          style:
                              TextStyle(color: footcolor, fontSize: footsize),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color(0xFFF0F3FA),
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.height)),
                        child: Text(
                          foot2,
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: footsize),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.favorite_border,
                              size: footiconsize,
                              color: footcolor,
                            ),
                            Text(
                              "收藏",
                              style: TextStyle(
                                  color: footcolor, fontSize: footsize),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.share,
                              size: footiconsize,
                              color: footcolor,
                            ),
                            Text(
                              "转发",
                              style: TextStyle(
                                  color: footcolor, fontSize: footsize),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
