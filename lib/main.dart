import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/data/module/get_it_data_modules.dart';
import 'src/widget/home/my_home_page.dart';
import 'src/widget/module/get_it_widget_modules.dart';

void main() {
  setupDataModules();
  setupWidgetModules();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
          create: (_) => getMyHomePageViewModelInstance(),
          child : const MyHomePage(title: 'Flutter Demo Home Page')
      ),
    );
  }
}
