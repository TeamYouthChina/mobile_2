import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appmineview/Explore/UserName.dart';

// ignore: must_be_immutable
class AnswerPage extends StatelessWidget {
  String title;

  AnswerPage(String title) {
    this.title = title;
  }

  final String comment =
      '        在今天的中国互联网行业，腾讯拥有近乎垄断的平台，庞大的人气，源源不断的现金流，一般的小问题对腾讯是构成不了威'
      '胁的。那么，腾讯的问题在哪里？我们可以回顾一下微软的历史。在1990年代的科技界，微软同样是这么一家神一般存在的巨头。他有钱，有人才，'
      '有技术，有垄断的平台，貌似战无不胜。但微软也不是通吃的，在一些小的细分行业，比如PS绘图软件，财务软件，人家就不做。不是不想做，而是精力不允许太分散。'
      '对于一家科技巨头来说，永远要记住一件事——我之所以拥有今天的江湖地位，是因为我有战略眼光，或者说，我踩到了狗屎运，抓住了技术发展的'
      '主流趋势。”\n        吐槽一句，尼玛，要不是那次伟大的空手套白狼，在一无所有的情况下拿下了IBM的操作系统外包合同，哪会有微软今日的地位啊。'
      '要知道，在一个时代，主流技术应用可以带来80%的商业利润，其他的边角料技术就只能获得剩余的20%而已。这就是技术领域的二八法则。在软件'
      '行业，操作系统平台就是那个八，其他的应用软件就是那个二。微软已经踩到了一次狗屎运，得到了软件行业80%的利润，现在，他所需要做的，就是'
      '保持住这个地位。但技术不是静止不动的，不断有新的技术生长出来，在成千上万种技术中，有一种会长成参天大树，利润无比丰厚，取代原来的技术平台，'
      '成为新的主流趋势。1995年之后，科技行业进入互联网时代。林林总总的技术像小草一样生长出来。bbs，电子邮件，即时通信，新闻门户……哪一个才是互联'
      '网时代的主流趋势呢？嗯，比尔盖茨一定很头痛。';

  List<Widget> _sliverBuilder(BuildContext context, bool innerBoxIsScrolled) {
    return <Widget>[
      SliverAppBar(
        leading: new IconButton(
            icon: new Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        centerTitle: true,
        //标题居中
        expandedHeight: 200.0,
        //展开高度200
        floating: false,
        //不随着滑动隐藏标题
        pinned: false,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          background: Image.asset(
            "image/picture.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new NestedScrollView(
        headerSliverBuilder: _sliverBuilder,
        body: ListView(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(left: 20.0),
              child: new Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
//           limit the margin for a long line
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width,
                    ),
                    child: Text(
                      title,
                      overflow: TextOverflow.clip,
                      maxLines: 3,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0,
                          color: Color.fromRGBO(67, 79, 105, 1)),
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              width: 40,
              padding: EdgeInsets.only(left: 5.0),
              child: FlatButton(
                onPressed: () {
                  print('onpress');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                        Text(
                          '查看全部999个回答',
                            style: TextStyle(
                                color: Color.fromRGBO(141, 154, 175, 1),
                                fontSize: 14.0),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.grey,
                        ),
                  ],
                ),
              ),
            ),
            Container(height: 10.0, child: Text('')),
            Container(
                height: 1.0, decoration: BoxDecoration(color: Colors.grey)),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: FlatButton(
                        onPressed: () {
                          print('onpress');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.add_box, color: Color.fromRGBO(69, 79, 105, 1),),
                            Text('   邀请回答', style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0,
                                color: Color.fromRGBO(67, 79, 105, 1)),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: FlatButton(
                        onPressed: () {
                          print('onpress');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.border_color, color: Colors.black,size: 16,),
                            Text('   写回答', style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15.0,
                                color:Color.fromRGBO(69, 79, 105, 1),),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 10.0, decoration: BoxDecoration(color: Color.fromRGBO(229, 229, 229, 0.1))),
            Container(
              padding: EdgeInsets.only(top: 5.0),
              child: new UserName(
                name: "小飞",
              ),
            ),
            new Container(
              padding: EdgeInsets.only(left: 20.0,right: 20.0),
              child: ListView(
                primary: false,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      comment,style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                        color: Color.fromRGBO(67, 79, 105, 1)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 40.0, decoration: BoxDecoration(color: Color.fromRGBO(229, 229, 229, 0.1))),
          ],
        ),
      ),
      /*bottomNavigationBar: new Container(
        padding: EdgeInsets.only(left: 27.0, right: 27.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Icon(Icons.thumb_up),
                new Text("1470 赞同"),
              ],
            ),
            new Column(
              children: <Widget>[
                new Icon(Icons.thumb_up),
                new Text("368 收藏"),
              ],
            ),
            new Column(
              children: <Widget>[
                new Icon(Icons.thumb_up),
                new Text("8354 评论"),
              ],
            ),
          ],
        ),
      ),*/
    );
  }
}
