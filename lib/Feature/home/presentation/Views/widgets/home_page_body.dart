import 'package:bookappclean/Core/utils/styles.dart';
import 'package:bookappclean/Feature/home/presentation/Views/widgets/books_list.dart';
import 'package:bookappclean/Feature/home/presentation/Views/widgets/custom_appbar.dart';
import 'package:bookappclean/Feature/home/presentation/Views/widgets/list_bestsaller.dart';
import 'package:flutter/material.dart';

class HomepageBody extends StatelessWidget {
  const HomepageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customAppBar(),
                SizedBox(
                  height: 20,
                ),
                BooksList(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Best Seller",
                    textAlign: TextAlign.start,
                    style: StylesData.titleSize,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ListBestSeller(),
        )
      ],
    );
  }
}
