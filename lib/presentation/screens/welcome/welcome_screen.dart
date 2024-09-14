import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payung_teduh/common/route/route.dart';
import 'package:payung_teduh/domain/domain.dart';
import 'package:payung_teduh/presentation/screens/welcome/cubits/welcome_cubit.dart';
import 'package:payung_teduh/presentation/screens/welcome/welcome_images.dart';
import 'package:payung_teduh/presentation/screens/welcome/widgets/step.dart';
import 'package:payung_teduh/presentation/themes/themes.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late ValueNotifier<int> _lastIndex;
  late PageController _controller;
  final _items = [
    WelcomePageItem(
      title: 'What is Lorem Ipsum?',
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      imagePath: WelcomeImages.page1,
    ),
    WelcomePageItem(
      title: 'Where does it come from?',
      description:
          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
      imagePath: WelcomeImages.page2,
    ),
    WelcomePageItem(
      title: 'Where can I get some?',
      description:
          'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable.',
      imagePath: WelcomeImages.page3,
    )
  ];
  @override
  void initState() {
    super.initState();
    _lastIndex = ValueNotifier(0);
    _controller = PageController()
      ..addListener(
        () {
          if (_controller.page != null) {
            _lastIndex.value = _controller.page!.round();
          }
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WelcomeCubit()..getInitialAppInstalled(),
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: BlocConsumer<WelcomeCubit, WelcomeState>(
            listener: (context, state) {
              if (state.isInitial == false) {
                Navigator.pushReplacementNamed(context, Routes.home);
              }
            },
            builder: (context, state) {
              if (state.isInitial == null || !state.isInitial!) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.deepPurple,
                    strokeWidth: 4,
                  ),
                );
              }
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildPages(),
                  const SizedBox(height: 16),
                  _buildIndicator(),
                  _footerButton()
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  ValueListenableBuilder<int> _footerButton() {
    return ValueListenableBuilder(
      valueListenable: _lastIndex,
      builder: (context, value, child) {
        return Visibility(
          visible: value == _items.length - 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                context.welcomeCubit.setHasInitiated();
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.deepPurple, // Button background color
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8), // Adjust border radius here
                ),
              ),
              child: const ButtonMontserrat.small(
                'Let\'s Start',
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }

  SizedBox _buildPages() {
    return SizedBox(
      height: 385,
      child: PageView.builder(
        itemCount: _items.length,
        padEnds: true,
        controller: _controller,
        itemBuilder: (context, index) => WelcomeStep(
          data: _items.elementAt(index),
        ),
      ),
    );
  }

  ValueListenableBuilder<int> _buildIndicator() {
    return ValueListenableBuilder(
      valueListenable: _lastIndex,
      builder: (context, value, child) => SizedBox(
        height: 50,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: _items.length,
          separatorBuilder: (context, index) => const SizedBox(width: 8),
          itemBuilder: (context, index) => Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              color: value == index ? Colors.deepPurple : Colors.deepPurple[50],
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
