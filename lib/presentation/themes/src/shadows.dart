import 'package:flutter/material.dart';

class Shadows {
  static List<BoxShadow> base({Color color = Colors.white}) => [
        BoxShadow(
          color: color.withOpacity(.10),
          offset: const Offset(0, 1), // x, y
          blurRadius: 3,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: color.withOpacity(.18),
          offset: const Offset(0, 1), // x, y
          blurRadius: 2,
          spreadRadius: 0,
        ),
      ];
  static List<BoxShadow> elevation({Color color = Colors.white}) => [
        BoxShadow(
          blurRadius: 2,
          spreadRadius: 1,
          offset: const Offset(0, 1),
          color: color.withOpacity(.1),
        ),
        BoxShadow(
          blurRadius: 1,
          spreadRadius: 0,
          offset: const Offset(0, 1),
          color: color.withOpacity(.18),
        ),
      ];

  static List<BoxShadow> elevation1({Color color = Colors.white}) => [
        BoxShadow(
          blurRadius: 3,
          spreadRadius: 1,
          offset: const Offset(0, 1),
          color: color.withOpacity(.1),
        ),
        BoxShadow(
          blurRadius: 2,
          spreadRadius: 0,
          offset: const Offset(0, 1),
          color: color.withOpacity(.18),
        ),
      ];

  static List<BoxShadow> elevation2({Color color = Colors.white}) => [
        BoxShadow(
          blurRadius: 8,
          spreadRadius: 0,
          offset: const Offset(0, 4),
          color: color.withOpacity(.16),
        ),
        BoxShadow(
          blurRadius: 2,
          spreadRadius: 0,
          offset: const Offset(0, 0),
          color: color.withOpacity(.04),
        ),
      ];

  static List<BoxShadow> elevation3({Color color = Colors.white}) => [
        BoxShadow(
          blurRadius: 20,
          spreadRadius: 0,
          offset: const Offset(0, 3),
          color: color.withOpacity(.25),
        ),
      ];
}
