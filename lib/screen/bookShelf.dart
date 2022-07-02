import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart';

class BookShelf extends StatefulWidget {
  static const routeName = '/bookShelf';

  const BookShelf({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BookShelf();
  }
}

class _BookShelf extends State<BookShelf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Home Screen Naaaa!'),
          Text('Home Screen Jaaaa!'),
          Text('${context.watch<Counter>().count}'),
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
