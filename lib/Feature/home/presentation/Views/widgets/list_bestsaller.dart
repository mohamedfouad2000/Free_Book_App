import 'package:bookappclean/Core/NewModel/book2_model/book2_model.dart';
import 'package:bookappclean/Core/components.dart';
// import 'package:bookappclean/Core/utils/assets_data.dart';
import 'package:bookappclean/Core/utils/styles.dart';
// import 'package:bookappclean/Feature/home/data/Model/book_model.dart';
import 'package:bookappclean/Feature/home/presentation/Views/book_details_view.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/const.dart';
// import 'package:google_fonts/google_fonts.dart';

class ListBestSeller extends StatelessWidget {
  const ListBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    Book2Model? bestSallerBook = HomeCubit.get(context).bestSallerBook;
    //
    return ConditionalBuilder(
      builder: (BuildContext context) {
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: InkWell(
                onTap: () {
                  navigateTo(
                      context,
                      BookDetailsView(
                        model: HomeCubit.get(context)
                            .bestSallerBook
                            ?.items?[index],
                      ));
                },
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: CachedNetworkImage(
                          fit: BoxFit.fill,
                          height: 100,
                          width: 60,
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageUrl:
                              '${HomeCubit.get(context).bestSallerBook!.items![index].volumeInfo?.imageLinks?.thumbnail}'),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${HomeCubit.get(context).bestSallerBook!.items![index].volumeInfo!.title}",
                          maxLines: 2,
                          overflow: TextOverflow.clip,
                          style: StylesData.bookTitle
                              .copyWith(fontFamily: kGTSectraFine),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          '${HomeCubit.get(context).bestSallerBook?.items?[index].volumeInfo?.authors?[0]}',
                          style: StylesData.textGrayOpisty,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Row(
                          children: [
                            Text(
                              "Free ",
                              style: StylesData.textPrice,
                            ),
                            Spacer(),
                          ],
                        )
                      ],
                    ))
                  ],
                ),
              ),
            );
          },
          itemCount: bestSallerBook!.items!.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 6,
            );
          },
        );
      },
      condition: HomeCubit.get(context).bestSallerBook != null,
      fallback: (BuildContext context) {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
