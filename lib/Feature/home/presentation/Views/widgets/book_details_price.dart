// import 'package:bookapp/Core/components.dart';
// ignore_for_file: must_be_immutable

import 'package:bookappclean/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsPrice extends StatelessWidget {
  BookDetailsPrice({required this.url});
  String? url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10))),
              alignment: Alignment.center,
              child: Text(
                "Free",
                style: StylesData.textPrice.copyWith(color: Colors.black),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () async {
                // const url = 'https://blog.logrocket.com';
                if (await canLaunch(url!)) {
                  await launch(url!);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Container(
                height: 40,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Color(0xffEF8262),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: const Text("preview", style: StylesData.textRate),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
