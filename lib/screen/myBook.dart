import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/counter_model.dart';

class MyBook extends StatefulWidget {
  static const routeName = '/myBook';

  const MyBook({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyBook();
  }
}

class _MyBook extends State<MyBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Profile Screen'),
          Text('You have pushed the button this many times:'),
          Count(),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        key: const Key('increment_Button'),
        onPressed: () => context.read<Counter>().increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('${context.watch<Counter>().count}',
        key: const Key('counterState'),
        style: Theme.of(context).textTheme.headline4);
  }
}
