// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:payung_teduh/common/constants/constants.dart';
import 'package:payung_teduh/domain/domain.dart';
import 'package:payung_teduh/presentation/screens/home/cubits/wellness/wellness_cubit.dart';
import 'package:payung_teduh/presentation/screens/home/widgets/home_content_section.dart';

import 'package:payung_teduh/presentation/themes/themes.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent>
    with SingleTickerProviderStateMixin {
  // late TabController _controller;
  @override
  void initState() {
    super.initState();
    // _controller = TabController(length: 2, vsync: this);
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
        child: Scrollbar(
          child: SingleChildScrollView(
            padding: EdgeInsets.zero,
            primary: false,
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
                    ),
                    MenuIcon(
                      icon: Icons.directions_car_outlined,
                      text: 'FinCar',
                      iconColor: Colors.deepPurple,
                      backgroundColor: Colors.deepPurple[50],
                    ),
                    MenuIcon(
                      icon: Icons.house_outlined,
                      text: 'FinProp',
                      iconColor: Colors.deepPurple,
                      backgroundColor: Colors.deepPurple[50],
                    ),
                    MenuIcon(
                      icon: Icons.monetization_on_outlined,
                      text: 'Chip In',
                      iconColor: Colors.deepPurple,
                      backgroundColor: Colors.deepPurple[50],
                    ),
                    MenuIcon(
                      icon: Icons.square_outlined,
                      text: 'Pilgrimage',
                      iconColor: Colors.deepPurple,
                      backgroundColor: Colors.deepPurple[50],
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
                    ),
                    MenuIcon(
                      icon: Icons.directions_car_outlined,
                      text: 'FinCar',
                      iconColor: Colors.deepPurple,
                      backgroundColor: Colors.deepPurple[50],
                    ),
                    MenuIcon(
                      icon: Icons.house_outlined,
                      text: 'FinProp',
                      iconColor: Colors.deepPurple,
                      backgroundColor: Colors.deepPurple[50],
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
                      BlocBuilder<WellnessCubit, WellnessState>(
                        builder: (context, state) {
                          return Ripplify(
                            onTap: context.wellnessCubit.sort,
                            child: Icon(
                              state.isAscending
                                  ? Icons.arrow_downward
                                  : Icons.arrow_upward,
                              color: Colors.deepPurple,
                            ),
                          );
                        },
                      ),
                      const Icon(
                        Icons.sort,
                        color: Colors.deepPurple,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                BlocBuilder<WellnessCubit, WellnessState>(
                  builder: (context, state) {
                    if (state.wellnessList.isEmpty) {
                      return Column(
                        children: [
                          const Empty(
                            imageAsset: ImageAssets.empty,
                            imageSize: 200,
                            title: 'Nothing to see here',
                            description:
                                'Come back later, you might find something interesing, Ciao!',
                          ),
                          const SizedBox(height: 16),
                          Knob(
                            title: 'Generate 6 New Wellnesses',
                            onTap: context.wellnessCubit.generateData,
                          )
                        ],
                      );
                    }
                    if (state.isLoading) {
                      return const CircularProgressIndicator(
                        color: Colors.deepPurple,
                      );
                    }
                    return Column(
                      children: [
                        GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: 9 / 13,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          primary: false,
                          children: List.generate(
                            state.wellnessList.length,
                            (index) => WellnessCard(
                              wellness: state.wellnessList.elementAt(index),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          width: double.infinity,
                          child: Knob(
                            title: 'Clear Wellnesses',
                            backgroundColor: Colors.red,
                            onTap: context.wellnessCubit.clearData,
                          ),
                        )
                      ],
                    );
                  },
                ),
                const SizedBox(height: kToolbarHeight * 3)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WellnessCard extends StatelessWidget {
  final Wellness wellness;
  const WellnessCard({
    super.key,
    required this.wellness,
  });

  @override
  Widget build(BuildContext context) {
    return Ripplify(
      rippleBorderRadius: BorderRadius.circular(16),
      onTap: () {
        Navigator.pushNamed(context, 'no-route');
      },
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
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.network(
                wellness.imagePath,
                fit: BoxFit.cover,
                height: 80,
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Paragraph(
                    wellness.name,
                    color: Colors.deepPurple,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Paragraph.bold(
                    'Rp${NumberFormat("#,##0.00", "de_DE").format(wellness.price)}',
                  ),
                  Body1(
                    wellness.isLimitedOffer ? 'Limited Offer' : '',
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
