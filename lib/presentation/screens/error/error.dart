import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payung_teduh/common/constants/constants.dart';
import 'package:payung_teduh/presentation/themes/themes.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Ripplify(
          child: const Icon(Icons.arrow_back),
          onTap: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SvgPicture.asset(
              ImageAssets.begging,
              height: 400,
            ),
            const SizedBox(height: 24),
            const H3(
              'Something went wrong!',
              color: Colors.deepPurple,
            ),
            const SizedBox(height: 8),
            const Paragraph('I wish I had enough time to finish this page. :('),
          ],
        ),
      ),
    );
  }
}
