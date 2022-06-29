import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  static const routeName = '/';

  const Contact({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Contact();
  }
}

class _Contact extends State<Contact> {
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
