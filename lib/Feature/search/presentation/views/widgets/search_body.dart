import 'package:bookappclean/Core/utils/styles.dart';
import 'package:bookappclean/Feature/search/presentation/views/widgets/search_list.dart';
import 'package:bookappclean/Feature/search/presentation/views/widgets/search_text_filed.dart';
import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextFiled(),
        Padding(
          padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
          child: Text(
            "Search Results",
            textAlign: TextAlign.start,
            style: StylesData.titleSize,
          ),
        ),
        SearchList(),
      ],
    );
  }
}
