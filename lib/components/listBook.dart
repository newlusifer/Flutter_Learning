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
    return ResponsiveGridList(
      shrinkWrap: true,
      // horizontalGridMargin: 10,
      //  verticalGridMargin: 35,
      minItemWidth: 100,
      maxItemsPerRow: 3,
      children: List.generate(
        widget.data_list.length,
        (index) => Container(
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.all(0),
              child: TextButton(
                  onPressed: () {
                    log('${widget.data_list.toList()}');
                  },
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {
                            log('test');
                          },
                          child: Image.network(
                              '${widget.data_list[index]['images']}'),
                        ),
                        Text(
                          '${widget.data_list[index]['name']}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.black),
                        ),
                        Text(
                          '${widget.data_list[index]['chapter']}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.black),
                        ),
                        Text(
                          '${widget.data_list[index]['writer']}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ))),
        ),
      ),
    );
  }
}
