import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_line/dotted_line.dart';
//double mainTab = 150;

class HeaderSuRaSri extends StatefulWidget {
  // List<Widget> widgetsList;
  // HeaderSuRaSri({required this.widgetsList});

  @override
  _HeaderSuRaSri createState() => _HeaderSuRaSri();
}

class _HeaderSuRaSri extends State<HeaderSuRaSri> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.07),
          child: Text('SuRaSri',
              style: GoogleFonts.bilbo(
                  textStyle: TextStyle(
                      color: Color.fromRGBO(29, 86, 102, 100), fontSize: 70))),
        ),
        Container(
          margin:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.width * 0.01),
          child: Text(
            'Reading Hub',
            style: const TextStyle(
                fontSize: 25, color: Color.fromRGBO(29, 86, 102, 100)),
          ),
        ),
      ],
    );
  }
}
