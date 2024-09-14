import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  static HomeScreenState? of(BuildContext context) =>
      context.findAncestorStateOfType<HomeScreenState>();
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  late ValueNotifier<double> sheetExtent;

  @override
  void initState() {
    super.initState();
    sheetExtent = ValueNotifier(.22);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white),
        child: Stack(
          children: [
            const SafeArea(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(height: 20),
                  HomeContent(),
                ],
              ),
            ),
            ValueListenableBuilder(
              valueListenable: sheetExtent,
              builder: (context, value, child) {
                return Align(
                  alignment: Alignment.topCenter,
                  child: IgnorePointer(
                    ignoring: value < .23,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      color: Colors.black.withOpacity(value - .22),
                    ),
                  ),
                );
              },
            ),
            const Positioned.fill(child: HomeNavigation()),
          ],
        ),
      ),
    );
  }
}
