// import 'package:bookappclean/Core/components.dart';
// import 'package:bookappclean/Core/utils/assets_data.dart';

// import 'package:bookappclean/Feature/home/presentation/Views/book_details_view.dart';
import 'package:bookappclean/Core/components.dart';
import 'package:bookappclean/Core/const.dart';
import 'package:bookappclean/Feature/home/presentation/Views/book_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookappclean/Core/utils/styles.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_cubit.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_states.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

// import 'package:google_fonts/google_fonts.dart';

class SearchList extends StatelessWidget {
  const SearchList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      builder: (BuildContext context, state) {
        return Expanded(
            child: ConditionalBuilder(
          builder: (BuildContext context) {
            return const Center(child: CircularProgressIndicator());
          },
          condition: state is GetBSearchListBooksLoading,
          fallback: (BuildContext context) {
            
            return 
            state is GetBSearchListBooksSucc ?
            ListView.separated(
              // shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: InkWell(
                    onTap: () {
                      navigateTo(context, BookDetailsView(model:HomeCubit.get(context).searchList!.items![index],));
                    },
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                            imageUrl:
                                '${HomeCubit.get(context).searchList!.items![index].volumeInfo?.imageLinks?.thumbnail}',
                            height: 100,
                            width: 60,
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${HomeCubit.get(context).searchList!.items![index].volumeInfo?.title}",
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              style: StylesData.bookTitle
                                  .copyWith(fontFamily: kGTSectraFine),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              "${HomeCubit.get(context).searchList!.items![index].volumeInfo?.authors![0]}",
                              style: StylesData.textGrayOpisty,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            const Row(
                              children: [
                                Text(
                                  "Free",
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
              itemCount: HomeCubit.get(context).searchList!.items!.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 6,
                );
              },
            )
          :    const Center(child: Text("Write to Search"));

          
          },
        ));
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
