import '../model/official_list_models.dart';

class DummyData {
  static List<CountryGroupModel> data = [
    CountryGroupModel(name: 'A', countries: [
      CountryItemModel(
        name: 'Afghanistan',
        sites: [
          SiteItemModel(name: 'Minaret of Jam'),
          SiteItemModel(name: 'Ziggurat'),
        ],
      ),
      CountryItemModel(
        name: 'Argentina',
        sites: [],
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
      name: 'C',
      countries: [
        CountryItemModel(name: 'Cameroon', sites: []),
        CountryItemModel(
          name: 'China',
          sites: [
            SiteItemModel(name: 'Forbidden City'),
            SiteItemModel(name: 'Tai Shan'),
          ],
        ),
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
}
