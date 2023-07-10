import 'package:bookappclean/Core/components.dart';
import 'package:bookappclean/Feature/home/presentation/Views/home_view.dart';
import 'package:flutter/material.dart';

class CustomBookDetailsAppbar extends StatelessWidget {
  const CustomBookDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              navigateTo(context, const HomePage());
            },
            icon: const Icon(Icons.close),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}
