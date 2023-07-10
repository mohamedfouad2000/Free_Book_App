import 'package:bookappclean/Core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SplachViewBody extends StatelessWidget {
  const SplachViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(
            AssetsData.logo,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Read Book Free",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
