import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powmobile/services/ColorService.dart';
import 'package:powmobile/ui/Buttons.dart';
import 'package:powmobile/ui/TextFields.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset('assets/logo.png'),
                  ),
                  Expanded(
                    child: Container()
                  ),
                ],
              ),
              Expanded(
                child: Center(
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text('Вход', style: GoogleFonts.raleway(fontWeight: FontWeight.w800, fontSize: 32.0)),
                        SizedBox(
                          height: 16.0,
                        ),
                        GreenTextField(label: 'Почта', icon: Icons.email_outlined, type: TextInputType.emailAddress,),
                        SizedBox(
                          height: 8.0,
                        ),
                        GreenTextField(label: 'Пароль', icon: Icons.lock_open_outlined, obscure: true, type: TextInputType.visiblePassword,),
                        SizedBox(
                          height: 16.0,
                        ),
                        ElevatedGreenButton(text: 'Войти'),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text('Нет аккаунта? Зарегистрируйтесь!', style: GoogleFonts.raleway(fontWeight: FontWeight.w300, fontSize: 10, color: ColorService().greyColor()), textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}

