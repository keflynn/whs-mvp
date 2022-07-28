import 'package:flutter/material.dart';

class LargeTextButton extends StatelessWidget {
  const LargeTextButton({
    Key? key,
    required this.title,
    required this.pressAction,
  }) : super(key: key);

  final String title;
  final void Function()? pressAction;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(horizontal: 16.0),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
      ),
      onPressed: pressAction,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.teal.shade50,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
