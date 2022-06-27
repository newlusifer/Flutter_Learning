import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/launcher.dart';
import 'screen/signIn.dart';

import 'models/counter_model.dart';

void main() {
  runApp(const MyApp());
}

// ส่วนของ Stateless widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (context) => Counter(),
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.pink,
          ),
          title: 'First Flutter App',
          initialRoute: '/', // สามารถใช้ home แทนได้
          routes: {
            Launcher.routeName: (context) => Launcher(),
            // SignIn.routeName: (context) => SignIn(),
          },
        ));
  }
}
