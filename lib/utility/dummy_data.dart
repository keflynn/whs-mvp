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

String dummyText =
    '      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam elementum libero quis efficitur faucibus. Proin pellentesque vitae lorem non semper. Suspendisse convallis justo at orci feugiat, vel pulvinar lorem dictum. Donec laoreet sit amet lorem ac vehicula. Fusce ullamcorper aliquam interdum. Aliquam eu ante sed libero interdum aliquam. Proin sed ornare nisi. Fusce mattis urna augue, sit amet consectetur augue tristique ut. Sed vestibulum erat sed dignissim iaculis. Ut et sem eleifend, maximus elit id, porttitor massa. Praesent nec dui ut mauris feugiat vulputate. Praesent pretium vulputate enim. Morbi viverra metus eget justo ultricies tincidunt. Sed eget lacus a eros euismod eleifend. Pellentesque a velit in arcu imperdiet placerat a non odio. Quisque ullamcorper condimentum dolor, vel fermentum dui efficitur at.';
