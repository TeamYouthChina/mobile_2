import 'package:flutter/material.dart';
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
      padding: EdgeInsets.only(
          left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
      child: new TextField(
        maxLines: 1,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
                left: 10.0, right: 10.0, top: 0.0, bottom: 0.0),
            border: OutlineInputBorder(
              //borderRadius: BorderRadius.circular(15.0),
            ),
            focusedBorder: OutlineInputBorder(
              //borderRadius: BorderRadius.circular(15.0),
            ),
            fillColor: Colors.grey[200],
            filled: true,
            prefixIcon: Icon(Icons.search),
            hintText: widget.hintText,
            suffixIcon: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  FocusScope.of(context).requestFocus(new FocusNode());
                })),
      ),
    );
  }
}