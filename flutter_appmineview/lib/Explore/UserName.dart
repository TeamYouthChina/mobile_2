import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserName extends StatelessWidget {
  String name;

  UserName({this.name});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 10.0),
      child: Row(
        children: <Widget>[
          new Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0, bottom: 5.0),
              child: new CircleAvatar(
                foregroundColor: Color(500),
                radius: 15.0,
                backgroundImage: AssetImage('image/image1.jpg'),
              )),
          new Container(
              child: Row(
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 20.0,
                    padding: EdgeInsets.only(left: 0.0, top: 5.0),
                    child: FlatButton(
                      onPressed: () {
                        print('onpress');
                      },
                      child: Text(
                        '$name',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
                            color: Color.fromRGBO(67, 79, 105, 1)),
                      ),
                    ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
