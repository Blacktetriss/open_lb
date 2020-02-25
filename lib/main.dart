import 'package:flutter/material.dart';
import 'package:open_lb/constructor.dart';
// import 'package:open_lb/theme.dart';
import 'package:open_lb/titlepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF02598B),
        scaffoldBackgroundColor: Color(0xFFE1DCC5),
        accentColor: Color(0xFF02598B),
        fontFamily: 'WorkSans',
        textTheme: TextTheme(
        body1: TextStyle(
          fontFamily: 'WorkSans',
           fontWeight: FontWeight.bold,
           letterSpacing: 1.0,
           fontSize: (14.0),
           ),
      ),
      ),


home: Scaffold(
  appBar: AppBar(
    title: Text('Open Library'),
    leading: Icon (Icons.view_headline),
    onPressed:(){
      Navigator.push(context, _TitlePage());
    }
    ),

        body:Container(
          color: Color(0xFFF3EDD7),
        margin: EdgeInsets.symmetric(vertical: 1.0),
        height: 200.0,
        child: ListView(
  scrollDirection: Axis.horizontal,
  children: <Widget>[
      TitleCard(
      iconcard: Image.asset('art.png'), 
      icontext: Text('ART'),
      ),
      TitleCard(
      iconcard: Image.asset('fantasy.png'), 
      icontext: Text('FANTASY'),
      ),
      TitleCard(
      iconcard: Image.asset('biography.png'), 
      icontext: Text('BIOGRAPHIES'),
      ),
      TitleCard(
      iconcard: Image.asset('science.png'), 
      icontext: Text('SCIENCE'),
      ),
      TitleCard(
      iconcard: Image.asset('recept.png'), 
      icontext: Text('RECIPES'),
      ),
      TitleCard(
      iconcard: Image.asset('romant.png'), 
      icontext: Text('ROMANCE'),
      ),
      TitleCard(
      iconcard: Image.asset('religion.png'), 
      icontext: Text('RELIGION'),
      ),
      TitleCard(
      iconcard: Image.asset('detectiv.png'), 
      icontext: Text('DETECTIVE'),
      ),
      TitleCard(
      iconcard: Image.asset('audio.png'), 
      icontext: Text('MUSIC'),
      ),
      TitleCard(
      iconcard: Image.asset('medical.png'), 
      icontext: Text('MEDICINE'),
      ),
      TitleCard(
      iconcard: Image.asset('comedy.png'), 
      icontext: Text('PLAYS'),
      ),
      TitleCard(
      iconcard: Image.asset('history.png'), 
      icontext: Text('HISTORY'),
      ),
      TitleCard(
      iconcard: Image.asset('child.png'), 
      icontext: Text('CHILDREN'),
      ),
      TitleCard(
      iconcard: Image.asset('scienceFF.png'), 
      icontext: Text('SCIENCE\nFICTION'),
      ),
      TitleCard(
      iconcard: Image.asset('paperbook.png'), 
      icontext: Text('TEXTBOOK'),
      ),
    ],
  ), 
),

     ), 
     );
  }
}