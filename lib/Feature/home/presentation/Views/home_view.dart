// import 'package:bookappclean/Core/utils/assets_data.dart';
import 'package:bookappclean/Feature/home/presentation/Views/widgets/home_page_body.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_cubit.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_states.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      builder: (BuildContext context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: ConditionalBuilder(
            builder: (BuildContext context) {
              return const SafeArea(child: HomepageBody());
            },
            condition: HomeCubit.get(context).booklist != null &&
                HomeCubit.get(context).bestSallerBook != null,
            fallback: (BuildContext context) {
              return 
              state is GetBbestSallerBookError || state is GetBSearchListBooksError ?
              
               // ignore: prefer_const_constructors
               Center(child: Text("Network Error "),) 
              :  Center(child: CircularProgressIndicator()) ;
            },
          ),
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
