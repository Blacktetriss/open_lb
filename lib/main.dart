import 'package:flutter/material.dart';
import 'package:open_lb/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF99C0E1),
        scaffoldBackgroundColor: Color(0xFFA39884),
        accentColor: Color(0xFF02598B),
        fontFamily: 'WorkSans',
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.black,
            fontFamily: 'WorkSans',
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
            fontSize: (14.0),
          ),
          body1: TextStyle(
            color: Colors.black,
            fontFamily: 'WorkSans',
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
            fontSize: (14.0),
          ),
        ),
        appBarTheme: AppBarTheme(
          color: Color(0xFF99C0E1),
          textTheme: TextTheme(
          title: TextStyle(
            color: Colors.black,
            fontFamily: 'WorkSans',
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
            fontSize: (24.0),
          ),
      ),
      ),
      ),
            home: Home(),
    );
  }
}
