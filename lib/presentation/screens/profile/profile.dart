// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:payung_teduh/common/route/route.dart';

import 'package:payung_teduh/presentation/themes/themes.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

class ProfileItem {
  final String name;
  final IconData icon;
  final VoidCallback? onTap;
  ProfileItem({
    required this.name,
    required this.icon,
    this.onTap,
  });
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProfileItem> profileItems = [
      ProfileItem(
        name: 'Personal Information',
        icon: Icons.account_circle_outlined,
        onTap: () {
          Navigator.pushNamed(context, Routes.personalInfo);
        },
      ),
      ProfileItem(
        name: 'FAQ',
        icon: Icons.chat_outlined,
      ),
      ProfileItem(
        name: 'Logout',
        icon: Icons.power_settings_new_outlined,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: const Back(),
        elevation: 0,
        title: const H2(
          'Profile',
          color: Colors.deepPurple,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        child: Stack(
          children: [
            // Align(
            //   alignment: Alignment.bottomRight,
            //   child: SvgPicture.asset(
            //     ImageAssets.relax,
            //     height: 200,
            //   ),
            // ),
            Positioned.fill(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[50],
                        borderRadius: BorderRadius.circular(16),
                        boxShadow:
                            Shadows.elevation1(color: Colors.deepPurple)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 56,
                          width: 56,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepPurple[100],
                          ),
                          child: const H2(
                            'A',
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            H3(
                              'Ayi Hardiyanto',
                            ),
                            Paragraph(
                              '17 Year(s)',
                              color: Colors.black45,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Flexible(
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final item = profileItems.elementAtOrNull(index);
                        return Ripplify(
                          onTap: item?.onTap,
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Icon(
                                item?.icon,
                                color: Colors.deepPurple,
                              ),
                              const SizedBox(width: 16),
                              Paragraph(
                                '${item?.name}',
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(),
                      itemCount: profileItems.length,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
