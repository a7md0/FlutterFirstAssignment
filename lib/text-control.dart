import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeTextHandler;

  TextControl({this.changeTextHandler});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Change text'),
      onPressed: changeTextHandler,
    );
  }
}
