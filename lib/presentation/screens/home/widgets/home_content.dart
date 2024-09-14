// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payung_teduh/presentation/screens/home/widgets/home_content_section.dart';
import 'package:payung_teduh/presentation/screens/welcome/welcome_images.dart';

import 'package:payung_teduh/presentation/themes/themes.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // return TabBar(
    //   controller: _controller,
    //   tabs: [
    //     Tab(
    //       text: 'My Umberella',
    //     ),
    //     Tab(
    //       text: 'Corporate Umberella',
    //     ),
    //   ],
    // );

    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height -
          (MediaQuery.of(context).size.height * .22),
      child: RefreshIndicator(
        onRefresh: () async {},
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeContentSection(
                title: 'Financial Product',
                menus: [
                  MenuIcon(
                    icon: Icons.monitor_heart_outlined,
                    text: 'FinHealth',
                    iconColor: Colors.deepPurple,
                    backgroundColor: Colors.deepPurple[50],
                    onTap: () {},
                  ),
                  MenuIcon(
                    icon: Icons.directions_car_outlined,
                    text: 'FinCar',
                    iconColor: Colors.deepPurple,
                    backgroundColor: Colors.deepPurple[50],
                    onTap: () {},
                  ),
                  MenuIcon(
                    icon: Icons.house_outlined,
                    text: 'FinProp',
                    iconColor: Colors.deepPurple,
                    backgroundColor: Colors.deepPurple[50],
                    onTap: () {},
                  ),
                  MenuIcon(
                    icon: Icons.monetization_on_outlined,
                    text: 'Chip In',
                    iconColor: Colors.deepPurple,
                    backgroundColor: Colors.deepPurple[50],
                    onTap: () {},
                  ),
                  MenuIcon(
                    icon: Icons.square_outlined,
                    text: 'Pilgrimage',
                    iconColor: Colors.deepPurple,
                    backgroundColor: Colors.deepPurple[50],
                    onTap: () {},
                  )
                ],
              ),
              const SizedBox(height: 24),
              HomeContentSection(
                title: 'Category Selections',
                menus: [
                  MenuIcon(
                    icon: Icons.monitor_heart_outlined,
                    text: 'FinHealth',
                    iconColor: Colors.deepPurple,
                    backgroundColor: Colors.deepPurple[50],
                    onTap: () {},
                  ),
                  MenuIcon(
                    icon: Icons.directions_car_outlined,
                    text: 'FinCar',
                    iconColor: Colors.deepPurple,
                    backgroundColor: Colors.deepPurple[50],
                    onTap: () {},
                  ),
                  MenuIcon(
                    icon: Icons.house_outlined,
                    text: 'FinProp',
                    iconColor: Colors.deepPurple,
                    backgroundColor: Colors.deepPurple[50],
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const H3('Explore Wellness'),
                    const Spacer(),
                    Ripplify(
                      onTap: () {},
                      child: const Icon(Icons.arrow_upward),
                    ),
                    const Icon(Icons.sort),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 9 / 12,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(
                  7,
                  (index) => const WellnessCard(),
                ),
              ),
              const SizedBox(height: kToolbarHeight * 3)
            ],
          ),
        ),
      ),
    );
  }
}

class WellnessCard extends StatelessWidget {
  const WellnessCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Ripplify(
      rippleBorderRadius: BorderRadius.circular(16),
      onTap: () {},
      decoration: BoxDecoration(
        boxShadow: Shadows.elevation1(color: Colors.deepPurple),
        color: Colors.deepPurple[50],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            width: double.infinity,
            child: SvgPicture.asset(
              WelcomeImages.page1,
              height: 80,
            ),
          ),
          const Flexible(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Paragraph(
                    'Digital Voucer of Indomart and Alfamart merged and Polimerisated',
                    color: Colors.deepPurple,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  Paragraph.bold(
                    'Rp12.000,00',
                  ),
                  Body1(
                    'Limited Offer',
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
