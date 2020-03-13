import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_lb/main.dart';
import 'package:open_lb/constr/card.dart';
import 'package:open_lb/screens/titlepage.dart';
import 'package:open_lb/constr/input_search.dart';
import 'package:open_lb/constr/sponsor_banner.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OPEN LIBRARY'),
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(child: SponsorBanner()),
          Container(
            margin: EdgeInsets.symmetric(vertical: 1.0),
            height: 268.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TitlePage()),
                      );
                    },
                    child: TitleBox('art.png', 'ART')),
                TitleBox(
                  'fantasy.png',
                  'FANTASY',
                ),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Container(
                        color: Colors.red,
                        margin: EdgeInsets.all(8.0),
                        child: Image.asset('ads.jpg',
                          fit: BoxFit.fitHeight,),
                      )
                  ),
            ],
          ),
          ],
      ),
    );
  }
}
