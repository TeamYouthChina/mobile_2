import 'package:flutter/material.dart';
import 'WriteShortComment.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FloatMenuButton extends StatefulWidget {
  //BuildContext context;
  //MenuButton({this.context});
  @override
  FloatMenuButtonState createState() => FloatMenuButtonState();
}

class FloatMenuButtonState extends State<FloatMenuButton> with TickerProviderStateMixin {
  //BuildContext context;

  //FloatMenuButtonState({this.context});

  ScrollController _scrollController;
  bool _dialVisible = true;

  initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        _setDialVisible(_scrollController.position.userScrollDirection ==
            ScrollDirection.forward);
      });
  }

  _setDialVisible(bool value) {
    setState(() {
      _dialVisible = value;
    });
  }

//  _renderBody() { 16 14
//    return ListView.builder(
//      controller: _scrollController,
//      itemCount: 30,
//      itemBuilder: (ctx, i) => ListTile(title: Text('Item $i')),
//    );
//  }

  _renderSpeedDial() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 22.0,),
      overlayColor: Color.fromRGBO(0, 0, 0, 0.69),
      overlayOpacity: 0.69,
      marginRight: 16.0,
      marginBottom: 60.0,
      //foregroundColor: Color.fromRGBO(79, 101, 225, 1),
      backgroundColor: Color.fromRGBO(79, 101, 225, 1),
      // child: Icon(Icons.add),
      onOpen: () => print('OPENING DIAL'),
      onClose: () => print('DIAL CLOSED'),
      visible: _dialVisible,
      curve: Curves.bounceIn,
      children: [
        /*SpeedDialChild(
          child:
//          Icon(Icons.accessibility, color: Colors.white),
          IconButton(icon: Icon(Icons.comment), onPressed: () {
            return null;
          }),
          backgroundColor: Color.fromRGBO(141, 154, 175, 1),
          onTap: () => print('写文章'),
          label: '写文章',
          labelStyle: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 14.0),
          labelBackgroundColor: Color.fromRGBO(0, 0, 0, 0.69),
        ),*/
        SpeedDialChild(
          child: IconButton(icon: Icon(Icons.edit), onPressed: () {
            goToWriteShortComment();
          }),
          //child: new Container(child: new Image.asset("/image/ShapePencil.png"),height: 300,width: 300,),
          backgroundColor: Color.fromRGBO(141, 154, 175, 1),
          onTap: () => print(' 写短评'),
          label: '写短评',
          labelStyle: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.white, fontSize: 14.0,),
          labelBackgroundColor: Color.fromRGBO(0, 0, 0, 0.69),
        ),
        /*SpeedDialChild(
          child: IconButton(icon: Icon(Icons.comment), onPressed: () {
            return null;
          }),
          backgroundColor: Color.fromRGBO(141, 154, 175, 1),
          onTap: () => print('写问答'),
          label: '写问答',
          labelStyle: TextStyle(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 14.0),
          labelBackgroundColor: Color.fromRGBO(0, 0, 0, 0.69),
        ),*/
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return _renderSpeedDial();
  }

  void goToWriteShortComment(){
    Navigator.push(
        context,
        new MaterialPageRoute(
          builder: (context) => new WriteShortComment(),
        ));
  }
}