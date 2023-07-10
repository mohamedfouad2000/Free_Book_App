
import 'package:bookappclean/Core/components.dart';
import 'package:bookappclean/Feature/home/presentation/Views/book_details_view.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookListLike extends StatelessWidget {
  const BookListLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // height: MediaQuery.of(context).size.height*.25,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        // shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              navigateTo(
                  context,
                  BookDetailsView(
                      model: HomeCubit.get(context)
                          .bestSallerBook
                          ?.items![index]));
            },
            child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: CachedNetworkImage(
                          fit: BoxFit.fill,
                          height: 80,
                          width: 60,
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageUrl:
                              '${HomeCubit.get(context).bestSallerBook?.items![index].volumeInfo!.imageLinks?.smallThumbnail}'),
                    ), );
        },
        itemCount: 6,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
