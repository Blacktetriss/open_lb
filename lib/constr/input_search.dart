import 'package:flutter/material.dart';

class InputSearch extends StatefulWidget {
  InputSearch ({Key key}) : super(key: key);

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
    return 
    Container(
            margin: EdgeInsets.all(7.0),
            padding: EdgeInsets.all(7.0),
            height: 80,
            decoration: BoxDecoration(
              color: Color(0xFFc9bbb7),
              borderRadius: BorderRadius.circular(10.0),),
              child: 
              TextFormField(
                decoration: InputDecoration(labelText: 'search'),
    ),
    );
  }
}
