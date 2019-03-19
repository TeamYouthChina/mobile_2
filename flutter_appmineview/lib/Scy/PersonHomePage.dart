import 'package:flutter/material.dart';

class PersonInfo extends StatefulWidget {
  final String name;

  PersonInfo({this.name});

  @override
  PersonInfoState createState() => PersonInfoState(name: name);
}

class PersonInfoState extends State<PersonInfo> {
  String name;
  String intro;
  List<WorkExperience> workExperience;
  List<EduExperience> eduExperience;
  final int _myFollowerNum = 100;
  final int _FollowMeNum = 100;

  PersonInfoState({this.name});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    workExperience = [
      new WorkExperience("行政助理", "森麦电子科技有限公司", "2016.08.12-2016.10.30"),
      new WorkExperience("UX Designer", "阿里巴巴", "2018.05.11-2018.11.02")
    ];
    eduExperience = [
      new EduExperience("乔治华盛顿大学", "本科（Data Science）", "2010.09-2014.06"),
      new EduExperience("乔治华盛顿大学", "硕士（Computer Science）", "2016.08-2018.05")
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        color: Colors.white,
        child: new ListView(
          children: <Widget>[
            new Container(
              //decoration: BoxDecoration(color:Colors.white,boxShadow: <BoxShadow>[new BoxShadow(color: Colors.black, blurRadius: 2.0,),]),
              child: new Stack(
                alignment: new FractionalOffset(0.5, 0.45),
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Stack(
                        alignment: new FractionalOffset(-0.05, 0.1),
                        children: <Widget>[
                          new Stack(
                            alignment: new FractionalOffset(0.98, 0.95),
                            children: <Widget>[
                              new ConstrainedBox(
                                child: new Image.asset(
                                  'image/MyPageBG.png',
                                  fit: BoxFit.cover,
                                ),
                                constraints:
                                    new BoxConstraints.expand(height: 175.0),
                              ),
                              new Container(
                                width: 80,
                                height: 30,
                                child: new FlatButton(
                                  onPressed: () {
                                    return null;
                                  },
                                  child: new Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      new Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                        size: 14,
                                      ),
                                      new Text(
                                        " 封面",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  color: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                ),
                              ),
                            ],
                          ),
                          new FlatButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: new Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      new Container(
                        child: new Column(
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.only(top: 55.0, bottom: 5.0),
                              child: Text(
                                "芝士就是力量",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(69, 79, 105, 1),
                                ),
                              ),
                            ),
                            new Container(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: Text(
                                "我是谁，我在哪儿",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(141, 154, 175, 1),
                                ),
                              ),
                            ),
                            new Container(
                              width: 110,
                              height: 34,
                              child: new FlatButton(
                                onPressed: () {
                                  return null;
                                },
                                child: new Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    new Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    new Text(
                                      " 编辑资料",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                color: Color.fromRGBO(65, 91, 240, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                              ),
                            ),
                            new Row(
                              children: <Widget>[
                                new Container(
                                  height: 5.0,
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
                                            color:
                                                Color.fromRGBO(69, 79, 105, 1)),
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
                                            color:
                                                Color.fromRGBO(69, 79, 105, 1)),
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
                                            color:
                                                Color.fromRGBO(69, 79, 105, 1)),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  new CircleAvatar(
                    radius: 50.0,
                    backgroundImage:
                        AssetImage('image/EllipseProfilePhoto.png'),
                  ),
                  //title: new Text('Tabbed AppBar'),
                ],
              ),
            ),
            new Container(
              color: Color.fromRGBO(229, 229, 229, 0.1),
              padding: EdgeInsets.only(
                  top: 15.0, bottom: 15.0, left: 20.0, right: 20.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    "工作经历",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(69, 79, 105, 1)),
                  ),
                  new Icon(
                    Icons.add,
                    color: Color.fromRGBO(69, 79, 105, 1),
                  )
                ],
              ),
            ),
            new WorkExpList(
              l: workExperience,
            ),
            new Container(
              color: Color.fromRGBO(229, 229, 229, 0.1),
              padding: EdgeInsets.only(
                  top: 15.0, bottom: 15.0, left: 20.0, right: 20.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    "教育经历",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(69, 79, 105, 1)),
                  ),
                  new Icon(
                    Icons.add,
                    color: Color.fromRGBO(69, 79, 105, 1),
                  )
                ],
              ),
            ),
            new EduExpList(
              l: eduExperience,
            ),
            new Container(
              height: 40.0,
              //color: Color.fromRGBO(229, 229, 229, 0.1),
              padding: EdgeInsets.only(
                  top: 15.0, bottom: 15.0, left: 20.0, right: 20.0),
              decoration: BoxDecoration(color: Color.fromRGBO(229, 229, 229, 0.1)),
            ),
          ],
        ),
      ),
    );
  }

  void goToMyFocusPage() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) => null));
  }

  void goToFocusMePage() {
    Navigator.push(context, new MaterialPageRoute(builder: (context) => null));
  }
}

