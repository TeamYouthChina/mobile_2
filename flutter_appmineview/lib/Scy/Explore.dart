import 'package:flutter/material.dart';
import 'FloatMenuButton.dart';
import 'DetailShortComment.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: new PreferredSize(
              child: new AppBar(
                  title: SearchBar(
                    hintText: "搜索你感兴趣的话题吧",
                  ),
                  bottom: new PreferredSize(
                      child: new GestureDetector(
                        onTap:(){  FocusScope.of(context).requestFocus(new FocusNode());},
                        child: new Row(
                          children: <Widget>[
                            new Expanded(
                                flex: 3,
                                child: new Container(
                                  decoration: BoxDecoration(color: Colors.white),
                                  //height: 20.0,
                                )),
                            new Expanded(
                              flex: 6,
                              child: new TabBar(
                                tabs: [
                                  new Tab(
                                    child: new Container(
                                      child: new Text("洞见"),
                                    ),
                                  ),
                                  new Tab(
                                    child: new Container(
                                      child: new Text("视频"),
                                    ),
                                  ),
                                ],
                                indicatorColor: Color.fromRGBO(79, 101, 225, 1),
                                indicatorWeight: 2.0,
                                indicatorPadding: EdgeInsets.zero,
                                indicatorSize: TabBarIndicatorSize.label,
                                labelStyle: new TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 14.0),
                                unselectedLabelColor:
                                Color.fromRGBO(69, 79, 105, 1),
                                unselectedLabelStyle: new TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14.0),
                                labelColor: Color.fromRGBO(79, 101, 225, 1),
                                labelPadding: EdgeInsets.only(bottom: 0.0),
                              ),
                            ),
                            new Expanded(
                                flex: 3,
                                child: new Container(
                                  decoration: BoxDecoration(color: Colors.white),
                                  //height: 20.0,
                                )),
                          ],
                        ),
                      ),
                      preferredSize: Size.fromHeight(20.0))),
              preferredSize: Size.fromHeight(100.0)),
          body: new GestureDetector(
            onTap: (){FocusScope.of(context).requestFocus(new FocusNode());},
            child: new TabBarView(
              children: <Widget>[
                new ListView(
                  children: <Widget>[
                    new Container(
                      child: new Column(
                        children: <Widget>[
                          new Container(
                            height: 10.0,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(239, 242, 248, 1),
                            ),
                          ),
                          new GestureDetector(
                            onTap: goToDetailShortComment,
                            child: new Container(
                              padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                              //height: 306.0,
                              child: new Column(
                                children: <Widget>[
                                  new Padding(
                                    padding:
                                    EdgeInsets.only(left: 20.0, bottom: 10.0),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        new Text(
                                          "IBM是一家怎么样的公司？",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                              color:
                                              Color.fromRGBO(67, 79, 105, 1)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  /*new Container(
                                padding: EdgeInsets.all(0.0),
                                child: new Image.asset('image/picture.png'),
                              ),*/
                                  new ConstrainedBox(
                                      child: new Image.asset(
                                        'image/picture.png',
                                        fit: BoxFit.cover,
                                      ),
                                      constraints:
                                      new BoxConstraints.expand(height: 158)),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        top: 10.0,
                                        bottom: 10.0,
                                        left: 20.0,
                                        right: 20.0),
                                    child: new Text(
                                      '小飞：将各个渠道的聚合，后热醒一比较阿斯兰的房间里，时代峰峻阿拉什法拉盛别闹了女爱丽、舍VB是胡椒粉拉客十六里。河虫老黄蓝色大of...',
                                      style: TextStyle(
                                          color: Color.fromRGBO(69, 79, 105, 1),
                                          fontSize: 12.0),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        new Text(
                                          "197,978 赞同",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  141, 154, 175, 1),
                                              fontSize: 10.0),
                                        ),
                                        new Container(
                                          width: 10.0,
                                          decoration:
                                          BoxDecoration(color: Colors.white),
                                        ),
                                        new Text(
                                          "9,978 评论",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  141, 154, 175, 1),
                                              fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          new Container(
                            height: 10.0,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(239, 242, 248, 1),
                            ),
                          ),
                          new GestureDetector(
                            onTap: goToDetailShortComment,
                            child: new Container(
                              padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                              //height: 306.0,
                              child: new Column(
                                children: <Widget>[
                                  new Padding(
                                    padding:
                                    EdgeInsets.only(left: 20.0, bottom: 10.0),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        new Text(
                                          "IBM是一家怎么样的公司？",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                              color:
                                              Color.fromRGBO(67, 79, 105, 1)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  /*new Container(
                                padding: EdgeInsets.all(0.0),
                                child: new Image.asset('image/picture.png'),
                              ),*/
                                  //new ConstrainedBox(child: new Image.asset('image/picture.png', fit: BoxFit.cover,),constraints: new BoxConstraints.expand(height: 158)),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        bottom: 10.0, left: 20.0, right: 20.0),
                                    child: new Text(
                                      '小飞：将各个渠道的聚合，后热醒一比较阿斯兰的房间里，时代，后热醒一比较，后热醒一比较阿斯兰的房间里，时代峰峻阿斯兰的房间里，时代峰峻，后热醒一比较阿斯兰的房间里，时代峰峻峰峻阿拉什法拉盛别闹了女爱丽、舍VB是胡椒，是肯定会将罚款粉拉客十六里。河虫老黄蓝色大of...',
                                      style: TextStyle(
                                          color: Color.fromRGBO(69, 79, 105, 1),
                                          fontSize: 12.0),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        new Text(
                                          "197,978 赞同",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  141, 154, 175, 1),
                                              fontSize: 10.0),
                                        ),
                                        new Container(
                                          width: 10.0,
                                          decoration:
                                          BoxDecoration(color: Colors.white),
                                        ),
                                        new Text(
                                          "9,978 评论",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  141, 154, 175, 1),
                                              fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          new Container(
                            height: 10.0,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(239, 242, 248, 1),
                            ),
                          ),
                          new GestureDetector(
                            onTap: goToDetailShortComment,
                            child: new Container(
                              padding: EdgeInsets.only(top: 15.0, bottom: 10.0),
                              //height: 306.0,
                              child: new Column(
                                children: <Widget>[
                                  new Padding(
                                    padding:
                                    EdgeInsets.only(left: 20.0, bottom: 10.0),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        new Text(
                                          "IBM是一家怎么样的公司？",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                              color:
                                              Color.fromRGBO(67, 79, 105, 1)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  /*new Container(
                                padding: EdgeInsets.all(0.0),
                                child: new Image.asset('image/picture.png'),
                              ),*/
                                  //new ConstrainedBox(child: new Image.asset('image/picture.png', fit: BoxFit.cover,),constraints: new BoxConstraints.expand(height: 158)),
                                  new Container(
                                    padding: EdgeInsets.only(
                                        bottom: 10.0, left: 20.0, right: 20.0),
                                    child: new Text(
                                      '小飞：将各个渠道的聚合，后热醒一比较阿斯兰的房间里，时代，后热醒一比较，后热醒一比较阿斯兰的房间里，时代峰峻阿斯兰的房间里，时代峰峻，后热醒一比较阿斯兰的房间里，时代峰峻峰峻阿拉什法拉盛别闹了女爱丽、舍VB是胡椒，是肯定会将罚款粉拉客十六里。河虫老黄蓝色大of...',
                                      style: TextStyle(
                                          color: Color.fromRGBO(69, 79, 105, 1),
                                          fontSize: 12.0),
                                    ),
                                  ),
                                  new Container(
                                    padding: EdgeInsets.only(left: 20.0),
                                    child: new Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        new Text(
                                          "197,978 赞同",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  141, 154, 175, 1),
                                              fontSize: 10.0),
                                        ),
                                        new Container(
                                          width: 10.0,
                                          decoration:
                                          BoxDecoration(color: Colors.white),
                                        ),
                                        new Text(
                                          "9,978 评论",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  141, 154, 175, 1),
                                              fontSize: 10.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          new Container(
                            height: 10.0,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(239, 242, 248, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                new Text("b"),
                new Text("c"),
              ],
            ),
          ),
          floatingActionButton: FloatMenuButton(),
        ));
  }

  void goToDetailShortComment() {
    Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new AnswerPage("IBM是一家怎么样的公司？"),
        ));
  }
}

class SearchBar extends StatefulWidget {
  final String hintText;

  SearchBar({this.hintText});

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding:
          EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
      child: new TextField(
        maxLines: 1,
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.only(left: 10.0, right: 10.0, top: 6.0, bottom: 7.0),
            border: OutlineInputBorder(
              //borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
                //borderRadius: BorderRadius.circular(15.0),
                ),
            fillColor: Color.fromRGBO(239, 242, 248, 1),
            filled: true,
            prefixIcon: Icon(
              Icons.search,
              size: 14.0,
            ),
            hintText: widget.hintText,
            hintStyle: new TextStyle(
                color: Color.fromRGBO(141, 154, 175, 1),
                fontSize: 12.0,
                fontWeight: FontWeight.w500),
            suffixIcon: IconButton(
                icon: Icon(
                  Icons.close,
                  size: 14.0,
                ),
                onPressed: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                })),
      ),
    );
  }
}
