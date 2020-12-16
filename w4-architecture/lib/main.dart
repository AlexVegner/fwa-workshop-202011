import 'package:flutter/material.dart';
import 'package:network/common/config/setup_injections.dart';
import 'package:network/pages/articles/articles_list_page.dart';

void main() {
  setupInjections();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ArticlesListPage());
  }
}
