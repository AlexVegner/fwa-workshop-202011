import 'package:flutter/material.dart';
import 'package:widgets/pages/about/about_page.dart';
import 'package:widgets/widgets/buttons/common_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title = ''}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'text');
    _textController.text = 'text2';
    Future.delayed(Duration(seconds: 10)).then((value) {
      if (mounted) {
        setState(() {
          _counter = 10;
        });
      }
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    print(_textController);
  }

  void _openAboutPage() async {
    // bool val = await Navigator.of(context)
    //     .push(MaterialPageRoute(builder: (BuildContext context) {
    //   return AboutPage();
    // }));
    bool val = await Navigator.pushNamed(context, '/about') as bool;

    // /about
    print(val);
  }

  _openSettingsPage() {
    Navigator.of(context).pushNamed('/settings');
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => AboutPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var tween = Tween(begin: begin, end: end);
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('Open About Page'),
          onPressed: _openAboutPage,
        ),
        RaisedButton(
          child: Text('Open Settings Page'),
          onPressed: _openSettingsPage,
        ),
        TextField(
          controller: _textController,
        ),
        Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headline4,
        ),
        CommonButton(
          bgColor: Colors.blue,
          onPressed: () {
            print('hello');
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: _buildColumn(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
