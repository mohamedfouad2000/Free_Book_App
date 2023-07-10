// ignore_for_file: use_key_in_widget_constructors


// import 'package:bookappclean/Feature/home/data/Model/book_model.dart';
import 'package:bookappclean/Core/NewModel/book2_model/item.dart';
import 'package:bookappclean/Feature/home/presentation/Views/widgets/book_details_body.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_cubit.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class BookDetailsView extends StatelessWidget {
  // const BookDetailsView({super.key});
  Item? model;
  BookDetailsView({required this.model});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      builder: (BuildContext context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: BookDetailsBody(model: model!),
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
