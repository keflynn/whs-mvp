class SiteItemModel {
  SiteItemModel({required this.name});

  final String name;
}

class CountryItemModel {
  CountryItemModel({required this.name, required this.sites});

  final String name;
  final List<SiteItemModel> sites;
  bool isExpanded = false;
}

class CountryGroupModel {
  CountryGroupModel({required this.name, required this.countries});

  final String name;
  final List<CountryItemModel> countries;
}
