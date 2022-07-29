import 'package:flutter/material.dart';
import 'package:whs_app_mvp/screens/screen_arguments/site_detail_screen_arguments.dart';
import '../utility/constants.dart';
import '../components/visited_site_list_tile.dart';
import '../components/icon_with_text_button.dart';
import './official_list_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const String id = 'profile';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Widget> visitedSites = const [
    VisitedSiteListTile(
      siteName: 'Grenada',
      country: 'Spain',
    ),
    VisitedSiteListTile(siteName: 'Paris', country: 'France'),
    VisitedSiteListTile(siteName: 'Yosemite', country: 'United States'),
    VisitedSiteListTile(siteName: 'Tian Shan', country: 'China'),
    VisitedSiteListTile(siteName: 'Toledo', country: 'Spain'),
    VisitedSiteListTile(siteName: 'Tian Shan', country: 'China'),
    VisitedSiteListTile(siteName: 'Toledo', country: 'Spain'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('World Heritage Site Tracker'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
              child: SizedBox(
                height: 170.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 85.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Username',
                            style: kSlightlyHeavyTextStyle,
                          ),
                          Column(
                            children: [
                              Text('Visited'),
                              Text(
                                visitedSites.length.toString(),
                                style: kLargeNumberTextStyle,
                              ),
                              Text('sites total'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              'SITES I\'VE VISITED',
            ),
            Expanded(
              child: Container(
                color: Colors.teal.shade100,
                child: ListView(
                  children: visitedSites,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconWithTextButton(
                    icon: Icons.public,
                    text: 'Official Site List',
                    pressAction: () {},
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  IconWithTextButton(
                    icon: Icons.add,
                    text: 'Upload Profile Photo',
                    pressAction: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
