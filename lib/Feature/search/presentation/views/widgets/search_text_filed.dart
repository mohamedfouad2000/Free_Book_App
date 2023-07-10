import 'package:bookappclean/Feature/home/presentation/manger/homeCubit/home_cubit.dart';
import 'package:flutter/material.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left: 9,right:9 ),
      child: TextField(
        onSubmitted: (i) {
          HomeCubit.get(context).searchFun(i: i);
        },
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(
                color: Colors.white,
              )),
          fillColor: Color.fromARGB(255, 136, 18, 18),
          hintText: "Search",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.black54)),
          suffixIcon: Icon(
            Icons.search,
          ),
        ),
      ),
    );
  }
}
