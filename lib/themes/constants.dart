import 'package:flutter/material.dart';

class MyColors {
  static const Color kAzulCeu = Color(0xff00ADC3);
  static const Color kAzulMarinho = Color(0xff2B4A8E);
  static const Color kLaranjaCenoura = Color(0xffF77859);
  static const Color kGelo = Color(0xffC2F2F8);
  static const Color kAmareloMostarda = Color(0xFFFFA33B);
  static const Color kCorFontePrimaria = Color(0xFFFAFAFA);
}

class MyTextStyle {
  static const TextStyle text20 = TextStyle(
      color: MyColors.kCorFontePrimaria,
      fontSize: 20,
      fontFamily: 'ConcertOne');
  static const TextStyle text30 = TextStyle(
      color: MyColors.kCorFontePrimaria,
      fontSize: 30,
      fontFamily: 'ConcertOne');
}
