import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_lb/constr/card.dart';
import 'package:open_lb/screens/titlepage.dart';
import 'package:open_lb/constr/input_search.dart';
import 'package:open_lb/constr/sponsor_banner.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            InputSearch(),
            Container(
              height: 260.0,
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
            GestureDetector(child: SponsorBanner()),
            ],
        ),
      ),
    );
  }
}
