import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE1DCC5),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
  color: Color(0xFF02598B),
  textColor: Colors.white,
  disabledColor: Color(0xFF3B98FC),
  disabledTextColor: Colors.black,
  padding: EdgeInsets.all(8.0),
  splashColor: Colors.blueAccent,
  onPressed: () {
  },
  child: Text(
    "Flat Button",
    style: TextStyle(fontSize: 20.0),
  ),
),
            ],
          ),
        ),
      ),
    );
  }
}