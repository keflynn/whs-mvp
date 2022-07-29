import 'package:flutter/material.dart';
import 'package:whs_app_mvp/screens/screen_arguments/site_detail_screen_arguments.dart';
import '../screens/site_detail_screen.dart';

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
      trailing: IconButton(
        //TODO: get splash and/or highlight color to appear on pressed state
        splashColor: Colors.blueGrey.shade300,
        highlightColor: Colors.blueGrey.shade50,
        icon: Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.blueGrey.shade300,
        ),
        onPressed: () {
          Navigator.pushNamed(context, SiteDetailExtractArgumentsScreen.id,
              arguments:
                  SiteDetailScreenArguments(title: siteName, country: country));
        },
      ),
      onTap: () {},
      contentPadding: const EdgeInsets.only(
        right: 16.0,
      ),
    );
  }
}
