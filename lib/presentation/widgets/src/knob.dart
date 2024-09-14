// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:payung_teduh/presentation/themes/themes.dart';

class Knob extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final Color? backgroundColor;
  final Color? titleColor;
  const Knob({
    super.key,
    this.onTap,
    required this.title,
    this.backgroundColor,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.deepPurple, // Button background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Adjust border radius here
        ),
      ),
      child: ButtonMontserrat.small(
        title,
        color: titleColor ?? Colors.white,
      ),
    );
  }
}
