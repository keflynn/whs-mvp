import 'package:flutter/material.dart';
import 'package:section_view/section_view.dart';
import '../components/visited-site-list-tile.dart';

class OfficialListScreen extends StatefulWidget {
  const OfficialListScreen({Key? key}) : super(key: key);

  @override
  State<OfficialListScreen> createState() => _OfficialListScreenState();
}

class _OfficialListScreenState extends State<OfficialListScreen> {
  List<CountryGroupModel> data = [
    CountryGroupModel(name: 'A', countries: [
      CountryItemModel(
        name: 'Afghanistan',
        sites: [
          SiteItemModel(name: 'Minaret of Jam'),
          SiteItemModel(name: 'Ziggurat'),
        ],
      ),
      CountryItemModel(
        name: 'Austria',
        sites: [
          SiteItemModel(name: 'Salzburg'),
          SiteItemModel(name: 'Tyrol'),
          SiteItemModel(name: 'Vienna'),
        ],
      ),
    ]),
    CountryGroupModel(
      name: 'B',
      countries: [
        CountryItemModel(
          name: 'Belgium',
          sites: [
            SiteItemModel(name: 'Bruges'),
          ],
        ),
        CountryItemModel(
          name: 'Botswana',
          sites: [
            SiteItemModel(name: 'A National Park'),
          ],
        ),
        CountryItemModel(name: 'Burundi', sites: []),
      ],
    ),
    CountryGroupModel(
      name: 'F',
      countries: [
        CountryItemModel(
          name: 'France',
          sites: [
            SiteItemModel(name: 'Paris'),
          ],
        ),
      ],
    ),
    CountryGroupModel(name: 'S', countries: [
      CountryItemModel(
        name: 'Spain',
        sites: [
          SiteItemModel(name: 'Grenada'),
          SiteItemModel(name: 'Seville'),
          SiteItemModel(name: 'Toledo'),
        ],
      ),
      CountryItemModel(
        name: 'Switzerland',
        sites: [
          SiteItemModel(name: 'Matterhorn'),
        ],
      ),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('World Heritage Sites'),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {},
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
      body: SafeArea(
        top: false,
        // child: CustomScrollView(
        //   slivers: [
        //     SliverAppBar(
        //       title: Text('Spain'),
        //       floating: false,
        //       pinned: true,
        //       snap: false,
        //       collapsedHeight: 200,
        //     ),
        //     SliverList(
        //       delegate: SliverChildListDelegate.fixed(
        //         [
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //         ],
        //       ),
        //     ),
        //     SliverAppBar(
        //       title: Text('France'),
        //       floating: true,
        //       pinned: true,
        //       snap: false,
        //       collapsedHeight: 200,
        //     ),
        //     SliverList(
        //       delegate: SliverChildListDelegate.fixed(
        //         [
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //         ],
        //       ),
        //     ),
        //     SliverAppBar(
        //       title: Text('Spain'),
        //       floating: false,
        //       pinned: true,
        //       snap: false,
        //       collapsedHeight: 200,
        //     ),
        //     SliverList(
        //       delegate: SliverChildListDelegate.fixed(
        //         [
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //         ],
        //       ),
        //     ),
        //     SliverAppBar(
        //       title: Text('Spain'),
        //       floating: false,
        //       pinned: true,
        //       snap: false,
        //       collapsedHeight: 200,
        //     ),
        //     SliverList(
        //       delegate: SliverChildListDelegate.fixed(
        //         [
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //           VisitedSiteListTile(siteName: 'Grenada', country: 'Spain'),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        child: SectionView<CountryGroupModel, CountryItemModel>(
          source: data,
          onFetchListData: (header) => header.countries,
          headerBuilder: getDefaultHeaderBuilder((d) => d.name,
              bkColor: Colors.teal.shade50,
              style: const TextStyle(fontSize: 18, color: Colors.teal)),
          itemBuilder:
              (context, itemData, itemIndex, headerData, headerIndex) =>
                  ListTile(
            title: Text(itemData.name),
          ),
          alphabetBuilder: getDefaultAlphabetBuilder((d) => d.name),
        ),
      ),
    );
  }
}

class SiteItemModel {
  SiteItemModel({required this.name});

  final String name;
}

class CountryItemModel {
  CountryItemModel({required this.name, required this.sites});

  final String name;
  final List<SiteItemModel> sites;
}

class CountryGroupModel {
  CountryGroupModel({required this.name, required this.countries});

  final String name;
  final List<CountryItemModel> countries;
}
