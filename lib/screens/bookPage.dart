import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_lb/screens/home.dart';
//import 'package:open_lb/screens/test.dart';
import 'package:open_lb/screens/titlepage.dart';
//import 'package:open_lb/screens/test2.dart';

class BookCover extends StatelessWidget {
  final String imageCard, textCard;

  const BookCover(this.imageCard, this.textCard);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8B8881),
      body:
//      Row(
//        crossAxisAlignment: CrossAxisAlignment.center,
//        mainAxisAlignment: MainAxisAlignment.spaceBetween,
//        children: <Widget>[
//          GestureDetector(
//            onTap: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => HomePage()),
//              );
//            },
//            child:
          SafeArea(
            top: true,
            child: Column(
              children: <Widget>[
                Container(
        margin: EdgeInsets.only(
                bottom: 8.0,
                left: 8.0,
                right: 8.0,
        ),
        height: 300,
        decoration: BoxDecoration(
                color: Color(0xFFc9bbb7),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
        ),
        child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TitlePage(),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      height: 300,
                      child: Image.asset('king.jpg', fit: BoxFit.fitHeight),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 300,
                      width: 100,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Read'),
                              Icon(Icons.local_library, size: 36.0),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Preview'),
                              Icon(Icons.visibility, size: 36.0),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
        ),
      ),
                Container(
                  margin: EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                  ),
                  height: 260,
                  decoration: BoxDecoration(
                    color: Color(0xFFc9bbb7),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    ),
                  ),
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.all(8.0),
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'khlkjhk',
                              style: TextStyle(color: Colors.black,
                                fontSize: (18.0),
                                fontWeight: FontWeight.w500,),),
                            TextSpan(
                              text: '\n\nby ',
                              style: TextStyle(
                                fontSize: 16,
//                            color: Color(0xFF5A768E),
                              ),
                            ),
                            TextSpan(
                              text: 'John Berger',
                              style: TextStyle(
                                backgroundColor: Colors.purpleAccent,
                                fontSize: 16,
//                            color: Color(0xFF5A768E),
                              ),
                            ),
                            TextSpan(
                              text: '\n8 editions - first published in 1999',
                              style: TextStyle(
                                backgroundColor: Colors.cyan,
                                fontSize: 14,
//                            decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        WrapSubjects('Wfdr ggfr b',),
                        WrapSubjects('W1488'),
                        WrapSubjects('KMFDM',),
                        WrapSubjects('1488',),

                      ],
                    ),
                  ],
                ),
                )


    ],),));
  }
}

class WrapSubjects extends StatelessWidget {
  final String subjects;
  const WrapSubjects (this.subjects);
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      direction: Axis.horizontal,
      children: <Widget>[
    Chip(backgroundColor: Colors.lightGreenAccent,
      label: Text(subjects),
    ),
    ],);
  }
}




