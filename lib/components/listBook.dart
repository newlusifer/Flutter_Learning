import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
//double mainTab = 150;

class ListBook extends StatefulWidget {
  List<Map> data_list = <Map>[];
  ListBook({required this.data_list});

  @override
  _ListBook createState() => _ListBook();
}

class _ListBook extends State<ListBook> {
  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.width;
    return Center(
        child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.795,
      width: MediaQuery.of(context).size.width,
      child: GridView.count(
        padding: EdgeInsets.only(
            top: widthScreen * 0.01,
            left: widthScreen * 0.01,
            right: widthScreen * 0.01,
            bottom: widthScreen * 0.01),
        crossAxisSpacing: widthScreen * 0.02,
        mainAxisSpacing: heightScreen * 0.01,
        crossAxisCount: 3,
        childAspectRatio: (1 / 1.5),
        children: List.generate(widget.data_list.length, (index) {
          return Container(
              // color: Color.fromARGB(255, 247, 156, 156),
              child: Column(children: <Widget>[
            Container(
              width: widthScreen * 0.25,
              height: heightScreen * 0.3,
              child: ElevatedButton(
                  onPressed: () {
                    log('testjaa');
                  },
                  child: FittedBox(
                      child:
                          Image.network('${widget.data_list[index]['images']}'),
                      fit: BoxFit.fill),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white.withOpacity(0.1),
                      elevation: 10,
                      padding: EdgeInsets.all(0.0))),
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
                style: const TextStyle(color: Colors.black, fontSize: 14),
              ),
            ),
            Text(
              '${widget.data_list[index]['chapter']}',
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
                                left:
                                    MediaQuery.of(context).size.width * 0.005),
                            child: Icon(
                              FontAwesomeIcons.solidHeart,
                              color: Colors.black,
                              size: MediaQuery.of(context).size.width * 0.03,
                            )),
                    ],
                  ),
                  Text(
                    '${widget.data_list[index]['price']}',
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
          ]));
        }),
      ),
    ));
  }
}
