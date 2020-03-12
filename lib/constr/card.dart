import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleBox extends StatelessWidget {
  final String imageCard, textCard;

  const TitleBox(this.imageCard, this.textCard);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            width: 180,
            height: 200,
            margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
            decoration: BoxDecoration(
              color: Color(0xFFc9bbb7),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
              )
            ),
//          child: SizedBox(
//            width: 100,
//            height: 100,
            child: Image.asset(imageCard,
                  fit: BoxFit.scaleDown,
              ),
          ),

    Container(
    width: 180,
    height: 52,
    decoration: BoxDecoration(
    color: Color(0xFFB2AFA8),
    borderRadius: BorderRadius.only(
    bottomRight: Radius.circular(10.0),
    bottomLeft: Radius.circular(10.0),
    ),
    ),
    child:Center(
      child: Text(
              textCard,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: ('Spartan'),
                  fontSize: 16.0),
            ),
    ),
    ),
      ],
    );
  }
}
