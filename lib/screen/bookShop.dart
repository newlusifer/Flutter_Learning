import 'package:flutter/material.dart';

class BookShop extends StatefulWidget {
  static const routeName = '/bookShop';

  const BookShop({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BookShop();
  }
}

class _BookShop extends State<BookShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Contact Screen'),
        ],
      )),
    );
  }
}
