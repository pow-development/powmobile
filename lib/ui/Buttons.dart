import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powmobile/services/ColorService.dart';

class ElevatedGreenButton extends StatelessWidget {
  final String text;

  const ElevatedGreenButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {

        },
        child: Text(text, style: GoogleFonts.raleway(fontWeight: FontWeight.w400, fontSize: 18.0),),
        style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
              )
          ),
          backgroundColor: MaterialStateProperty.all(ColorService().primaryColor())
        ),
      ),
    );
  }
}

class BorderGreenButton extends StatelessWidget {
  final String text;

  const BorderGreenButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      width: double.infinity,
      child: ElevatedButton(

        onPressed: () {

        },
        child: Text(text, style: GoogleFonts.raleway(fontWeight: FontWeight.w400, fontSize: 18.0, color: Colors.black),),
        style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  side: BorderSide(color: ColorService().primaryColor().withOpacity(0.15))
              )
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent)
        ),
      ),
    );
  }
}