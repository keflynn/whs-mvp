import 'package:flutter/material.dart';

class IconRatingRow extends StatelessWidget {
  const IconRatingRow(
      {Key? key,
      required this.filledIcon,
      required this.outlinedIcon,
      this.size = 15.0,
      this.color = Colors.black,
      this.rating = 0})
      : super(key: key);

  final IconData filledIcon;
  final IconData outlinedIcon;
  final double size;
  final Color color;
  final int rating;

  List<Widget> generateIcons() {
    List<Widget> icons = [];

    for (int i = 1; i <= rating; i++) {
      icons.add(Icon(
        filledIcon,
        size: size,
        color: color,
      ));
    }

    for (int j = 5 - icons.length; j > 0; j--) {
      icons.add(Icon(
        outlinedIcon,
        size: size,
        color: color,
      ));
    }
    return icons;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: generateIcons(),
    );
  }
}
