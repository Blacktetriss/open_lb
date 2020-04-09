import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_lb/constr/card.dart';
import 'package:open_lb/constr/input_search.dart';
import 'package:open_lb/screens/home.dart';
import 'package:open_lb/constr/ListTileHorizontalView.dart';

class TitlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            InputSearch(),
            Container(
              height: 400.0,
              child: BooksViewList()),
          ],
        ),
      ),
    );
  }
}
