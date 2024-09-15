// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:payung_teduh/presentation/themes/src/typography.dart';

class Empty extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String? description;
  final double? imageSize;
  const Empty({
    super.key,
    required this.imageAsset,
    required this.title,
    this.description,
    this.imageSize,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imageAsset,
          height: imageSize ?? 400,
        ),
        const SizedBox(height: 24),
        H3(
          title,
          color: Colors.deepPurple,
        ),
        const SizedBox(height: 8),
        if (description != null)
          Paragraph(
            description!,
            align: TextAlign.center,
          )
      ],
    );
  }
}
