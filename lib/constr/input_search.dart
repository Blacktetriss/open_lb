import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class InputSearch extends StatefulWidget {
  InputSearch({Key key}) : super(key: key);

  @override
  _InputSearch createState() => _InputSearch();
}

class _InputSearch extends State<InputSearch> {
  TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Container(
//              padding: EdgeInsets.all(4.0),
              margin: EdgeInsets.only(right: 0.0),
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
              ),
              child: TextField(
                style: TextStyle(fontSize: 14.0,
                ),
                decoration: InputDecoration(
                  icon: Icon(Icons.search,
                    color: Color(0xFF5A768E),
                  ),
                    border: InputBorder.none,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF5A768E),
                ),
                  labelText: 'SEARCH',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 0.0),
            height: 60,
            width: 120,
            decoration: BoxDecoration(
              color: Color(0xFF5A768E),
            ),
          child: Center(child: DropButtonSearch()),
          ),
          Container(
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.only(right: 0.0),
            height: 60,
            width: 10,
            decoration: BoxDecoration(
              color: Colors.cyanAccent,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),)
        ],
      ),
    );
  }
}

class DropButtonSearch extends StatefulWidget {
  DropButtonSearch({Key key}) : super(key: key);

  @override
  _DropButtonSearchState createState() => _DropButtonSearchState();
}

class _DropButtonSearchState extends State<DropButtonSearch> {
  String dropdownValue = 'ALL';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward,
        color: Colors.white70,),
      iconSize: 24,
      elevation: 100,
      style: TextStyle(
        color: Colors.red,
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
      ),
      underline: Container(
        height: 0,
        color: Color(0xFF5A768E),
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['ALL', 'TITLE', 'AUTHOR', 'TEXT',]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


