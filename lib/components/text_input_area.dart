import 'package:flutter/material.dart';

class TextInputArea extends StatelessWidget {
  const TextInputArea({
    Key? key,
    required this.scrollController,
    this.height = 240.0,
    required this.backgroundColor,
  }) : super(key: key);

  final ScrollController scrollController;
  final double height;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Scrollbar(
        controller: scrollController,
        child: TextField(
          scrollController: scrollController,
          minLines: 11,
          maxLines: 30,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            fillColor: backgroundColor,
            filled: true,
          ),
        ),
      ),
    );
  }
}
