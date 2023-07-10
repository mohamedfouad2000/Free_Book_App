import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_cubit.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_states.dart';
import 'package:bookappclean/Feature/search/presentation/views/widgets/search_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      builder: (BuildContext context, state) {
        return const Scaffold(
          // resizeToAvoidBottomInset: true,
          body: SearchBody(),
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
