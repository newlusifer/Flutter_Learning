import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  static const routeName = '/setting';

  const Setting({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _Setting();
  }
}

class _Setting extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Setting Screen'),
        ],
      )),
    );
  }
}
