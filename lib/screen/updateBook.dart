import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart';

class UpdateBook extends StatefulWidget {
  static const routeName = '/updateBook';

  const UpdateBook({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _UpdateBook();
  }
}

class _UpdateBook extends State<UpdateBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('About Us Screen'),
          Text('${context.watch<Counter>().count}',
              key: const Key('counterState'),
              style: Theme.of(context).textTheme.headline4),
          ElevatedButton(
            onPressed: () => context.read<Counter>().reset(),
            child: Text('Reset Counter'),
          ),
        ],
      )),
    );
  }
}
