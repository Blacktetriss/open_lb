import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_lb/constr/card.dart';
import 'package:open_lb/constr/input_search.dart';
import 'package:open_lb/screens/home.dart';

class SponsorBooksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        leading: Icon(Icons.menu),
//        title: Text('BOOKS TO SPONSOR'),
//      ),
      body: Column(
        children: <Widget>[
          InputSearch(),
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
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: TitleBox('s4.jpg', 'Sponsor eBook')),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: TitleBox('s7.jpg', 'Sponsor eBook')),
                TitleBox('s1.jpg', 'Sponsor eBook'),
                TitleBox('s2.jpg', 'Sponsor eBook'),
                TitleBox('s3.jpg', 'Sponsor eBook'),
                TitleBox('s5.jpg', 'Sponsor eBook'),
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

          Container(
            child: Expanded(
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
                  child: Container(
                    color: Colors.red,
                    margin: EdgeInsets.all(8.0),
                    child: Image.asset('ads.jpg',
                      fit: BoxFit.scaleDown,),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
