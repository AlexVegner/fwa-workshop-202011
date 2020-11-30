import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Text('Settings page')),
          RaisedButton(
            child: Text('Open Settings Page'),
            onPressed: () => Navigator.of(context).pushNamed('/settings'),
          ),
          RaisedButton(
            child: Text('Open Settings Page'),
            onPressed: () =>
                Navigator.of(context).popUntil((Route<dynamic> route) {
              if (route.settings.name == '/') {
                return true;
              }
              return false;
            }),
          ),
        ],
      ),
    );
  }
}
