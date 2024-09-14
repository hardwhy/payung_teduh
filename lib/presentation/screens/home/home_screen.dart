import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.deepPurple[50]),
        child: const Stack(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    HomeAppBar(),
                    SizedBox(height: 20),
                    HomeContent(),
                  ],
                ),
              ),
            ),
            Positioned.fill(child: HomeNavigation()),
          ],
        ),
      ),
    );
  }
}
