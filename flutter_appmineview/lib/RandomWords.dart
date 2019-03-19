import 'package:flutter/material.dart';
import 'Message/Chatlist.dart';
import 'package:dim/dim.dart';
import 'package:flutter_appmineview/login/style/theme.dart' as Theme;
import 'package:flutter_appmineview/Scy/Explore.dart';
import 'package:flutter_appmineview/Scy/MyPage.dart';

import 'Meeting/MeetingGuanzhuPage.dart';

class RandomWords extends StatefulWidget {
  String user;
  Dim dim;

  RandomWords({this.user, this.dim});

  @override
  createState() => new RandomWordsState(
    user: user,
    dim: dim,
  );
}

class RandomWordsState extends State<RandomWords>
    with SingleTickerProviderStateMixin {
  String user;
  Dim dim;

  RandomWordsState({this.user, this.dim});

  final List<BottomNavigationBarItem> listSet = [
    new BottomNavigationBarItem(
      icon: new Icon(Icons.chat, color: Colors.grey),
      title: new Text("探索"),
    ),
    new BottomNavigationBarItem(
      icon: new Icon(
        Icons.perm_contact_calendar,
        color: Colors.grey,
      ),
      title: new Text("圆桌"),
    ),
    new BottomNavigationBarItem(
      icon: new Icon(Icons.room, color: Colors.grey),
      title: new Text("消息"),
    ),
    new BottomNavigationBarItem(
      icon: new Icon(Icons.perm_identity, color: Colors.grey),
      title: new Text("我的"),
    ),
  ];

  final List<Widget> vcSet = [
     new MyHomePage(),
     new MeetingGuanzhuPage(),
    // new MeetingPage(),
     new ChatList(),
     new MyPage()
  ];
  int _sindex;
  Color activecolor;
  TabController _tabController;

  final List<String> tab = ["探索", "圆桌", "消息", "我的"];

  List<Tab> tabs=[
    Tab(
      icon: Icon(Icons.explore),
      text: "探索",
    ),
    Tab(
      icon: Icon(Icons.device_hub),
      text: "圆桌",
    ),
    Tab(
      icon: Icon(Icons.textsms),
      text: "消息",
    ),
    Tab(
      icon: Icon(Icons.person),
      text: "我的",
    ),
  ];


  final List<IconData> icons = [
    Icons.explore,
    Icons.device_hub,
    Icons.textsms,
    Icons.person
  ];

//  _renderTab(int index) {
//    List<Widget> list = new List();
//    for (int i = 0; i < tab.length; i++) {
//      list.add(
//        new FlatButton(
//          onPressed: () {
//            _pageController.jumpTo(MediaQuery.of(context).size.width * i);
//          },
//          child: Container(
//            margin: EdgeInsets.only(top: 5.0),
//            child: SizedBox(
//              height: 70,
//              child: new Column(
//                children: <Widget>[
//                  Icon(
//                    icons[i],
//                    color: i == index ? Theme.Colors.activecolor : Colors.grey,
//                  ),
//                  Text(
//                    tab[i],
//                    maxLines: 1,
//                    style: TextStyle(
//                        color: i == index ? Theme.Colors.activecolor : Colors.grey),
//                  ),
//                ],
//              ),
//            ),
//          ),
//        ),
//      );
//    }
//    return list;
//  }



  @override
  void initState() {



    print('user='+user+'\n');
     vcSet[2] = ChatList(
       user: user,
       dim: dim,
     );
    _sindex = 0;
    super.initState();

    ///初始化时创建控制器
    ///通过 with SingleTickerProviderStateMixin 实现动画效果。
    _tabController = new TabController(vsync: this, length: vcSet.length);

  }

  @override
  void dispose() {
    ///页面销毁时，销毁控制器
    _tabController.dispose();
     dim.imLogout();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text("微信"),
//        actions: <Widget>[
//          new IconButton(icon: new Icon(Icons.list), onPressed: null),
//        ],
//      ),

      bottomNavigationBar: new TabBar(
        labelColor: Theme.Colors.activecolor,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.transparent,
        controller: _tabController,
        tabs: tabs,
      ),
      body: TabBarView(
          controller: _tabController,
          children: vcSet),

//      new PageView(
//        controller: _tabController,
//        children: vcSet,
//        onPageChanged: (index) {
//          setState(() {
//            _sindex=index;
//          });
//          _tabController.animateTo(index);
//        },
//      ),
//      vcSet[_sindex],
    );
  }
}
