import 'package:flutter/material.dart';
import 'package:payung_teduh/common/constants/constants.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, leading: const Back()),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Empty(
          imageAsset: ImageAssets.begging,
          title: 'Something went wrong!',
          description: 'I wish I had enough time to finish this page. :(',
        ),
      ),
    );
  }
}