class WorkExperience {
  String position;
  String company;
  String workTime;

  WorkExperience(String p, String c, String w) {
    position = p;
    company = c;
    workTime = w;
  }
}

class EduExperience {
  String school;
  String degree;
  String eduTime;

  EduExperience(String s, String d, String e) {
    school = s;
    eduTime = e;
    degree = d;
  }
}

class WorkExpList extends StatefulWidget {
  final List l;

  WorkExpList({this.l});

  @override
  _WorkExpListState createState() => _WorkExpListState(l);
}

class _WorkExpListState extends State<WorkExpList> {
  List<WorkExperience> l;

  _WorkExpListState(List s) {
    l = s;
  }

  @override
  Widget build(BuildContext context) {
    int len = l.length;
    List<Container> c = new List();
    for (int i = 0; i < len; i++) {
      c.add(
        new Container(
          padding: EdgeInsets.only(top: 12, left: 20),
          color: Colors.white,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new Container(
                  child: new Image.asset('image/image1.jpg'),
                  height: 80.0,
                  width: 80.0,
                ),
              ),
              new Expanded(
                flex: 3,
                child: new Container(
                  height: 80,
                  padding: EdgeInsets.only(left: 20.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        l[i].position,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(69, 79, 105, 1),
                            fontWeight: FontWeight.w600),
                      ),
                      new Text(l[i].company,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(141, 154, 175, 1),
                              fontWeight: FontWeight.w500)),
                      new Text(l[i].workTime,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(141, 154, 175, 1),
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
              new Expanded(
                flex: 1,
                child: new FlatButton(onPressed: null, child: new Text("编辑")),
              ),
            ],
          ),
        ),
      );
    }

    return new Column(
      children: c,
    );
  }
}

class EduExpList extends StatefulWidget {
  final List l;

  EduExpList({this.l});

  @override
  _EduExpListState createState() => _EduExpListState(l);
}

class _EduExpListState extends State<EduExpList> {
  List<EduExperience> l;

  _EduExpListState(List s) {
    l = s;
  }

  @override
  Widget build(BuildContext context) {
    if (l == null) {
      return new Container(
        width: 0.0,
        height: 0.0,
      );
    }
    int len = l.length;
    List<Container> c = new List();
    for (int i = 0; i < len; i++) {
      c.add(
        new Container(
          height: 80,
          padding: EdgeInsets.only(top: 12.0, left: 20),
          color: Colors.white,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Expanded(
                flex: 1,
                child: new ConstrainedBox(
                    child: new Image.asset(
                      'image/image1.jpg',
                      fit: BoxFit.cover,
                    ),
                    constraints:
                        new BoxConstraints.expand(height: 80, width: 80)),
              ),
              new Expanded(
                flex: 3,
                child: new Container(
                  padding: EdgeInsets.only(left: 20.0),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        l[i].school,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(69, 79, 105, 1),
                            fontWeight: FontWeight.w600),
                      ),
                      new Text(l[i].degree,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(141, 154, 175, 1),
                              fontWeight: FontWeight.w500)),
                      new Text(l[i].eduTime,
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(141, 154, 175, 1),
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              ),
              new Expanded(
                flex: 1,
                child: new FlatButton(onPressed: null, child: new Text("编辑")),
              ),
            ],
          ),
        ),
      );
    }

    return new Column(
      children: c,
    );
  }
}

class AdvantageTag extends StatefulWidget {
  @override
  _AdvantageTagState createState() => _AdvantageTagState();
}

class _AdvantageTagState extends State<AdvantageTag> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new FlatButton(
                  onPressed: () {
                    return null;
                  },
                  child: Text("公司福利"),
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
                new FlatButton(
                  onPressed: () {
                    return null;
                  },
                  child: Text("笔试面试"),
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
                new FlatButton(
                  onPressed: () {
                    return null;
                  },
                  child: Text("公司氛围"),
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
                new FlatButton(
                  onPressed: () {
                    return null;
                  },
                  child: Text("自定义"),
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
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
                  child: Text("公司福利"),
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
                new FlatButton(
                  onPressed: () {
                    return null;
                  },
                  child: Text("笔试面试"),
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
                new FlatButton(
                  onPressed: () {
                    return null;
                  },
                  child: Text("公司氛围"),
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
                new FlatButton(
                  onPressed: () {
                    return null;
                  },
                  child: Text("自定义"),
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
              ],
            ),
          ],
        ));
  }
}
