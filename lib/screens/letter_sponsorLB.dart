import 'package:flutter/material.dart';
import 'package:open_lb/screens/home.dart';


class LetterSponsor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 300,
                height: 300,
                margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
                decoration: BoxDecoration(
                    color: Color(0xFFc9bbb7),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )
                ),
                child: Text('1488')
              ),

              Container(
                width: 300,
                height: 52,
                decoration: BoxDecoration(
                  color: Color(0xFFB2AFA8),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                  ),
                ),
                child:Center(
                  child: Text('8888888',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: ('Spartan'),
                        fontSize: 16.0),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
