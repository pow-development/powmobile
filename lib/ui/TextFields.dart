import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powmobile/services/ColorService.dart';

class GreenTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType type;
  final bool obscure;

  const GreenTextField({Key? key, required this.label, required this.icon, required this.type, this.obscure = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      cursorColor: ColorService().greyColor(),
      keyboardType: type,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorService().primaryColor().withOpacity(.15),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(30.0)
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(30.0)
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0)
        ),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0)
        ),
        prefixIcon: Icon(icon, color: ColorService().greyColor(),),
        labelText: label,
        labelStyle: GoogleFonts.raleway(
          fontWeight: FontWeight.w500,
          color: ColorService().greyColor(),
        )
      ),
    );
  }

}

class WhiteTextField extends StatelessWidget {
  final String label;
  final int lines;

  const WhiteTextField({Key? key, required this.label, this.lines = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorService().greyColor(),
      keyboardType: TextInputType.multiline,
      maxLines: lines,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(30.0)
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(30.0)
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0)
        ),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0)
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0)
        ),
        labelText: label,

        labelStyle: GoogleFonts.raleway(
          fontWeight: FontWeight.w300,
          color: ColorService().greyColor(),
        )
      ),
    );
  }

}