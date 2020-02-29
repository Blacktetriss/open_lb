import 'package:flutter/material.dart';
import 'package:open_lb/constructor.dart';
import 'package:open_lb/input_search.dart';
import 'package:open_lb/screens/titlepage.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA39884),
        textTheme: TextTheme(),
        title: Text('OPEN LIBRARY'),
        leading: Icon(Icons.view_headline),
      ),
      body: Column(
        children: <Widget>[
          Container(
            // child: Container(
              color: Color(0xFFA39884),
              margin: EdgeInsets.symmetric(vertical: 1.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  TitleCard(
                    iconcard: Image.asset('art.png'),
                    icontext: Text('ART'),
                    // icontap: GestureDetector(),
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
          InputSearch(),
        ],
      ),
    );
  }
}
