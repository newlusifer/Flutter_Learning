import 'package:flutter/material.dart';

class About extends StatefulWidget {
  static const routeName = '/';

  const About({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _About();
  }
}

class _About extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('About Screen'),
        ],
      )),
    );
  }
}
