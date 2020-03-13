import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class InputSearch extends StatefulWidget {
  InputSearch ({Key key}) : super(key: key);

  @override
  _InputSearch createState() => _InputSearch();
}

class _InputSearch extends State<InputSearch> {
  TextEditingController _controller;

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.only(right: 0.0),
                height: 80,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
//                color: Color(0xFFc9bbb7),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                ),
child: TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'search',
  ),
),
//                  child: RichText(
//                    textAlign: TextAlign.right,
//                    text: TextSpan(
//                      style: TextStyle(
//                        fontSize: 18.0,
//                        color: Colors.black,
//                        fontWeight: FontWeight.normal,
//                      ),
//                      children: <TextSpan>[
//                        TextSpan(text: ' Together\, let\'s build an\n'),
//                        TextSpan(
//                          text: ' OPEN LIBRARY',
//                          style: TextStyle(
//                            fontWeight: FontWeight.w600,
//                            color: Color(0xFF5A768E),
//                          ),
//                        ),
//                        TextSpan(text: '\n for the '),
//                        TextSpan(
//                          text: 'World.',
//                          style: TextStyle(
//                            decoration: TextDecoration.underline,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 0.0),
//                  padding: EdgeInsets.all(0.0),
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                color: Color(0xFF5A768E),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
              ),
//              child: FlatButton(
//                textColor: Color(0xFFDEDBD4),
//                padding: EdgeInsets.all(14.0),
//                onPressed: () {
//                  print('ебать, ты лох');
//                },
//                child: RichText(
//                  textAlign: TextAlign.left,
//                  text: TextSpan(
//                    style: TextStyle(
//                      fontSize: 18.0,
//                      fontWeight: FontWeight.normal,
//                    ),
//                    children: <TextSpan>[
//                      TextSpan(
//                        text: 'SPONSOR ',
//                        style: TextStyle(
//                          fontWeight: FontWeight.w600,
//                        ),
//                      ),
//                      TextSpan(
//                          text: '\na book',
//                          style: TextStyle(
//                              fontFamily: ('Spartan'),
//                              fontWeight: FontWeight.normal,
//                              fontSize: 16.0)),
//                    ],
//                  ),
//                ),
//              ),
            ),
          ],
        ),
      );
  }
}
