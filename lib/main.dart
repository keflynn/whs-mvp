import 'package:flutter/material.dart';
import 'package:whs_app_mvp/utility/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WHS MVP',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('World Heritage Site Tracker'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 50.0),
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
                                      '12',
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
                  // ListView(
                  //   shrinkWrap: false,
                  //   children: const [
                  //     VisitedSiteListTile(
                  //       siteName: 'Grenada',
                  //       country: 'Spain',
                  //     ),
                  //     VisitedSiteListTile(siteName: 'Paris', country: 'France'),
                  //     VisitedSiteListTile(
                  //         siteName: 'Yosemite', country: 'United States'),
                  //     VisitedSiteListTile(
                  //         siteName: 'Tian Shan', country: 'China'),
                  //     VisitedSiteListTile(siteName: 'Toledo', country: 'Spain'),
                  //     ListTile(
                  //       title: Text('Paris'),
                  //       subtitle: Text('     France'),
                  //       trailing: Icon(Icons.arrow_forward_ios_rounded),
                  //     ),
                  //     ListTile(
                  //       title: Text('Yosemite'),
                  //       subtitle: Text('     United States'),
                  //       trailing: Icon(Icons.arrow_forward_ios_rounded),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.fromLTRB(8.0, 8.0, 15.0, 8.0)),
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => states.contains(MaterialState.pressed)
                            ? Colors.teal.shade400
                            : Colors.teal.shade300),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.public,
                        color: Colors.teal.shade50,
                        // size: 16.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Official Site List',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.fromLTRB(8.0, 8.0, 15.0, 8.0)),
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                        (states) => states.contains(MaterialState.pressed)
                            ? Colors.teal.shade400
                            : Colors.teal.shade300),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.teal.shade50,
                      ),
                      // SizedBox(
                      //   width: 5.0,
                      // ),
                      Text(
                        'Upload Profile Photo',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class VisitedSiteListTile extends StatelessWidget {
  const VisitedSiteListTile(
      {Key? key, required this.siteName, required this.country})
      : super(key: key);

  final String siteName;
  final String country;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        siteName,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        '      $country',
        style: TextStyle(fontSize: 14.0),
      ),
      leading: Checkbox(
        value: true,
        onChanged: (value) {},
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.blueGrey.shade300,
      ),
      onTap: () {},
      contentPadding: const EdgeInsets.only(
        right: 16.0,
      ),
      tileColor: Colors.teal.shade100,
    );
  }
}
