import 'dart:async';

import 'package:bookappclean/Core/components.dart';
import 'package:bookappclean/Feature/home/presentation/Views/home_view.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_cubit.dart';
import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_states.dart';
import 'package:bookappclean/Feature/splash/presentation/views/widgets/spbody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class SplachView extends StatelessWidget {
  // const SplachView({super.key});
 late Timer timer;
  Future<void> sDelay(context) async {
    timer = Timer(
        const Duration(
          seconds: 5,
        ), () {
      navigateAndFinish(context, const HomePage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      builder: (BuildContext context, state) {
        sDelay(context);

        return const Scaffold(
          body: SplachViewBody(),
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
