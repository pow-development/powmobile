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
            Image.asset('assets/shop.png'),
            Image.asset('assets/shop.png'),
            Image.asset('assets/shop.png'),
            Image.asset('assets/shop.png'),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Text('Поездки', style: GoogleFonts.raleway(fontWeight: FontWeight.w700, fontSize: 16.0),),
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
            Image.asset('assets/shop.png'),
            Image.asset('assets/shop.png'),
          ],
        ),
      ],
    );
  }

}