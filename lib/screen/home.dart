import 'dart:io';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const routeName = '/';

  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const Text('Home Screen Naaaa!'),
          const Text('Home Screen Jaaaa!'),
          const Text('Home Screen Waaaa!'),
          OutlinedButton(
              onPressed: () {
                debugPrint('test');
              },
              child: const Text('test jaaa'))
        ],
      )),
    );
  }
}
