import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powmobile/ui/Buttons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(56.0),
              child: Column(
                children: <Widget>[
                  Image.asset('assets/logo.png'),
                  const SizedBox(
                    height: 84.0,
                  ),
                  const ElevatedGreenButton(text: 'Войти'),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const BorderGreenButton(text: 'Зарегистрироваться')
                ],
              ),
            ),
          )
      ),
    );
  }

}

