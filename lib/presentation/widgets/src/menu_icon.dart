// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:payung_teduh/presentation/themes/themes.dart';
import 'package:payung_teduh/presentation/widgets/src/ripple.dart';

class MenuIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback? onTap;
  const MenuIcon({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Ripplify(
          onTap: onTap,
          rippleBorderRadius: BorderRadius.circular(90),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.deepPurple[400],
          ),
          child: Icon(
            icon,
            size: 30,
            color: Colors.deepPurple[50],
          ),
        ),
        const SizedBox(height: 8),
        Paragraph.bold(
          text,
          color: Colors.deepPurple[400],
        )
      ],
    );
  }
}
