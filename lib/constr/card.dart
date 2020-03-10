import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TitleBox extends StatelessWidget {
  final String imageCard, textCard;

  const TitleBox(this.imageCard, this.textCard);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 220,
      margin: EdgeInsets.all(7.0),
      padding: EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        color: Color(0xFFc9bbb7),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 145,
            height: 180,
            child: Image.asset(imageCard, fit: BoxFit.fitWidth),
          ),
          Text(
            textCard,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: ('Spartan'),
                fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
