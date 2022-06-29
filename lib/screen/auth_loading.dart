import 'package:flutter/material.dart';
import 'package:flutter_new/screen/setting.dart';
import 'signIn.dart';

class AuthLoading extends StatefulWidget {
  static const routeName = '/';

  const AuthLoading({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AuthLoading();
  }
}

class _AuthLoading extends State<AuthLoading> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignIn(),
            // settings: RouteSettings(arguments: "Hello I'm Newlusifer") //send parameter
          ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          'assets/images/splashScreen.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
