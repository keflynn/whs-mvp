import 'package:flutter/material.dart';
import '../components/profile_photo_scaffold.dart';
import '../components/icon_rating_row.dart';
import '../components/text_area_with_background.dart';
import '../utility/constants.dart';
import '../utility/dummy_data.dart';

class VisitDetailScreen extends StatefulWidget {
  const VisitDetailScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<VisitDetailScreen> createState() => _VisitDetailScreenState();
}

class _VisitDetailScreenState extends State<VisitDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return ProfilePhotoScaffold(
        title: widget.title,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Official Name of Site',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 100.0,
                      foregroundImage: AssetImage('assets/placeholder.jpeg'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dates Visited',
                        style: kRowDataDescriptorTextStyle,
                      ),
                      Text('5/1/2014 - 5/15/2015'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Traveling Companions',
                        style: kRowDataDescriptorTextStyle,
                      ),
                      Text('Mom & Amy'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Journal',
                        style: kRowDataDescriptorTextStyle,
                      ),
                      Text('Lorem ipsum......'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Review',
                        style: kRowDataDescriptorTextStyle,
                      ),
                      IconRatingRow(
                        filledIcon: Icons.eco,
                        outlinedIcon: Icons.eco_outlined,
                        size: 22,
                        color: Colors.teal,
                        rating: 2,
                      ),
                      IconRatingRow(
                        filledIcon: Icons.account_balance,
                        outlinedIcon: Icons.account_balance_outlined,
                        size: 22,
                        color: Colors.teal,
                        rating: 4,
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    child: TextAreaWithBackground(text: dummyText),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text('Edit Visit'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('Edit Review'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
