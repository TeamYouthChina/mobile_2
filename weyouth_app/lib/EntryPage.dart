import 'package:flutter/material.dart';
import 'theme.dart' as Theme;
import 'MyPage.dart';
import 'ExplorePage.dart';
import 'MessagePage.dart';
import 'TablePage.dart';
import 'Adapt.dart';

class EntryPage extends StatefulWidget {
  @override
  _EntryPageState createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage>
    with SingleTickerProviderStateMixin {
  final List<Widget> vcSet = [
    new ExplorePage(),
    new TablePage(),
    new MessagePage(),
    new MyPage(),
  ];
  int _sindex;
  Color activecolor;
  TabController _tabController;

  List<Tab> tabs = [
    Tab(
      icon: Icon(Icons.explore,size: Theme.Icon.iconSize_bottomNavigationTab,),
      text: "探索",
    ),
    Tab(
      icon: Icon(Icons.group_work,size: Theme.Icon.iconSize_bottomNavigationTab,),
      text: "圆桌",
    ),
    Tab(
      icon: Icon(Icons.textsms,size: Theme.Icon.iconSize_bottomNavigationTab,),
      text: "消息",
    ),
    Tab(
      icon: Icon(Icons.person,size: Theme.Icon.iconSize_bottomNavigationTab,),
      text: "我的",
    ),
  ];

  @override
  void initState() {
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new TabBar(
        labelColor: Theme.Colors.activecolor,
        unselectedLabelColor: Colors.grey,
        indicatorColor: Colors.transparent,
        controller: _tabController,
        tabs: tabs,
        labelStyle: TextStyle(fontFamily: Theme.Font.fontFamily, fontWeight: Theme.Font.fontWeight_tab, fontSize: Theme.Font.fontSize_tab),
      ),
      body: TabBarView(controller: _tabController, children: vcSet),
    );
  }
}
