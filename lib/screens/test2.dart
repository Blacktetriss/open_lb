//import 'dart:async';
//import 'dart:convert';



//import 'package:flutter/foundation.dart';
//import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;
//
//
//@JsonSerializable(fieldRename: FieldRename.snake)
//class Book {
//  final String key;
//  final String title;
//  final String authorKey;
//  final String firstPublishYear;
//  final int editionCount;
//
//  Book({
//    this.key,
//    this.title,
//    this.authorKey,
//    this.firstPublishYear,
//    this.editionCount});
//
//  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
//  Map<String, dynamic> toJson() => _$BookToJson(this);
//
//}
//
//Future<List<Book>> fetchBooks(http.Client client) async {
//  final response =
//  await client.get('http://openlibrary.org/search.json?title=oko');
//
//  // Use the compute function to run parsePhotos in a separate isolate.
//  return compute(parseBooks, response.body);
//}
//
//// A function that converts a response body into a List<Photo>.
//List<Book> parseBooks(String responseBody) {
//  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
//  return parsed.map<Book>((json) => Book.fromJson(json)).toList();
//
//}
////class Book {
////  final String key;
////  final String title;
////  final String authorKey;
////  final String thumbnailUrl;
////
////  Book({this.key, this.title, this.authorKey, this.thumbnailUrl});
////
////  factory Book.fromJson(Map<String, dynamic> json) {
////    return Book(
////      key: json['key'] as String,
////      title: json['title'] as String,
////      authorKey: json['author_key'] as String,
////      thumbnailUrl: json['thumbnailUrl'] as String,
////    );
////  }
////}
//
//
//class BooksViewList extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return _booksListView(context);
//  }
//}
//
//Widget _booksListView(BuildContext context) {
//  return ListView.builder(
//    itemBuilder: (context, index) {
//      return BookCardView(
//      );
//    },
//  );
//}
//
//
//class BookCardView extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      margin: EdgeInsets.all(2.0),
//      child: Row(
//          mainAxisSize: MainAxisSize.max,
//          children: <Widget>[
//            Text('hdskhfdskj')]);
////          Expanded(
////            child: Container(
////              padding: EdgeInsets.all(4.0),
////              margin: EdgeInsets.only(right: 0.0),
////              height: 120,
////              decoration: BoxDecoration(
////                color: Theme.of(context).accentColor,
//////                color: Color(0xFFc9bbb7),
////                borderRadius: BorderRadius.only(
////                  topLeft: Radius.circular(10.0),
////                  bottomLeft: Radius.circular(10.0),
////                ),
////              ),
////
////              child: Center(
////                child: RichText(
////                  textAlign: TextAlign.right,
////                  text: TextSpan(
////                    style: TextStyle(
////                      fontSize: 16.0,
////                      color: Colors.black,
////                      fontWeight: FontWeight.normal,
////                    ),
////                    children: <TextSpan>[
////                      TextSpan(
////                        text: Book.fromJson(title.json),
////                        style: TextStyle(color: Colors.black,
////                          fontSize: (18.0),
////                          fontWeight: FontWeight.w500,),),
////                      TextSpan(
////                        text: '\nBy John Berger',
////                        style: TextStyle(
//////                            fontSize: 14,
//////                            color: Color(0xFF5A768E),
////                        ),
////                      ),
////                      TextSpan(
////                        text: '\nfirst published in 1999',
////                        style: TextStyle(
////                          fontSize: 14,
//////                            decoration: TextDecoration.underline,
////                        ),
////                      ),
////                    ],
////                  ),
////                ),
////              ),
////            ),
////          ),
////          Stack(
////            children: <Widget>[
////              Container(
////                margin: EdgeInsets.only(left: 0.0),
////                height: 120,
////                width: 120,
////                decoration: BoxDecoration(
////                  color: Color(0xFF5A768E),
////                  borderRadius: BorderRadius.only(
//////                    topRight: Radius.circular(10.0),
//////                    bottomRight: Radius.circular(10.0),
////                  ),
////                ),),
////              Container(
////                width: 80,
////                height: 120,
////                child: Image.asset(
////                    'king.jpg',
////                    fit: BoxFit.fitHeight),
////              ),
////            ],
////          ),
////          Container(
////            padding: EdgeInsets.all(0.0),
////            margin: EdgeInsets.only(right: 0.0),
////            height: 120,
////            width: 10,
////            decoration: BoxDecoration(
////              color: Colors.cyanAccent,
////              borderRadius: BorderRadius.only(
////                topRight: Radius.circular(10.0),
////                bottomRight: Radius.circular(10.0),
////              ),
////            ),)
//      ],
//    ),
//    );
//  }
//}
//
