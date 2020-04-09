import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:open_lb/screens/letter_sponsorLB.dart';
import 'package:open_lb/screens/sponsor_book.dart';

class SponsorBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LetterSponsor()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(0.0),
                margin: EdgeInsets.only(right: 0.0),
                height: 60,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
//                color: Color(0xFFc9bbb7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                ),
                child: RichText(
                  textAlign: TextAlign.right,
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: ' Together\, let\'s build an\n'),
                      TextSpan(
                        text: ' OPEN LIBRARY ',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF5A768E),
                        ),
                      ),
                      TextSpan(
                        text: 'for the World.',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
//            margin: EdgeInsets.only(left: 0.0),
//                  padding: EdgeInsets.all(0.0),
            height: 60,
            width: 120,
            decoration: BoxDecoration(
              color: Color(0xFF5A768E),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SponsorBooksPage()),
                );
              },
              child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'SPONSOR',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                        text: '\na book',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0)),
                  ],
                ),
              ),
            ),
          ),
    Container(
    padding: EdgeInsets.all(0.0),
    margin: EdgeInsets.only(right: 0.0),
    height: 60,
    width: 10,
    decoration: BoxDecoration(
    color: Colors.cyanAccent,
    borderRadius: BorderRadius.only(
    topRight: Radius.circular(10.0),
    bottomRight: Radius.circular(10.0),
    ),
    ),)
        ],
      ),
    );
  }
}
