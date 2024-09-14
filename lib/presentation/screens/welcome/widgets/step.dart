// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payung_teduh/domain/domain.dart';
import 'package:payung_teduh/presentation/themes/themes.dart';

class WelcomeStep extends StatelessWidget {
  final WelcomePageItem data;
  const WelcomeStep({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SvgPicture.asset(data.imagePath, height: 200),
          const SizedBox(height: 16),
          H2(data.title, color: Colors.deepPurple),
          const SizedBox(height: 16),
          Paragraph(data.description, align: TextAlign.center)
        ],
      ),
    );
  }
}
