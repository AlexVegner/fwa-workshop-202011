import 'package:flutter/material.dart';
import 'package:widgets/widgets/buttons/common_button.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title = '', this.isLogged, this.callback})
      : super(key: key);

  final String title;
  final bool isLogged;
  final ValueChanged<bool> callback;

  @override
  _HomePageState createState() => _HomePageState();
}

class User {
  String firstName;
  String lastName;
}

class Cleckbox extends StatefulWidget {
  final bool isSelected;
  final ValueChanged<bool> onChanged;
  Cleckbox({Key key, @required this.isSelected, @required this.onChanged})
      : super(key: key);

  @override
  _CleckboxState createState() => _CleckboxState();
}

class _CleckboxState extends State<Cleckbox> {
  bool isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final newSetState = !isSelected;
        setState(() {
          isSelected = newSetState;
        });
        widget.onChanged(newSetState);
      },
      child: Container(
        height: 100,
        width: 100,
        color: isSelected ? Colors.red : Colors.blue,
      ),
    );
  }
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  User user;
  bool _isSelected = false;

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
      _counter = 10;
    });
  }

  Future<void> withDelay() async {
    await Future.delayed(Duration(seconds: 10)).then((value) {
      if (mounted) {
        setState(() {
          _counter = 10;
        });
      }
      _counter = 10;
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

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Cleckbox(
          isSelected: _isSelected,
          onChanged: (bool val) {
            // setState(() {
            //   _isSelected = val;
            // });
          },
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
        onPressed: () {
          widget.callback(!widget.isLogged);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
