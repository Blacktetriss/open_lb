import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_lb/screens/home.dart';
import 'package:open_lb/screens/titlepage.dart';
import 'package:open_lb/constr/letter_sponsor_text.dart';

class LetterSponsor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8B8881),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: <Widget>[
                  Container(
                    height: 60,
                    margin: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFc9bbb7),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0),
                      ),
                    ),
                    child: Center(child: TextTop()),
                  ),
                  Container(
                    height: 60,
                    margin: EdgeInsets.fromLTRB(30.0, 13.0, 30.0, 0.0),
                    child: Icon(
                      Icons.close,
                      color: Colors.black54,
                      size: 26.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 1.0),
                margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                decoration: BoxDecoration(
                  color: Color(0xFFc9bbb7),
                ),
                child: TextBlock(),
              ),
            ),
//Text Block

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TitlePage()),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 60,
                    margin: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 30.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF5A768E),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                      ),
                    ),
                    child: Center(child: TextButton()),
                  ),
                ],
              ),
            ),
//            BottomButton
          ],
        ),
      ),
    );
  }
}

class TextBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        TextBlockSpan(),
        SizedBox(),
      ],
    );
  }
}

class TextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          fontSize: 18.0,
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
              text: ' a book',
              style: TextStyle(
                  fontFamily: ('Spartan'),
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0)),
        ],
      ),
    );
  }
}

class TextTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          color: Colors.black54,
          fontSize: 18.0,
          fontWeight: FontWeight.normal,
        ),
        children: <TextSpan>[
          TextSpan(
              text: 'Building an ',
              style: TextStyle(
                fontFamily: ('Spartan'),
                fontWeight: FontWeight.normal,
              )),
          TextSpan(
            text: 'Open Library',
            style: TextStyle(
              color: Color(0xFF5A768E),
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
              text: ', Together',
              style: TextStyle(
                fontFamily: ('Spartan'),
                fontWeight: FontWeight.normal,
              )),
        ],
      ),
    );
  }
}
