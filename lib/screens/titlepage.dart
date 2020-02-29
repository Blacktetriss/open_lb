import 'package:flutter/material.dart';

class TitlePage extends StatefulWidget {
  @override
  _TitlePageState createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  // Gender selectedGender;
  // int height = 180;
  // int weight = 60;
  // int age = 20;

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
        backgroundColor: Color(0xFFA39884),
        textTheme: TextTheme(),
        title: Text('ART'),
        // leading: Icon(Icons.view_headline),
      ),
      body: GridView.count(
  primary: false,
  padding: const EdgeInsets.all(20),
  crossAxisSpacing: 7,
  mainAxisSpacing: 7,
  crossAxisCount: 2,
  children: <Widget>[
    Container(
        width: 150,
        height: 180,
        margin: EdgeInsets.all(7.0),
        decoration: BoxDecoration(
          color: Color(0xFFc9bbb7),
          borderRadius: BorderRadius.circular(10.0),),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Image.asset('2613580-M.jpg'),
    Text('Picasso'),
    ],
    ),),

    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Heed not the rabble'),
      color: Colors.teal[200],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Sound of screams but the'),
      color: Colors.teal[300],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Who scream'),
      color: Colors.teal[400],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Revolution is coming...'),
      color: Colors.teal[500],
    ),
    Container(
      padding: const EdgeInsets.all(8),
      child: const Text('Revolution, they...'),
      color: Colors.teal[600],
    ),
  ],
),
  );
}
}
