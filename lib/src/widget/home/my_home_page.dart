import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../util/log.dart';
import '../../util/utils.dart';
import 'my_home_page_view_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    Log.d('build()');
    var viewModel = Provider.of<MyHomePageViewModel>(context);
    viewModel.getCulturalEventListData();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Consumer<MyHomePageViewModel>(
              builder: (context, viewModel, __) {
                return const Text('');
              },
            )
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showToast(context, 'message'),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}