import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  static const routeName = '/';

  const SignIn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SignIn();
  }
}

class _SignIn extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignIn'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('SignIn Screen'),
        ],
      )),
    );
  }
}
