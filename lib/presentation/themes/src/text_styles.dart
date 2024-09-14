import 'package:flutter/material.dart';
import 'package:payung_teduh/presentation/themes/src/font_family.dart';

class TextStyles {
  static TextStyle h1 = const TextStyle(
    fontFamily: FontFamily.montserrat,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 24,
    height: 36 / 24,
  );

  static TextStyle h2 = const TextStyle(
    fontFamily: FontFamily.montserrat,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    height: 30 / 20,
  );

  static TextStyle h3 = const TextStyle(
    fontFamily: FontFamily.montserrat,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    height: 24 / 16,
  );

  static TextStyle paragraphBold = const TextStyle(
    fontFamily: FontFamily.montserratBold,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    height: 20 / 14,
  );

  static TextStyle paragraphRegular = const TextStyle(
    fontFamily: FontFamily.montserrat,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 20 / 14,
  );

  static TextStyle buttonBig = const TextStyle(
    fontFamily: FontFamily.montserrat,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    height: 24 / 16,
  );

  static TextStyle buttonSmall = const TextStyle(
    fontFamily: FontFamily.montserrat,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 12,
    height: 18 / 12,
  );


  static TextStyle body1Bold = const TextStyle(
    fontFamily: FontFamily.montserrat,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 12,
    height: 18 / 12,
  );
  static TextStyle body1Regular = const TextStyle(
    fontFamily: FontFamily.montserrat,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 18 / 12,
  );

  static TextStyle labelBold = const TextStyle(
    fontFamily: FontFamily.montserratBold,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    fontSize: 10,
    height: 16 / 10,
  );

  static TextStyle labelRegular = const TextStyle(
    fontFamily: FontFamily.montserratRegular,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    fontSize: 10,
    height: 16 / 10,
  );
}
