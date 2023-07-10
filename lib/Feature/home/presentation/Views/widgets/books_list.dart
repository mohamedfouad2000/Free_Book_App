// ignore_for_file: non_constant_identifier_names, unused_local_variable


import 'package:bookappclean/Core/NewModel/book2_model/book2_model.dart';
import 'package:bookappclean/Core/components.dart';
// import 'package:bookappclean/Feature/home/data/Model/book_model.dart';
import 'package:bookappclean/Feature/home/presentation/Views/book_details_view.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BooksList extends StatelessWidget {
  const BooksList({super.key});

  @override
  Widget build(BuildContext context) {
    Book2Model? Model = HomeCubit.get(context).booklist;
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4,
        width: double.infinity,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                navigateTo(
                  context,
                  BookDetailsView(model: Model.items![index]),
                );
              },
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: CachedNetworkImage(
                          fit: BoxFit.fill,
                          height: 120,
                          width: 120,
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                          imageUrl:
                              '${Model.items![index].volumeInfo!.imageLinks!.thumbnail}'),
                    ),  ),
            );
          },
          itemCount: Model!.items!.length,
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              width: 15,
            );
          },
        ),
      ),
    );
  }
}
