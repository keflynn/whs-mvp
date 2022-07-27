import 'package:flutter/material.dart';
import 'package:section_view/section_view.dart';
import '../utility/dummy_data.dart';
import '../model/official_list_models.dart';
import '../utility/constants.dart';
import '../components/profile_photo_scaffold.dart';

class OfficialListScreen extends StatefulWidget {
  const OfficialListScreen({Key? key}) : super(key: key);

  @override
  State<OfficialListScreen> createState() => _OfficialListScreenState();
}

class _OfficialListScreenState extends State<OfficialListScreen> {
  List<CountryGroupModel> data = DummyData.data;

  @override
  Widget build(BuildContext context) {
    return ProfilePhotoScaffold(
      title: 'World Heritage Sites',
      body: SectionView<CountryGroupModel, CountryItemModel>(
        source: data,
        onFetchListData: (header) => header.countries,
        headerBuilder: getHeaderBuilder((d) => d.name,
            bkColor: Colors.teal.shade50,
            style: const TextStyle(fontSize: 18, color: Colors.teal)),
        itemBuilder: (context, itemData, itemIndex, headerData, headerIndex) {
          return ExpansionPanelList.radio(
            animationDuration: Duration(
              milliseconds: 500,
            ),
            expandedHeaderPadding: EdgeInsets.zero,
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                data[headerIndex].countries[itemIndex].isExpanded = !isExpanded;
              });
            },
            children: [
              ExpansionPanelRadio(
                value: itemData.isExpanded,
                headerBuilder: (context, bool isExpanded) {
                  return ListTile(
                    title: Text(
                      '    ${itemData.name}',
                      style: kExpansionPanelHeaderTextStyle,
                    ),
                  );
                },
                body: ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  children: itemData.sites
                      .map(
                        (site) => ListTile(
                          tileColor: Colors.teal.shade100,
                          title: Text(
                            site.name,
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                          leading: Checkbox(
                            onChanged: (value) {},
                            value: false,
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.photo_camera_outlined),
                            splashRadius: 25.0,
                            splashColor: Colors.teal.shade700,
                            onPressed: () {},
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          );
        },
        alphabetBuilder: getDefaultAlphabetBuilder((d) => d.name),
      ),
    );
  }
}

SectionViewHeaderBuilder<T> getHeaderBuilder<T>(
    String Function(T data) fetchAlphabet,
    {Color? bkColor,
    TextStyle? style}) {
  return (BuildContext context, T headerData, int headerIndex) {
    return Container(
      color: bkColor ?? const Color(0xFFF3F4F5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: Column(
          children: [
            Text(
              fetchAlphabet(headerData),
              style: style ??
                  const TextStyle(fontSize: 18, color: Color(0xFF767676)),
            ),
          ],
        ),
      ),
    );
  };
}
