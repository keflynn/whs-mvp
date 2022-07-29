import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/text_input_area.dart';
import '../components/large_text_button.dart';
import '../components/icon_rating_row.dart';
import '../utility/constants.dart';
import './screen_arguments/site_detail_screen_arguments.dart';

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({Key? key}) : super(key: key);

  static const String id = 'addReview';

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  String isPrivate = '0';
  final reviewScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as SiteDetailScreenArguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade100,
        elevation: 0,
      ),
      backgroundColor: Colors.teal.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Add a Review for',
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.teal.shade800,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  args.title.toUpperCase(),
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.teal.shade900,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'NATURAL RATING:',
                            style: kFormFieldLabelTextStyle,
                          ),
                          IconRatingRow(
                            filledIcon: Icons.eco,
                            outlinedIcon: Icons.eco_outlined,
                            color: Colors.teal,
                            size: 24.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'CULTURAL RATING:',
                            style: kFormFieldLabelTextStyle,
                          ),
                          IconRatingRow(
                            filledIcon: Icons.account_balance,
                            outlinedIcon: Icons.account_balance_outlined,
                            color: Colors.teal,
                            size: 24.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CupertinoSlidingSegmentedControl(
                            groupValue: isPrivate,
                            thumbColor: Colors.teal.shade50,
                            children: const <String, Widget>{
                              '0': Text('Make Review Public'),
                              '1': Text('Keep Review Private'),
                            },
                            onValueChanged: (val) {
                              setState(() {
                                isPrivate = val.toString();
                              });
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Text(
                        'REVIEW:',
                        style: kFormFieldLabelTextStyle,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextInputArea(
                        scrollController: reviewScrollController,
                        backgroundColor: Colors.teal.shade50,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: LargeTextButton(
                      title: 'Add Review',
                      pressAction: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
