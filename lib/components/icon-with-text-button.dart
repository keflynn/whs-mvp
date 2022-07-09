import 'package:flutter/material.dart';

class IconWithTextButton extends StatelessWidget {
  const IconWithTextButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.fromLTRB(10.0, 8.0, 15.0, 8.0)),
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) =>
            states.contains(MaterialState.pressed)
                ? Colors.teal.shade400
                : Colors.teal.shade300),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.teal.shade50,
            // size: 16.0,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}
