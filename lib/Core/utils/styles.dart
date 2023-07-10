import 'package:flutter/material.dart';

abstract class StylesData {
  static const titleSize = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const peopleWatch = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Color(0xff707070),
  );
  static const textGrayOpisty = TextStyle(
      fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff707070));
  static const textPrice = TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xffffffff));
  static const textRate = TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xffffffff));
  static const bookTitle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xffffffff));
}
