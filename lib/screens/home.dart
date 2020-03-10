import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:open_lb/main.dart';
import 'package:open_lb/constr/card.dart';
//import 'package:open_lb/screens/titlepage.dart';
import 'package:open_lb/constr/input_search.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('OPEN LIBRARY'),

      ),
      body: Column(
        children: <Widget>[
          InputSearch(),
          Container(
              color: Color(0xFFA39884),
              margin: EdgeInsets.symmetric(vertical: 1.0),
              height: 230.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              TitleBox('art.png', 'ART'),
              TitleBox('fantasy.png', 'FANTASY'),
              TitleBox('biography.png', 'BIOGRAPHIES'),
              TitleBox('science.png', 'SCIENCE'),
              TitleBox('recept.png', 'RECIPES'),
              TitleBox('romant.png', 'ROMANCE'),
              TitleBox('religion.png', 'RELIGION'),
              TitleBox('detectiv.png', 'DETECTIVE'),
              TitleBox('audio.png', 'MUSIC'),
              TitleBox('medical.png', 'MEDICINE'),
              TitleBox('comedy.png', 'PLAYS'),
              TitleBox('history.png', 'HISTORY'),
              TitleBox('child.png', 'CHILDREN'),
              TitleBox('scienceFF.png', 'SCIENCE FICTION'),
              TitleBox('paperbook.png', 'TEXTBOOK'),
            ],
          ),
          ),
        ],
      ),
    );
  }
}
