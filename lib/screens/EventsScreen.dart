import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

import '../ui/Buttons.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return StackedCardCarousel(
            type: StackedCardCarouselType.fadeOutStack,
            spaceBetweenItems: constraints.maxHeight,
            initialOffset: 8,
            items: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Container(
                  height: constraints.maxHeight-15,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Помощь на футбольном матче', style: GoogleFonts.raleway(fontWeight: FontWeight.w800, fontSize: 20),),
                              Text('понедельник, 13 июня 2022', style: GoogleFonts.raleway(fontWeight: FontWeight.w300)),
                              SizedBox(
                                height: 8.0,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Компания: ',
                                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
                                  TextSpan(
                                      text: 'Футбольный клуб «Ананасик»',
                                      style: GoogleFonts.raleway(color: Colors.black)),
                                ]),
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Время: ',
                                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
                                  TextSpan(
                                      text: '14:00',
                                      style: GoogleFonts.raleway(color: Colors.black)),
                                ]),
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Место: ',
                                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
                                  TextSpan(
                                      text: 'Стадион «Шинник» (ул. Гоголя 25)',
                                      style: GoogleFonts.raleway(color: Colors.black)),
                                ]),
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Обязанности: ',
                                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
                                  TextSpan(
                                      text: '\n- Встречать болельщиков\n- Рассаживать болельщиков по местам',
                                      style: GoogleFonts.raleway(color: Colors.black)),
                                ]),
                              ),
                              Spacer(),
                              ElevatedGreenStateButton(text: 'В участии отказано', isGoing: false,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Container(
                  height: constraints.maxHeight-15,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                          color: Colors.yellow,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Помощь на футбольном матче', style: GoogleFonts.raleway(fontWeight: FontWeight.w800, fontSize: 20),),
                              Text('понедельник, 13 июня 2022', style: GoogleFonts.raleway(fontWeight: FontWeight.w300)),
                              SizedBox(
                                height: 8.0,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Компания: ',
                                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
                                  TextSpan(
                                      text: 'Футбольный клуб «Ананасик»',
                                      style: GoogleFonts.raleway(color: Colors.black)),
                                ]),
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Время: ',
                                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
                                  TextSpan(
                                      text: '14:00',
                                      style: GoogleFonts.raleway(color: Colors.black)),
                                ]),
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Место: ',
                                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
                                  TextSpan(
                                      text: 'Стадион «Шинник» (ул. Гоголя 25)',
                                      style: GoogleFonts.raleway(color: Colors.black)),
                                ]),
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Обязанности: ',
                                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
                                  TextSpan(
                                      text: '\n- Встречать болельщиков\n- Рассаживать болельщиков по местам',
                                      style: GoogleFonts.raleway(color: Colors.black)),
                                ]),
                              ),
                              Spacer(),
                              ElevatedGreenStateButton(text: 'Ваша заявка на участие принята', isGoing: true,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Container(
                  height: constraints.maxHeight-15,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                          color: Colors.green,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Помощь на футбольном матче', style: GoogleFonts.raleway(fontWeight: FontWeight.w800, fontSize: 20),),
                              Text('понедельник, 13 июня 2022', style: GoogleFonts.raleway(fontWeight: FontWeight.w300)),
                              SizedBox(
                                height: 8.0,
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Компания: ',
                                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
                                  TextSpan(
                                      text: 'Футбольный клуб «Ананасик»',
                                      style: GoogleFonts.raleway(color: Colors.black)),
                                ]),
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Время: ',
                                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
                                  TextSpan(
                                      text: '14:00',
                                      style: GoogleFonts.raleway(color: Colors.black)),
                                ]),
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Место: ',
                                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
                                  TextSpan(
                                      text: 'Стадион «Шинник» (ул. Гоголя 25)',
                                      style: GoogleFonts.raleway(color: Colors.black)),
                                ]),
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Обязанности: ',
                                      style: GoogleFonts.raleway(fontWeight: FontWeight.w600, color: Colors.black)),
                                  TextSpan(
                                      text: '\n- Встречать болельщиков\n- Рассаживать болельщиков по местам',
                                      style: GoogleFonts.raleway(color: Colors.black)),
                                ]),
                              ),
                              Spacer(),
                              ElevatedGreenStateButton(text: 'В участии отказано', isGoing: false,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }

}