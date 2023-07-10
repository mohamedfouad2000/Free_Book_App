import 'package:bookappclean/Core/components.dart';
import 'package:bookappclean/Core/utils/assets_data.dart';
import 'package:bookappclean/Feature/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Image(
            image: AssetImage(AssetsData.logo),
            height: 18,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              navigateTo(context, const SearchPage());
            },
            icon: const Icon(
              Icons.search,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
