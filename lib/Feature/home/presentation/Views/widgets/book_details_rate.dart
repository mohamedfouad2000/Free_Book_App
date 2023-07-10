import 'package:bookappclean/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsRate extends StatelessWidget {
  const BookDetailsRate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Color.fromARGB(255, 233, 213, 38),
        ),
        Text(
          "4.8",
          style: StylesData.textRate,
        ),
        Text(
          "(2390)",
          style: StylesData.textGrayOpisty,
        ),
      ],
    );
  }
}
