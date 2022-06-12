import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powmobile/services/ColorService.dart';

class Selectors extends StatelessWidget {
  final String text;

  const Selectors({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0)
      ),
      child: Row(
        children: <Widget>[
          Expanded(child: Text(text, style: GoogleFonts.raleway(fontWeight: FontWeight.w500),)),
          Icon(Icons.keyboard_arrow_down, color: ColorService().primaryColor(),)
        ],
      ),
    );
  }
  
}