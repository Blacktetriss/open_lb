import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_lb/screens/bookPage.dart';
import 'package:open_lb/screens/home.dart';
import 'package:http/http.dart' as http;


class BooksViewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _booksListView(context);
  }
}

// replace this function with the code in the examples
Widget _booksListView(BuildContext context) {
  return ListView.builder(
    itemBuilder: (context, index) {
      return BookCardView(
      );
    },
  );
}


class BookCardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookCover('king_L.jpg', 'R I N G')),
                );
              },
              child: Container(
                padding: EdgeInsets.all(4.0),
                margin: EdgeInsets.only(right: 0.0),
                height: 120,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
//                color: Color(0xFFc9bbb7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.right,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'King: a street story',
                          style: TextStyle(color: Colors.black,
                            fontSize: (18.0),
                            fontWeight: FontWeight.w500,),),
                        TextSpan(
                          text: '\nBy John Berger',
                          style: TextStyle(
//                            fontSize: 14,
//                            color: Color(0xFF5A768E),
                          ),
                        ),
                         TextSpan(
                          text: '\nfirst published in 1999',
                          style: TextStyle(
                            fontSize: 14,
//                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 0.0),
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Color(0xFF5A768E),
                  borderRadius: BorderRadius.only(
//                    topRight: Radius.circular(10.0),
//                    bottomRight: Radius.circular(10.0),
                  ),
                ),),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Container(
                width: 80,
                height: 120,
                child: Image.asset(
                  'king.jpg',
                  fit: BoxFit.fitHeight),
              ),
          ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(0.0),
            margin: EdgeInsets.only(right: 0.0),
            height: 120,
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

