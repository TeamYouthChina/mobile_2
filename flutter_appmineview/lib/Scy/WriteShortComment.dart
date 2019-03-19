import 'package:flutter/material.dart';

class WriteShortComment extends StatefulWidget {
  @override
  _WriteShortCommentState createState() => _WriteShortCommentState();
}

class _WriteShortCommentState extends State<WriteShortComment> {
  String value;
  List<DropdownMenuItem> items = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DropdownMenuItem item0 = new DropdownMenuItem(
      child: new Container(
        padding: EdgeInsets.only(left: 10, top: 9.0),
        child: new Text(
          "--请选择公司--",
          style: TextStyle(
            fontSize: 14.0,
            color: Color.fromRGBO(69, 79, 105, 1),
          ),
        ),
        color: Colors.white,
      ),
      value: '0',
    );
    items.add(item0);
    DropdownMenuItem item1 = new DropdownMenuItem(
      child: new Container(
        padding: EdgeInsets.only(left: 10, top: 9.0),
        child: new Text(
          "阿里巴巴",
          style: TextStyle(
            fontSize: 14.0,
            color: Color.fromRGBO(69, 79, 105, 1),
          ),
        ),
        color: Colors.white,
      ),
      value: '1',
    );
    items.add(item1);
    DropdownMenuItem item2 = new DropdownMenuItem(
      child: new Container(
        padding: EdgeInsets.only(left: 10, top: 9.0),
        child: new Text(
          "腾讯",
          style: TextStyle(
            fontSize: 14.0,
            color: Color.fromRGBO(69, 79, 105, 1),
          ),
        ),
        color: Colors.white,
      ),
      value: '2',
    );
    items.add(item2);
    DropdownMenuItem item3 = new DropdownMenuItem(
      child: new Container(
        padding: EdgeInsets.only(left: 10, top: 9.0),
        child: new Text(
          "百度",
          style: TextStyle(
            fontSize: 14.0,
            color: Color.fromRGBO(69, 79, 105, 1),
          ),
        ),
        color: Colors.white,
      ),
      value: '3',
    );
    items.add(item3);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        elevation: 2,
//        leading: new Text(
//          "取消",
//          style: TextStyle(
//              fontSize: 14,
//              fontWeight: FontWeight.w600,
//              color: Color.fromRGBO(69, 79, 105, 1)),
//        ),
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            new FlatButton(
              onPressed: (){Navigator.of(context).pop();},
              child: new Text(
                "取消",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(69, 79, 105, 1)),
              ),
            ),
            new Text(
              "发短评",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(69, 79, 105, 1),
              ),
            ),
            new FlatButton(
              onPressed: null,
              child: new Text(
                "发布",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(68, 93, 237, 1)),
              ),
            ),
          ],
        ),
      ),
      body: new Container(
        color: Color.fromRGBO(229, 229, 229, 0),
        child: new ListView(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.only(left: 27.0, top: 30.0),
              child: new Text(
                "相关公司",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(69, 79, 105, 1)),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(left: 27.0, top: 10.0, bottom: 20.0),
              child: new DropdownButton(
                items: items,
                isExpanded: true,
                isDense: true,
                value: value,
                hint: Text("--请选择公司--"),
                onChanged: (T) {
                  setState(() {
                    value = T;
                  });
                },
                style: new TextStyle(
                  fontSize: 14.0,
                  color: Color.fromRGBO(69, 79, 105, 1),
                ),
                iconSize: 30.0,
              ),
            ),
            new Container(
              padding: EdgeInsets.only(left: 27.0),
              child: new Text(
                "短评详述",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(69, 79, 105, 1)),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(
                  left: 27.0, right: 30.0, top: 10.0, bottom: 10.0),
              child: new TextField(
                //   FocusScope.of(context).requestFocus(new FocusNode());
                maxLines: 10,
                cursorColor: Colors.blue,
                //光标颜色
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 0.0,
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 0.0,
                        style: BorderStyle.none),
                  ),
                  border: OutlineInputBorder(
                    gapPadding: 0.0,
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 0.0,
                        style: BorderStyle.none),
                  ),
                  contentPadding:
                      EdgeInsets.only(left: 16.0, top: 12.0, right: 16.0),
//                ),
                  fillColor: Colors.white,
                  filled: true,
//                prefixIcon: Icon(Icons.search),
                  hintText: "详细说说你的工作感受",
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(179, 193, 219, 1), fontSize: 14),
                ),
              ),
            ),
            new Container(
              height: 75,
              padding: EdgeInsets.only(left: 27.0),
              child: Row(
                children: <Widget>[
                  new Container(
                    color: Colors.white,
                    height: 75,
                    width: 80.0,
                    child: Icon(
                      Icons.camera_alt,
                      color: Color.fromRGBO(179, 193, 219, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
