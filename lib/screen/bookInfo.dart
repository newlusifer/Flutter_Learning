import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import '../components/headerBackBtn.dart';
import 'bookReading.dart';

class BookInfo extends StatefulWidget {
  static const routeName = '/bookInfo';
  const BookInfo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BookInfo();
  }
}

class _BookInfo extends State<BookInfo> {
  bool _statusBook = true;
  bool get statusBook => _statusBook;
  @override
  Widget build(BuildContext context) {
    final arg =
        ModalRoute.of(context)!.settings.arguments as Map; //recieve parameter
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.width;

    _change_statusBook() {
      setState(() {
        _statusBook = !_statusBook;
      });
    }

    _open_readingBook(index) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BookReading(),
              settings: RouteSettings(arguments: <dynamic, dynamic>{
                'chapter': index,
                'dataBook': arg,
              })));
    }

    return Scaffold(

        // appBar: AppBar(
        //   title: Text('Home'),
        // ),

        body: Center(
            child: Column(
      children: <Widget>[
        HeaderBackBtn(title: '${arg['name']}'),
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                  top: heightScreen * 0.02, left: widthScreen * 0.02),
              width: widthScreen * 0.4,
              height: heightScreen * 0.55,
              child: Image.network(arg['images']),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(
                      right: widthScreen * 0.02,
                      left: widthScreen * 0.02,
                      top: heightScreen * 0.01),
                  // color: Colors.amber,
                  //width: widthScreen * 0.55,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Book Name : ${arg['name']}',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          maxLines: 2,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 14),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Chapter : ${arg['chapter']}\nPage : ${arg['comments']}\nWriter : ${arg['writer']}\nStatus : ${arg['status']}\nPrice : ${arg['price']}\nLast Update : ${arg['Last Update']}',
                          // overflow: TextOverflow.ellipsis,
                          //textAlign: TextAlign.left,
                          //  maxLines: 2,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 14, height: 1.5),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          // color: Colors.blue,
                          // width: widthScreen * 0.54,
                          padding: EdgeInsets.only(
                            top: heightScreen * 0.01,
                            left: widthScreen * 0,
                            right: 0,
                            bottom: widthScreen * 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                //   mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  for (int i = 1; i <= arg['rating']; i++)
                                    Container(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.005),
                                        child: Icon(
                                          FontAwesomeIcons.solidHeart,
                                          color: Colors.black,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.03,
                                        )),
                                ],
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(left: widthScreen * 0.02),
                                child: Text(
                                  '${arg['comments']}',
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(FontAwesomeIcons.swatchbook,
                              size: widthScreen * 0.06),
                          Container(
                            margin: EdgeInsets.only(left: widthScreen * 0.01),
                            child: Icon(
                              statusBook == true
                                  ? FontAwesomeIcons.deleteLeft
                                  : FontAwesomeIcons.plus,
                              size: widthScreen * 0.05,
                            ),
                          ),
                          Expanded(
                            child: Container(
                                margin:
                                    EdgeInsets.only(left: widthScreen * 0.02),
                                child: ElevatedButton(
                                  onPressed: () {
                                    _change_statusBook();
                                  },
                                  child: Text(statusBook == true
                                      ? 'Remove from shelf'
                                      : 'Add to Shelf'),
                                  style: ElevatedButton.styleFrom(
                                      primary: statusBook == true
                                          ? Colors.red
                                          : Colors.green),
                                )),
                          ),
                        ],
                      ),
                    ],
                  )),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.all(widthScreen * 0.03),
          child: Text(
            '${arg['synopsis']}',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            maxLines: 4,
            style: const TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
        Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0,
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.03,
                bottom: 0),
            child: DottedLine()),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(bottom: heightScreen * 0.03),
            width: widthScreen * 0.93,
            //  color: Colors.amber,
            child: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                for (int i = 1; i <= 5; i++)
                  Container(
                      decoration: DottedDecoration(),
                      child: GestureDetector(
                        onTap: () {
                          _open_readingBook(i);
                        },
                        child: Row(
                          children: <Widget>[
                            Container(
                                // color: Colors.blue,
                                width: widthScreen * 0.25,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(
                                          bottom: heightScreen * 0.02,
                                          top: heightScreen * 0.02),
                                      child: Text(
                                        'Chapter ${i} : ',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 14),
                                      ),
                                    ),
                                    Icon(
                                      FontAwesomeIcons.book,
                                      size: widthScreen * 0.08,
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                          bottom: heightScreen * 0.02,
                                          top: heightScreen * 0.02),
                                      child: Text(
                                        'Read',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 14),
                                      ),
                                    ),
                                  ],
                                )),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(widthScreen * 0.03),
                                child: Text(
                                  '${arg['synopsis']}',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  maxLines: 4,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
              ],
            )),
          ),
        ),
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

class ChapterAndBookData {
  ChapterAndBookData({required this.chapter, required this.bookdata});
  var chapter;
  var bookdata;

  // bool get isGermanCapital {
  //   return country == 'Germany' && city == 'Berlin';
  // }
}
