import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color bgColor;

  const CommonButton({Key key, this.onPressed, this.bgColor = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: IconButton(icon: Icon(Icons.add), onPressed: onPressed),
      ),
    );
  }
}
