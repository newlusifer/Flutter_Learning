import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../components/headerSuRaSri.dart';
import '../components/listBook.dart';
import 'package:dotted_line/dotted_line.dart';

class BookShelf extends StatefulWidget {
  static const routeName = '/bookShelf';
  const BookShelf({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BookShelf();
  }
}

class _BookShelf extends State<BookShelf> {
  List<Map> bookList = <Map>[
    {
      'name': 'โกรธแค้นที่แสนหวาน',
      'rating': 5,
      'prize': 500,
      'images':
          'https://storage.naiin.com/system/application/bookstore/resource/product/202205/548250/6000060494_front_XXL.jpg?imgname=%E0%B9%82%E0%B8%81%E0%B8%A3%E0%B8%98%E0%B9%81%E0%B8%84%E0%B9%89%E0%B8%99%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B9%81%E0%B8%AA%E0%B8%99%E0%B8%AB%E0%B8%A7%E0%B8%B2%E0%B8%99-(%E0%B8%9F%E0%B8%A3%E0%B8%B5)',
      'writer': 'กรแก้ว',
      'chapter': 'ตอนที่ 1',
    },
    {
      'name': 'เร้นรักใต้เงาจันทร์ - อาโกว ชะตารักนิรันดร์',
      'rating': 4,
      'prize': 400,
      'images':
          'https://storage.naiin.com/system/application/bookstore/resource/product/202205/548230/6000060483_front_XXL.jpg?imgname=%E0%B9%80%E0%B8%A3%E0%B9%89%E0%B8%99%E0%B8%A3%E0%B8%B1%E0%B8%81%E0%B9%83%E0%B8%95%E0%B9%89%E0%B9%80%E0%B8%87%E0%B8%B2%E0%B8%88%E0%B8%B1%E0%B8%99%E0%B8%97%E0%B8%A3%E0%B9%8C---%E0%B8%AD%E0%B8%B2%E0%B9%82%E0%B8%81%E0%B8%A7-%E0%B8%8A%E0%B8%B0%E0%B8%95%E0%B8%B2%E0%B8%A3%E0%B8%B1%E0%B8%81%E0%B8%99%E0%B8%B4%E0%B8%A3%E0%B8%B1%E0%B8%99%E0%B8%94%E0%B8%A3%E0%B9%8C-(%E0%B8%9F%E0%B8%A3%E0%B8%B5)',
      'writer': 'T.O.P',
      'chapter': 'ตอนที่ 2',
    },
    {
      'name': 'เพียงครั้งในค่ำคืน',
      'rating': 3,
      'prize': 300,
      'images':
          'https://storage.naiin.com/system/application/bookstore/resource/product/202204/546894/6000059916_front_XXL.jpg?imgname=%E0%B8%95%E0%B8%B1%E0%B8%A7%E0%B8%AD%E0%B8%A2%E0%B9%88%E0%B8%B2%E0%B8%87-%E0%B9%80%E0%B8%9E%E0%B8%B5%E0%B8%A2%E0%B8%87%E0%B8%84%E0%B8%A3%E0%B8%B1%E0%B9%89%E0%B8%87%E0%B9%83%E0%B8%99%E0%B8%84%E0%B9%88%E0%B8%B3%E0%B8%84%E0%B8%B7%E0%B8%99-(%E0%B8%9F%E0%B8%A3%E0%B8%B5)',
      'writer': 'แพรสีนิล',
      'chapter': 'ตอนที่ 3',
    },
    {
      'name': 'ชีวิตดีขึ้นด้วยการแผ่เมตตาให้ตัวเอง',
      'rating': 2,
      'prize': 200,
      'images':
          'https://storage.naiin.com/system/application/bookstore/resource/product/202204/546518/6000059721_front_XXL.jpg?imgname=%E0%B8%8A%E0%B8%B5%E0%B8%A7%E0%B8%B4%E0%B8%95%E0%B8%94%E0%B8%B5%E0%B8%82%E0%B8%B6%E0%B9%89%E0%B8%99%E0%B8%94%E0%B9%89%E0%B8%A7%E0%B8%A2%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B9%81%E0%B8%9C%E0%B9%88%E0%B9%80%E0%B8%A1%E0%B8%95%E0%B8%95%E0%B8%B2%E0%B9%83%E0%B8%AB%E0%B9%89%E0%B8%95%E0%B8%B1%E0%B8%A7%E0%B9%80%E0%B8%AD%E0%B8%87-(%E0%B8%9F%E0%B8%A3%E0%B8%B5)',
      'writer': 'จันทร์มังกร',
      'chapter': 'ตอนที่ 4',
    },
    {
      'name': 'กักตัว (ไม่) กักใจ',
      'rating': 1,
      'prize': 100,
      'images':
          'https://storage.naiin.com/system/application/bookstore/resource/product/202203/542960/6000057191_front_XXL.jpg?imgname=%E0%B8%95%E0%B8%B1%E0%B8%A7%E0%B8%AD%E0%B8%A2%E0%B9%88%E0%B8%B2%E0%B8%87-%E0%B8%81%E0%B8%B1%E0%B8%81%E0%B8%95%E0%B8%B1%E0%B8%A7-(%E0%B9%84%E0%B8%A1%E0%B9%88)-%E0%B8%81%E0%B8%B1%E0%B8%81%E0%B9%83%E0%B8%88-(%E0%B8%9F%E0%B8%A3%E0%B8%B5)',
      'writer': 'แพรสีนิล',
      'chapter': 'ตอนที่ 5',
    },
  ];

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
            margin: EdgeInsets.only(top: 15),
            child: Text(
              'BookShelf',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF000000),
              ),
            )),
        DottedLine_New(),
        ListBook(data_list: bookList),
      ],
    )));
  }
}

class DottedLine_New extends StatelessWidget {
  const DottedLine_New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        child: DottedLine());
  }
}
