import 'package:flutter/material.dart';
// import 'package:open_lb/theme.dart';

class TitleCard extends StatelessWidget {
  TitleCard({@required this.iconcard, this.icontext, this.icontap});


  final Image iconcard;
  final Text icontext;
  final GestureDetector icontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, _TitlePage());
      },
     child: Container(
  width: 150,
  height: 180,
  margin: EdgeInsets.all(7.0),
  padding: EdgeInsets.all(20.0),
  decoration: BoxDecoration(
    color: Colors.orange[100],
    borderRadius: BorderRadius.circular(10.0),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.start,
    children:[
      iconcard,
      icontext,
      ],
    ),
    ),
  );
  }
}

class _TitlePage extends MaterialPageRoute<Null>{
  _TitlePage(): super(builder:(BuildContext context) {
    return AppBar(
      title: Text('1488'),
      elevation: 1.0);
    
  }
  );
}










// class FirstRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('First Route'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('Open route'),
//           onPressed: () {
//             // Navigate to second route when tapped.
//           },
//         ),
//       ),
//     );
//   }
// }

// class SecondRoute extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Route"),
//       ),
//       body: Center(
//         child: RaisedButton(
//           onPressed: () {
//             // Navigate back to first route when tapped.
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }