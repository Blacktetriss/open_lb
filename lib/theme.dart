import 'package:flutter/material.dart';

class ThemeLb extends StatelessWidget {
  ThemeLb({@required  this.themeLb,});

  final ThemeLb themeLb;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // backgroundColor: Color(0xFFE1DCC5),
        scaffoldBackgroundColor: Color(0xFFE1DCC5),
        accentColor: Color(0xFF02598B),
        fontFamily: 'WorkSans',
        textTheme: TextTheme(
        body1: TextStyle(
          fontFamily: 'WorkSans',
           fontWeight: FontWeight.bold,
           letterSpacing: 2.5,
           fontSize: (14.0),
           ),
      ),
      ),
      );
      }
      }