import 'package:flutter/material.dart';
import 'WoDeGuanZhu.dart';
import 'StartMeeting.dart';
import 'package:flutter_appmineview/MyInfo/search_bar.dart';

class MeetingGuanzhuPage extends StatefulWidget {
  @override
  _MeetingGuanzhuPageState createState() => _MeetingGuanzhuPageState();
}

class _MeetingGuanzhuPageState extends State<MeetingGuanzhuPage>
    with SingleTickerProviderStateMixin {
  List<Tab> tabs;
  List<Widget> Pages;
  TabController _tabController;

  @override
  void initState() {
    tabs = [
      Tab(
        text: '为你精选',
      ),
      Tab(
        text: '我的关注',
      ),
    ];
    Pages = [
//      Center(
//        child: Text('page1'),
//      ),
      WoDeGuanZhu(),
      WoDeGuanZhu(),

    ];
    super.initState();
//    _scrollViewController =  ScrollController();
    _tabController =
        TabController(vsync: this, length: 2); // 和下面的 TabBar.tabs 数量对应
  }

  @override
  void dispose() {
//    _scrollViewController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // 大量配置属性参考 SliverAppBar 示例
          title: SearchBar(
            hintText: "搜索你感兴趣的话题",
          ),
//          backgroundColor: Colors.amber[1000],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(fontSize: 14),
            unselectedLabelStyle: TextStyle(fontSize: 12),
            labelColor: Theme.of(context).accentColor,
            unselectedLabelColor: Color(0xFF454F69),
            isScrollable: false,
            controller: _tabController,
            tabs: tabs,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: Pages,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: RaisedButton.icon(
          elevation: 2,
          color: Theme.of(context).accentColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0),
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StartMeeting(),
              ),
            );
          },
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
          label: Text(
            '发起圆桌',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ));
  }
}

//
//
//class SearchInput extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new Container(
//      height: 40.0,
//      decoration: BoxDecoration(
//          color: Theme.of(context).backgroundColor,
//          borderRadius: BorderRadius.circular(4.0)),
//      child: new Row(
//        children: <Widget>[
//          new Padding(
//            padding: new EdgeInsets.only(right: 10.0, top: 3.0, left: 10.0),
//            child: new Icon(Icons.search,
//                size: 24.0, color: Theme.of(context).accentColor),
//          ),
//          new Expanded(
//            child: new TextField(
//              maxLines: 1,
//              decoration: InputDecoration(
//                hintText: '搜索 flutter 组件',
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
