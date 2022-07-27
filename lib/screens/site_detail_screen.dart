import 'package:flutter/material.dart';
import '../components/profile_photo_scaffold.dart';
import '../components/icon_rating_row.dart';
import '../components/text_area_with_background.dart';
import '../utility/dummy_data.dart';

class SiteDetailScreen extends StatefulWidget {
  const SiteDetailScreen({required this.title});

  final String title;

  @override
  State<SiteDetailScreen> createState() => _SiteDetailScreenState();
}

class _SiteDetailScreenState extends State<SiteDetailScreen> {
  bool visited = false;

  @override
  Widget build(BuildContext context) {
    return ProfilePhotoScaffold(
      title: widget.title,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                // Container( //used to visualize the stack's space
                //   height: 250.0,
                //   color: Colors.blueGrey.shade100,
                // ),
                Container(
                  height: 220,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(22.0),
                  child: Image(
                    image: AssetImage('assets/placeholder.jpeg'),
                  ),
                ),
                Container(
                  decoration: ShapeDecoration(
                    color: visited
                        ? Colors.teal.shade400
                        : Colors.blueGrey.shade300,
                    shape: CircleBorder(),
                  ),
                  margin:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                  child: Checkbox(
                    value: visited,
                    onChanged: (value) {
                      setState(() => {visited = !visited});
                    },
                    checkColor: Colors.teal.shade400,
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                        (state) => state.contains(MaterialState.selected)
                            ? Colors.blueGrey.shade50
                            : Colors.blueGrey.shade300),
                    shape: CircleBorder(),
                  ),
                ),
              ],
            ),
            Text(
              'Official name of site which might be quite long',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.eco,
                        color: Colors.teal,
                        size: 40.0,
                      ),
                      Text(
                        'NATURAL',
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ],
                  ),
                ),
                Text('Location of site'), // Country(s) & Locality
                Padding(
                  padding: const EdgeInsets.only(right: 22.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_balance,
                        color: Colors.teal,
                        size: 40.0,
                      ),
                      Text(
                        'CULTURAL',
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Year Inscribed: ####'),
                  Text('ENDANGERED'),
                ],
              ),
            ),
            Text(
              'Description',
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: TextAreaWithBackground(
                text: dummyText,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Visits',
              textAlign: TextAlign.center,
            ),
            Container(
              height: 35.0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      'Add Visit',
                    ),
                    Text('day/month/year'),
                    Text(
                      'month/year',
                    ),
                    Text('day/month/year'),
                    Text(
                      'month/year',
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconRatingRow(
                    filledIcon: Icons.eco,
                    outlinedIcon: Icons.eco_outlined,
                    rating: 4,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Leave a Review',
                    ),
                  ),
                  IconRatingRow(
                    filledIcon: Icons.account_balance,
                    outlinedIcon: Icons.account_balance_outlined,
                    rating: 4,
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
