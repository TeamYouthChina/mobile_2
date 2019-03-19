import 'package:flutter/material.dart';
import 'PersonHomePage.dart';
class MyPage extends StatefulWidget {
  MyPage({Key key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final String _hintText = '搜索你感兴趣的话题吧';
  final String _nickname = '芝士就是力量';
  final String _intro = '我是谁，我在哪儿';
  final int _myFollowerNum = 100;
  final int _FollowMeNum = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
        child: new AppBar(
          flexibleSpace: new ConstrainedBox(
              child: new Image.asset(
                'image/MyPageBG.png',
                fit: BoxFit.cover,
              ),
              constraints: new BoxConstraints.expand(height: 200.0)),
          titleSpacing: 0.0,
          //title: new Text('Tabbed AppBar'),
          centerTitle: true,
        ),
        preferredSize: Size.fromHeight(80.0),
      ),
      body: new GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: new Container(
          child: new ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(top: 8.0),
                child: new Container(
                  height: 200.0,
                  child: new Column(
                    children: <Widget>[
                      new ListTile(
                        contentPadding: EdgeInsets.only(left: 30.0),
                        leading: new Padding(
                          padding: const EdgeInsets.only(top: 10.0, right: 8.0),
                          child: new Container(
                            height: 95,
                            width: 95,
                            decoration: BoxDecoration(color: Colors.white),
                            child: new CircleAvatar(
                              radius: 50.0,
                              backgroundImage:
                                  AssetImage('image/EllipseProfilePhoto.png'),
                            ),
                          ),
                        ),
                        title: new Container(
                          padding: EdgeInsets.only(top: 22.0),
                          child: new Text(
                            this._nickname,
                            style: TextStyle(
                                color: Color.fromRGBO(69, 79, 105, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        subtitle: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(top: 5.0, left: 0.0),
                              child: new Text(
                                _intro,
                                //textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(141, 154, 175, 1),
                                    fontSize: 14),
                              ),
                            ),
                            new FlatButton(
                              onPressed: () {
                                return null;
                              },
                              child: Text(
                                "影响力：278",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(65, 91, 240, 1)),
                              ),
                              color: Color.fromRGBO(240, 243, 250, 1),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                            ),
                          ],
                        ),
                        /*trailing: new Container(
                            width: 120.0,
                            child: new FlatButton(
                                onPressed: () {
                                  gotoPersonInfo(this._nickname);
                                },
                                child: new Container(
                                  //padding: EdgeInsets.only(right: 0.0),
                                  child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      new Container(height:35.0, decoration: BoxDecoration(color: Colors.white),),
                                      new FlatButton(padding: EdgeInsets.all(1.0),onPressed: null, child: new Icon(Icons.chevron_right,color: Color.fromRGBO(141, 154, 175, 1),),),
                                    ],
                                  ),
                                ))),*/
                        trailing: new Container(
                          width: 80.0,
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              new Container(
                                height: 15.0,
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                              new FlatButton(
                                padding: EdgeInsets.all(1.0),
                                onPressed: () {
                                  gotoPersonHomePage(_nickname);
                                },
                                child: new Icon(
                                  Icons.chevron_right,
                                  color: Color.fromRGBO(141, 154, 175, 1),
                                ),
                              ),
                              new Container(
                                height: 35.0,
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      new Row(
                        children: <Widget>[
                          new Container(
                            height: 10.0,
                          ),
                        ],
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new FlatButton(
                            onPressed: () {
                              return null;
                            },
                            child: new Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Text(
                                  '7\n我的发布',
                                  style: TextStyle(
                                      height: 1.2,
                                      fontSize: 14.0,
                                      color: Color.fromRGBO(69, 79, 105, 1)),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          new FlatButton(
                            onPressed: () {
                              return null;
                            },
                            child: new Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Text(
                                  '100\n我关注',
                                  style: TextStyle(
                                      height: 1.2,
                                      fontSize: 14.0,
                                      color: Color.fromRGBO(69, 79, 105, 1)),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          new FlatButton(
                            onPressed: () {
                              return null;
                            },
                            child: new Column(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Text(
                                  '9k\n关注我',
                                  style: TextStyle(
                                      height: 1.2,
                                      fontSize: 14.0,
                                      color: Color.fromRGBO(69, 79, 105, 1)),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  color: Colors.white,
                ),
                color: Colors.white,
              ),
              new Container(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 20.0),
                child: new Text(
                  "我的收藏",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(69, 79, 105, 1)),
                ),
              ),
              new Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 18,bottom: 19),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(const Radius.circular(4.0)),
                            color: Color.fromRGBO(79, 101, 225, 1),
                          ),
                          child: new Icon(
                            Icons.business,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.only(top: 5.0),
                          child: new Text(
                            "公司",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color.fromRGBO(69, 79, 105, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(const Radius.circular(4.0)),
                            color: Color.fromRGBO(255, 201, 62, 1),
                          ),
                          child: new Icon(
                            Icons.visibility,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.only(top: 5.0),
                          child: new Text(
                            "洞见",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color.fromRGBO(69, 79, 105, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(const Radius.circular(4.0)),
                            color: Color.fromRGBO(35, 149, 225, 1),
                          ),
                          child: new Icon(
                            Icons.group_work,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.only(top: 5.0),
                          child: new Text(
                            "圆桌",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color.fromRGBO(69, 79, 105, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(const Radius.circular(4.0)),
                            color: Color.fromRGBO(70, 192, 245, 1),
                          ),
                          child: new Icon(
                            Icons.ondemand_video,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.only(top: 5.0),
                          child: new Text(
                            "视频",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color.fromRGBO(69, 79, 105, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              new Container(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 20.0),
                child: new Text(
                  "其他",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(69, 79, 105, 1)),
                ),
              ),
              new Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 18,bottom: 19),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                        new Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(const Radius.circular(4.0)),
                            color: Color.fromRGBO(179, 193, 219, 1),
                          ),
                          child: new Icon(
                            Icons.help,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.only(top: 5.0),
                          child: new Text(
                            "帮助",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color.fromRGBO(69, 79, 105, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(const Radius.circular(4.0)),
                            color: Color.fromRGBO(179, 193, 219, 1),
                          ),
                          child: new Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.only(top: 5.0),
                          child: new Text(
                            "设置",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color.fromRGBO(69, 79, 105, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(const Radius.circular(4.0)),
                            color: Color.fromRGBO(179, 193, 219, 1),
                          ),
                          child: new Icon(
                            Icons.call,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.only(top: 5.0),
                          child: new Text(
                            "联系",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color.fromRGBO(69, 79, 105, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    new Column(
                      children: <Widget>[
                        new Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(const Radius.circular(4.0)),
                            color: Colors.white,
                          ),
                          child: new Icon(
                            Icons.help,
                            color: Colors.white,
                            size: 22,
                          ),
                        ),
                        new Container(
                          padding: EdgeInsets.only(top: 5.0),
                          child: new Text(
                            "帮助",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void gotoPersonHomePage(String name) {
    Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new PersonInfo(name: this._nickname,),
        ));
  }

}
