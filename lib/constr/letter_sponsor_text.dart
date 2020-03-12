import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_lb/screens/letter_sponsorLB.dart';

class TextBlockSpan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        textAlign: TextAlign.left,
        text: TextSpan(
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black54,
            fontWeight: FontWeight.normal,
          ),
          children: <TextSpan>[
            TextSpan(text: '  Book Sponsorship gives readers the power to affect which books are borrowable on Open Library. '
                'Help us fill in the gaps and build a library that leaves no reader or book behind. '
                'The name "Open Library" is more than a hat tip to open source. It’s a commitment to our patrons. '
                'Building a truly Open Library means every reader deserves a say in what\'s on their bookshelf.'
                '\n\n   In 2017, 13 year old '),
            TextSpan(text: 'Marley Dias ',
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),),
            TextSpan(text:'founded the '),
            TextSpan(text: '#1000blackgirlbooks ',
                style: TextStyle(
                    color: Color(0xFF5A768E),
                  decoration: TextDecoration.underline,)),
            TextSpan(text: 'campaign because, she says, '
                '“I was frustrated by the lack of diversity in the books I was reading in school". '
                'We\'re incredibly inspired by Marley\'s example and we see Open Library \as an important opportunity '
                'to change how libraries choose their books. We\'ve been surprised to see that more than half a million readers '
                'like Marley have been using Open Library\'s Want to Read button to identify books they wish were '
                'available to read or borrow.'
                '\n\n     In response, we created a Book Sponsorship Program which gives readers a way to make titles '
                'available through Internet Archive\'s Controlled Digital Lending library. With your help, we hope you\'ll '
                'join us in preserving our cultural heritage and building an Open Library which better represents and '
                'serves our community\'s diverse needs.'
                '\n\n    As you discover eligible titles on Open Library you wish we had, we hope you\'ll consider sponsoring '
                'a copy for the World, forever.'),
            TextSpan(text: ('\n\n*You\'ll be able to reserve the first borrow and leave a custom dedication '
                'message which will show up on the Open Library edition page.'),
            style:TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 14.0,
            )
            ),
          ],
        ),
      ),
    );
  }
}
