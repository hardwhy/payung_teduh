import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white),
        child: const Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(height: 20),
                  HomeContent(),
                ],
              ),
            ),
            Positioned.fill(child: HomeNavigation()),
          ],
        ),
      ),
    );
  }
}
