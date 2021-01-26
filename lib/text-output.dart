import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String displayText;

  TextOutput(this.displayText);

  @override
  Widget build(BuildContext context) {
    return Text(displayText);
  }
}
