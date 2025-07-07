import 'package:flutter/material.dart';
import 'package:islami_app/widgets/custom_text.dart';
import 'package:islami_app/widgets/sura_list_view.dart';

class QuranTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(backgroundColor: WidgetStateColor.transparent),
        Container(
          padding: EdgeInsets.only(left: 15, top: 20, bottom: 15),
          alignment: Alignment.bottomLeft,
          child: CustomText(text: 'Most Recently', fontSize: 20),
        ),
        Expanded(flex: 1, child: Container(color: Colors.white)),
        Container(
          padding: EdgeInsets.only(left: 15, top: 20),
          alignment: Alignment.bottomLeft,
          child: CustomText(text: 'Suras List', fontSize: 20),
        ),
        Expanded(flex: 3, child: SuraListView()),
      ],
    );
  }
}
