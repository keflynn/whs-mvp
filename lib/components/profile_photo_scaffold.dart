import 'package:flutter/material.dart';

class ProfilePhotoScaffold extends StatelessWidget {
  const ProfilePhotoScaffold(
      {Key? key, required this.title, required this.body})
      : super(key: key);

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO: navigate to profile page?
        },
        child: CircleAvatar(
          backgroundColor: Colors.teal.shade100,
          radius: 35.0,
        ),
      ),
      body: body,
    );
  }
}
