import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:powmobile/services/ColorService.dart';

class LeaderScreen extends StatelessWidget {
  const LeaderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Table(
          border: TableBorder(borderRadius: BorderRadius.circular(20.0), verticalInside: BorderSide(color: ColorService().primaryColor()), horizontalInside: BorderSide(color: ColorService().primaryColor())),
          columnWidths: const <int, TableColumnWidth>{
            0: FractionColumnWidth(0.65),
            1: FractionColumnWidth(0.35),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[
            TableRow(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0), bottomLeft: Radius.circular(0.0), bottomRight: Radius.circular(0.0)),
                color: ColorService().primaryColor().withOpacity(.15),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('1. pow()', style: GoogleFonts.raleway(fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('639 625 баллов', style: GoogleFonts.raleway()),
                )
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: ColorService().primaryColor().withOpacity(.15),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('...', style: GoogleFonts.raleway(fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('... баллов', style: GoogleFonts.raleway()),
                )
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: ColorService().primaryColor().withOpacity(.15),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('...', style: GoogleFonts.raleway(fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('... баллов', style: GoogleFonts.raleway()),
                )
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: ColorService().primaryColor().withOpacity(.15),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('...', style: GoogleFonts.raleway(fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('... баллов', style: GoogleFonts.raleway()),
                )
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: ColorService().primaryColor().withOpacity(.15),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('...', style: GoogleFonts.raleway(fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('... баллов', style: GoogleFonts.raleway()),
                )
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: ColorService().primaryColor().withOpacity(.15),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('...', style: GoogleFonts.raleway(fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('... баллов', style: GoogleFonts.raleway()),
                )
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: ColorService().primaryColor().withOpacity(.15),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('...', style: GoogleFonts.raleway(fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('... баллов', style: GoogleFonts.raleway()),
                )
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                color: ColorService().primaryColor().withOpacity(.15),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('...', style: GoogleFonts.raleway(fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('... баллов', style: GoogleFonts.raleway()),
                )
              ],
            ),
            TableRow(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(0.0), topRight: Radius.circular(0.0), bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0)),
                color: ColorService().primaryColor().withOpacity(.15),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('50. I PRO', style: GoogleFonts.raleway(fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
                  child: Text('0 баллов', style: GoogleFonts.raleway()),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }

}