import 'package:flutter/material.dart';
import 'package:open_lb/screens/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xFFc9bbb7),
        backgroundColor: Color(0xFF8B8881),
        scaffoldBackgroundColor: Color(0xFF8B8881),
        fontFamily: 'Spartan',
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.black,
            fontFamily: 'Spartan',
            fontWeight: FontWeight.normal,
            fontSize: (14.0),
          ),
        ),
        appBarTheme: AppBarTheme(
          actionsIconTheme: IconThemeData(color: Colors.black),
          color: Color(0xFF8B8881),
          textTheme: TextTheme(
          title: TextStyle(
            color: Colors.black,
            fontFamily:'Spartan',
//            fontWeight: FontWeight.bold,
//            letterSpacing: 1.0,
            fontSize: (20.0),
            fontWeight: FontWeight.w500,
          ),
      ),
      ),
      buttonTheme: ButtonThemeData(
        disabledColor: Color(0xFF5A768E),
        buttonColor: Color(0xFF5A768E),
//        textTheme: ButtonTextTheme.normal,
        )
      ),
        home: HomePage(),
    );
  }
}


