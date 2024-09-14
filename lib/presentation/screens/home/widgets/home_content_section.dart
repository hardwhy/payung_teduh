import 'package:flutter/material.dart';
import 'package:payung_teduh/presentation/themes/themes.dart';

class HomeContentSection extends StatelessWidget {
  const HomeContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        H3('Financing'),
        Wrap()
      ],
    );
  }
}
