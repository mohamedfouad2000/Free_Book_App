// ignore_for_file: must_be_immutable

import 'package:bookappclean/Core/NewModel/book2_model/item.dart';
import 'package:bookappclean/Core/utils/styles.dart';
// import 'package:bookappclean/Feature/home/data/Model/book_model.dart';
import 'package:bookappclean/Feature/home/presentation/Views/widgets/book_details_image.dart';
import 'package:bookappclean/Feature/home/presentation/Views/widgets/book_details_price.dart';
import 'package:bookappclean/Feature/home/presentation/Views/widgets/book_list_like.dart';
import 'package:bookappclean/Feature/home/presentation/Views/widgets/custom_bookdetails_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  // const BookDetailsBody({super.key});
  Item model;
  // ignore: use_key_in_widget_constructors
  BookDetailsBody({required this.model});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomBookDetailsAppbar(),
                const SizedBox(
                  height: 10,
                ),
                BookDetailsImage(
                    image: model.volumeInfo!.imageLinks!.thumbnail),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "${model.volumeInfo?.title} ",
                    style: StylesData.bookTitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "${model.volumeInfo?.authors![0]} ",
                  style: StylesData.textGrayOpisty,
                ),
                const SizedBox(
                  height: 10,
                ),
                // BookDetailsRate(),
                const SizedBox(
                  height: 20,
                ),
                BookDetailsPrice(url: model.volumeInfo!.previewLink),
                const SizedBox(
                  height: 40,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like", style: StylesData.titleSize,
                    // textAlign: TextAlign.right,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const BookListLike(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
