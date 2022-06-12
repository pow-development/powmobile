import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powmobile/services/ColorService.dart';
import 'package:powmobile/ui/Buttons.dart';
import 'package:powmobile/ui/Selectors.dart';
import 'package:powmobile/ui/TextFields.dart';

class PollScreen extends StatelessWidget {
  const PollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                height: 16.0,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: ColorService().primaryColor(),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Text('Для того, чтобы наш сервис мог с большей точностью находить Вам подходящие мероприятия, пожалуйста, ответьте на следующие вопросы', style: GoogleFonts.raleway(fontWeight: FontWeight.w600, fontSize: 14.0),),
              ),
              SizedBox(
                height: 8.0,
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Text('Опрос', style: GoogleFonts.raleway(fontWeight: FontWeight.w800, fontSize: 38.0),),
                    SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          color: ColorService().primaryColor().withOpacity(.15),
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Column(
                        children: <Widget>[
                          Selectors(text: 'Какой тип волонтерской деятельности вы предпочитаете'),
                          SizedBox(
                            height: 12.0,
                          ),
                          Selectors(text: 'Род Вашей деятельности'),
                          SizedBox(
                            height: 12.0,
                          ),
                          Selectors(text: 'Уровень английского языка'),
                          SizedBox(
                            height: 12.0,
                          ),
                          Selectors(text: 'Сколько времени в неделю вы готовы заниматься волонтерством'),
                          SizedBox(
                            height: 12.0,
                          ),
                          Selectors(text: 'Почему вы хотите заниматься волонтерством'),
                          SizedBox(
                            height: 12.0,
                          ),
                          WhiteTextField(label: 'Адрес проживания'),
                          SizedBox(
                            height: 12.0,
                          ),
                          WhiteTextField(label: 'Краткое резюме', lines: 5,),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 16.0
                    ),
                    ElevatedGreenButton(text: 'Сохранить',)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}