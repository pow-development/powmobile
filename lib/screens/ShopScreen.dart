import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text('Мерч', style: GoogleFonts.raleway(fontWeight: FontWeight.w700, fontSize: 16.0),),
        SizedBox(
          height: 8.0,
        ),
        GridView.count(
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: const Text("He'd have you all unravel at the"),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[200],
              child: const Text('Heed not the rabble'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[300],
              child: const Text('Sound of screams but the'),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[400],
              child: const Text('Who scream'),
            ),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Text('Поездки', style: GoogleFonts.raleway(fontWeight: FontWeight.w700, fontSize: 16.0),),
      ],
    );
  }

}