import 'package:flutter/material.dart';
import 'package:whs_app_mvp/screens/add_review_screen.dart';
import 'package:whs_app_mvp/screens/site_detail_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/official_list_screen.dart';
import 'screens/visit_screen.dart';
import 'screens/add_visit_screen.dart';

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
        canvasColor: Colors.blueGrey.shade50,
      ),
      initialRoute: ProfileScreen.id,
      routes: {
        ProfileScreen.id: (context) => const ProfileScreen(),
        OfficialListScreen.id: (context) => const OfficialListScreen(),
        SiteDetailExtractArgumentsScreen.id: (context) =>
            const SiteDetailExtractArgumentsScreen(),
        AddReviewScreen.id: (context) => const AddReviewScreen(),
        AddVisitScreen.id: (context) => const AddVisitScreen(),
        VisitDetailScreen.id: (context) => const VisitDetailScreen(),
      },
    );
  }
}
