import 'package:flutter/material.dart';
import 'package:flutter_new/Models/user_model.dart';
import 'package:provider/provider.dart';

import 'navigator/BottomTabNavigation.dart';
import 'screen/signIn.dart';
import 'screen/authLoading.dart';

import 'models/counter_model.dart';

void main() {
  runApp(const MyApp());
}

// ส่วนของ Stateless widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => Counter()),
          ChangeNotifierProvider(create: (context) => User())
        ],
        child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          title: 'First Flutter App',
          initialRoute: '/', // สามารถใช้ home แทนได้
          routes: {
            // Launcher.routeName: (context) => Launcher(),
            AuthLoading.routeName: (context) => AuthLoading(),
          },
        ));
  }
}
