import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_lb/main.dart';
import 'package:open_lb/constr/card.dart';
import 'package:open_lb/constr/input_search.dart';
import 'package:open_lb/constr/sponsor_banner.dart';
import 'package:open_lb/screens/home.dart';

class TitlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('ART LIBRARY'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 1.0),
            height: 268.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                GestureDetector(onTap: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()),);},
                    child: TitleBox('1a.jpg', 'ART 01')),
                GestureDetector(onTap: () {Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomePage()),);},
                    child: TitleBox('2a.jpg', 'FANTASY 02')),
                TitleBox('3a.jpg', 'BIOGRAPHIES'),
                TitleBox('4a.jpg', 'SCIENCE'),
                TitleBox('5a.jpg', 'RECIPES'),
                TitleBox('6a.jpg', 'ROMANCE'),
//                TitleBox('religion.png', 'RELIGION', 'RELIGION'),
//                TitleBox('detectiv.png', 'DETECTIVE', 'DETECTIVE'),
//                TitleBox('audio.png', 'MUSIC', 'MUSIC'),
//                TitleBox('medical.png', 'MEDICINE', 'MEDICINE'),
//                TitleBox('comedy.png', 'PLAYS', 'PLAYS'),
//                TitleBox('history.png', 'HISTORY', 'HISTORY'),
//                TitleBox('child.png', 'CHILDREN', 'CHILDREN'),
//                TitleBox('scienceFF.png', 'SCIENCE FICTION', 'SCIENCE FICTION'),
//                TitleBox('paperbook.png', 'TEXTBOOK', 'TEXTBOOK'),
              ],
            ),
          ),
          SponsorBanner(),
          Container(
            child: Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(8.0),
                height: 80,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
//                child: Text('ads'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}