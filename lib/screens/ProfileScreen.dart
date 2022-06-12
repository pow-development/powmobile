import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powmobile/services/ColorService.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Text(
          'Ilya Tampio',
          textAlign: TextAlign.center,
          style:
              GoogleFonts.raleway(fontWeight: FontWeight.w600, fontSize: 24.0),
        ),
        SizedBox(
          height: 4.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.workspace_premium,
              color: ColorService().primaryColor(),
            ),
            SizedBox(
              width: 4.0,
            ),
            Text(
              '9435 баллов',
              style: GoogleFonts.raleway(),
            )
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Image.asset('assets/profile.png'),
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          'Опыт:',
          style:
              GoogleFonts.raleway(fontWeight: FontWeight.w600, fontSize: 12.0),
        ),
        SizedBox(
          height: 4.0,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: LinearProgressIndicator(
            color: ColorService().primaryColor(),
            backgroundColor: ColorService().primaryColor().withOpacity(.15),
            minHeight: 6.0,
            value: 0.5,
          ),
        ),
        SizedBox(
          height: 4.0,
        ),
        Row(
          children: <Widget>[
            Text(
              '291/1000',
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.0,
                  fontStyle: FontStyle.italic),
            ),
            Spacer(),
            Text(
              'Уровень 5',
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.0,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
        SizedBox(
          height: 8.0,
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'Возраст: ',
                style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
            TextSpan(
                text: '14 лет',
                style: GoogleFonts.raleway(color: Colors.black)),
          ]),
        ),
        SizedBox(
          height: 4.0,
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'Район: ',
                style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
            TextSpan(
                text: 'Ховрино',
                style: GoogleFonts.raleway(color: Colors.black)),
          ]),
        ),
        SizedBox(
          height: 4.0,
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'Состоит в команде: ',
                style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
            TextSpan(
                text: 'pow()', style: GoogleFonts.raleway(color: Colors.black)),
          ]),
        ),
        SizedBox(
          height: 4.0,
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'Тип волонтерской деятельности: ',
                style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
            TextSpan(
                text: 'социальная, спортивная',
                style: GoogleFonts.raleway(color: Colors.black)),
          ]),
        ),
        SizedBox(
          height: 4.0,
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'Уровень английского языка: ',
                style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
            TextSpan(
                text: 'B2', style: GoogleFonts.raleway(color: Colors.black)),
          ]),
        ),
        SizedBox(
          height: 4.0,
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'Готов заниматься волонтерством: ',
                style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
            TextSpan(
                text: '1-2 раза в неделю',
                style: GoogleFonts.raleway(color: Colors.black)),
          ]),
        ),
      ],
    );
  }
}
