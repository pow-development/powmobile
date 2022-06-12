import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powmobile/services/ColorService.dart';
import 'package:powmobile/ui/Buttons.dart';
import 'package:powmobile/ui/TextFields.dart';

enum Genders {man, woman}

class RegScreen extends StatefulWidget {
  const RegScreen({Key? key}) : super(key: key);

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  Genders? _genders = Genders.man;

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
              SizedBox(
                height: 32.0,
              ),
              Expanded(
                child: Center(
                  child: ListView(
                    children: <Widget>[
                      Text('Регистрация', style: GoogleFonts.raleway(fontWeight: FontWeight.w800, fontSize: 32.0)),
                      SizedBox(
                        height: 16.0,
                      ),
                      GreenTextField(label: 'Фамилия', icon: Icons.person, type: TextInputType.text),
                      SizedBox(
                        height: 8.0,
                      ),
                      GreenTextField(label: 'Имя', icon: Icons.person, type: TextInputType.text,),
                      SizedBox(
                        height: 8.0,
                      ),
                      GreenTextField(label: 'Дата рождения', icon: Icons.date_range, type: TextInputType.datetime),
                      SizedBox(
                        height: 8.0,
                      ),
                      Column(
                        children: <Widget>[
                          ListTile(
                            title: Text('Мужской', style: GoogleFonts.raleway()),
                            leading: Radio<Genders>(
                              fillColor: MaterialStateProperty.all(ColorService().primaryColor()),
                              value: Genders.man,
                              groupValue: _genders,
                              onChanged: (Genders? value) {
                                setState(() {
                                  _genders = value;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: Text('Женский', style: GoogleFonts.raleway(),),
                            leading: Radio<Genders>(
                              fillColor: MaterialStateProperty.all(ColorService().primaryColor()),
                              overlayColor: MaterialStateProperty.all(ColorService().primaryColor()),
                              value: Genders.woman,
                              groupValue: _genders,
                              splashRadius: 0.0,

                              onChanged: (Genders? value) {
                                setState(() {
                                  _genders = value;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      GreenTextField(label: 'Номер телефона', icon: Icons.lock_open_outlined, type: TextInputType.phone),
                      SizedBox(
                        height: 8.0,
                      ),
                      GreenTextField(label: 'Почта', icon: Icons.email_outlined, type: TextInputType.emailAddress,),
                      SizedBox(
                        height: 8.0,
                      ),
                      GreenTextField(label: 'Пароль', icon: Icons.lock_open_outlined, obscure: true, type: TextInputType.visiblePassword),
                      SizedBox(
                        height: 16.0,
                      ),
                      ElevatedGreenButton(text: 'Зарегистрироваться'),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text('Уже есть аккаунта? Авторизуйтесь!', style: GoogleFonts.raleway(fontWeight: FontWeight.w300, fontSize: 10, color: ColorService().greyColor()), textAlign: TextAlign.center,)
                    ],
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

