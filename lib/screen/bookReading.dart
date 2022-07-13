import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../components/headerSuRaSri.dart';
import '../components/listBook.dart';
import 'package:dotted_line/dotted_line.dart';
import 'bookInfo.dart';

class BookReading extends StatefulWidget {
  static const routeName = '/bookReading';
  const BookReading({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BookReading();
  }
}

class _BookReading extends State<BookReading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        // appBar: AppBar(
        //   title: Text('Home'),
        // ),

        body: Center(
            child: Column(
      children: <Widget>[
        Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: Text(
              'BookShelf',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF000000),
              ),
            )),
        DottedLine_New(),
      ],
    )));
  }
}

class DottedLine_New extends StatelessWidget {
  const DottedLine_New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.width * 0.03,
            left: MediaQuery.of(context).size.width * 0.03,
            right: MediaQuery.of(context).size.width * 0.03,
            bottom: 0),
        child: DottedLine());
  }
}
