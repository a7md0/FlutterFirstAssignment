import 'package:flutter/material.dart';

import './text-output.dart';
import './text-control.dart';

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String _displayText = 'Initial text!';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment'),
        ),
        body: Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              TextOutput(_displayText),
              TextControl(changeTextHandler: changeDisplayText)
            ],
          ),
        ),
      ),
    );
  }

  void changeDisplayText() {
    setState(() {
      _displayText = 'Updated text';
    });
  }
}
