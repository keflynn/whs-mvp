import 'package:flutter/material.dart';
import '../components/profile_photo_scaffold.dart';
import '../components/icon_rating_row.dart';
import '../components/text_area_with_background.dart';
import './screen_arguments/visit_detail_screen_arguments.dart';
import '../utility/constants.dart';
import '../utility/dummy_data.dart';

class VisitDetailScreen extends StatefulWidget {
  const VisitDetailScreen({
    Key? key,
  }) : super(key: key);

  static const String id = 'visitDetail';

  @override
  State<VisitDetailScreen> createState() => _VisitDetailScreenState();
}

class _VisitDetailScreenState extends State<VisitDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments
        as VisitDetailScreenArguments;

    final visitData = DummyData.dummyVisits[args.dummmyIndex];

    return ProfilePhotoScaffold(
        title: args.siteName,
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
                      Text(
                          '${visitData.startDate.month}/${visitData.startDate.day}/${visitData.startDate.year} - ${visitData.endDate.month}/${visitData.endDate.day}/${visitData.endDate.year}'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Traveling Companions',
                        style: kRowDataDescriptorTextStyle,
                      ),
                      Text(visitData.companions),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Journal',
                        style: kRowDataDescriptorTextStyle,
                      ),
                      Text(visitData.journalNotes),
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
