import 'package:flutter/material.dart';
// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
              Text(_displayText),
              RaisedButton(
                child: Text('Change text'),
                onPressed: changeDisplayText,
              )
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
