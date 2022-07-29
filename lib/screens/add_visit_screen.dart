import 'package:flutter/material.dart';
import 'package:whs_app_mvp/screens/screen_arguments/site_detail_screen_arguments.dart';
import '../components/text_input_area.dart';
import '../components/large_text_button.dart';
import '../utility/constants.dart';
import './screen_arguments/site_detail_screen_arguments.dart';

class AddVisitScreen extends StatefulWidget {
  const AddVisitScreen({Key? key}) : super(key: key);

  static const String id = 'addVisit';

  @override
  State<AddVisitScreen> createState() => _AddVisitScreenState();
}

class _AddVisitScreenState extends State<AddVisitScreen> {
  final notesScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final date = DateTime.now();
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
                  'Add a Visit to',
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'START DATE:',
                          style: kFormFieldLabelTextStyle,
                        ),
                        TextButton(
                          onPressed: () {
                            //TODO: call cupertino date picker
                          },
                          child: Text(
                            '${date.month}/${date.day}/${date.year}',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '   END DATE:',
                          style: kFormFieldLabelTextStyle,
                        ),
                        TextButton(
                          onPressed: () {
                            //TODO: call cupertino date picker
                          },
                          child: Text(
                            '${date.month}/${date.day}/${date.year}',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'TRAVELING COMPANIONS: ',
                          style: kFormFieldLabelTextStyle,
                        ),
                        Expanded(
                          child: TextField(
                            onChanged: (v) {},
                            textCapitalization: TextCapitalization.words,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 1.0,
                                  color: Colors.tealAccent,
                                ),
                              ),
                              fillColor: Colors.teal.shade50,
                              filled: true,
                              contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'JOURNAL NOTES:',
                      style: kFormFieldLabelTextStyle,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextInputArea(
                      scrollController: notesScrollController,
                      backgroundColor: Colors.teal.shade50,
                    ),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: LargeTextButton(
                      title: 'Add Visit',
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
