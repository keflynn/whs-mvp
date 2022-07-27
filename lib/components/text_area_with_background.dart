import 'package:flutter/material.dart';

class TextAreaWithBackground extends StatelessWidget {
  const TextAreaWithBackground({Key? key, required this.text})
      : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal.shade50,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(15.0),
        child: Text(text),
      ),
    );
  }
}
