import 'package:flutter/material.dart';
import 'package:widgets/pages/about/about_page.dart';
import 'package:widgets/pages/home/home_page.dart';
import 'package:widgets/pages/settings/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          '/': (BuildContext context) => HomePage(),
          '/about': (BuildContext context) => AboutPage(),
          '/settings': (BuildContext context) => SettingsPage(),
        }
        // home: HomePage()
        );
  }
}
