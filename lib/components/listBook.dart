import 'dart:developer';
import 'dart:ffi';

import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
//double mainTab = 150;

class ListBook extends StatefulWidget {
  List<Map> data_list = <Map>[];
  bool single_column_assign;
  bool hide_change_column;
  //VoidCallback? onPress;
  var routName;
  ListBook(
      {required this.data_list,
      required this.single_column_assign,
      // required this.onPress,
      required this.routName,
      required this.hide_change_column});

  @override
  _ListBook createState() => _ListBook();
}

class _ListBook extends State<ListBook> {
  void set_status_column(status) {
    setState(() {
      widget.single_column_assign = status;
    });
    //log('check --> ${_single_column}');
  }

  _open_BookInfo(bookData) {
    //log('check bookData --> ${bookData}');
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => widget.routName,
            settings: RouteSettings(arguments: bookData)));
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.width;
    return widget.single_column_assign == false
        ? Center(
            child: Column(
            children: [
              Visibility(
                visible: !widget.hide_change_column,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        set_status_column(!widget.single_column_assign);
                      },
                      icon: Icon(FontAwesomeIcons.tableCellsLarge)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.74,
                width: MediaQuery.of(context).size.width,
                child: GridView.count(
                  padding: EdgeInsets.only(
                      top: widthScreen * 0.01,
                      left: widthScreen * 0.01,
                      right: widthScreen * 0.01,
                      bottom: widthScreen * 0.01),
                  crossAxisSpacing: widthScreen * 0.02,
                  mainAxisSpacing: heightScreen * 0.02,
                  crossAxisCount: 3,
                  childAspectRatio: (1 / 2.2),
                  children: List.generate(widget.data_list.length, (index) {
                    return GestureDetector(
                        onTap: () => _open_BookInfo(widget.data_list[index]),
                        child: Container(
                            // color: Color.fromARGB(255, 247, 156, 156),
                            child: Column(children: <Widget>[
                          GestureDetector(
                            onTap: () =>
                                _open_BookInfo(widget.data_list[index]),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(
                                        0, 6), // changes position of shadow
                                  ),
                                ],
                                image: DecorationImage(
                                    image: NetworkImage(
                                        '${widget.data_list[index]['images']}'),
                                    fit: BoxFit.contain),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * 0.22),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: widthScreen * 0.02,
                              right: widthScreen * 0.02,
                            ),
                            margin: EdgeInsets.only(top: heightScreen * 0.01),
                            child: Text(
                              '${widget.data_list[index]['name']}',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 14),
                            ),
                          ),
                          Text(
                            '${widget.data_list[index]['chapter']} , ${widget.data_list[index]['writer']}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(color: Colors.black),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.only(
                              top: 0,
                              left: widthScreen * 0.02,
                              right: widthScreen * 0.02,
                              bottom: widthScreen * 0.01,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  //   mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    for (int i = 1;
                                        i <= widget.data_list[index]['rating'];
                                        i++)
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
                                Text(
                                  '${widget.data_list[index]['comments']}',
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ])));
                  }),
                ),
              )
            ],
          ))
        : Center(
            child: Column(
            children: [
              Visibility(
                visible: !widget.hide_change_column,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {
                        set_status_column(!widget.single_column_assign);
                      },
                      icon: Icon(FontAwesomeIcons.tableCellsLarge)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.74,
                width: MediaQuery.of(context).size.width,
                child: GridView.count(
                  padding: EdgeInsets.only(
                      top: widthScreen * 0,
                      left: widthScreen * 0.01,
                      right: widthScreen * 0.01,
                      bottom: widthScreen * 0.01),
                  crossAxisSpacing: widthScreen * 0.02,
                  mainAxisSpacing: heightScreen * 0.02,
                  crossAxisCount: 1,
                  childAspectRatio: (1 / 0.6),
                  children: List.generate(widget.data_list.length, (index) {
                    return GestureDetector(
                        onTap: () => _open_BookInfo(widget.data_list[index]),
                        child: Container(
                            margin: EdgeInsets.only(
                                left: widthScreen * 0.02,
                                right: widthScreen * 0.02),
                            decoration: DottedDecoration(),
                            // color: Color.fromARGB(255, 247, 156, 156),
                            child: Row(children: <Widget>[
                              GestureDetector(
                                onTap: () =>
                                    _open_BookInfo(widget.data_list[index]),
                                child: Container(
                                  width: widthScreen * 0.4,
                                  height: heightScreen * 0.5,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 4,
                                        offset: Offset(4, 8), // Shadow position
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            '${widget.data_list[index]['images']}'),
                                        fit: BoxFit.contain),
                                  ),
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Container(
                                    height: heightScreen * 0.03,
                                  ),
                                  Container(
                                    // color: Colors.amber,
                                    width: widthScreen * 0.5,
                                    padding: EdgeInsets.only(
                                      left: widthScreen * 0.02,
                                      right: widthScreen * 0.01,
                                    ),
                                    margin: EdgeInsets.only(
                                        top: heightScreen * 0.01,
                                        left: widthScreen * 0.01),
                                    child: Text(
                                      '${widget.data_list[index]['synopsis']}',
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      maxLines: 9,
                                      style: const TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    // color: Colors.blue,
                                    width: widthScreen * 0.54,
                                    padding: EdgeInsets.only(
                                      top: 0,
                                      left: widthScreen * 0.04,
                                      right: 0,
                                      bottom: widthScreen * 0.04,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          //   mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            for (int i = 1;
                                                i <=
                                                    widget.data_list[index]
                                                        ['rating'];
                                                i++)
                                              Container(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          MediaQuery.of(context)
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
                                          margin: EdgeInsets.only(
                                              left: widthScreen * 0.02),
                                          child: Text(
                                            '${widget.data_list[index]['comments']}',
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 12),
                                          ),
                                        ),
                                        Expanded(
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                                FontAwesomeIcons.caretRight,
                                                size: widthScreen * 0.08),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ])));
                  }),
                ),
              )
            ],
          ));
  }
}
