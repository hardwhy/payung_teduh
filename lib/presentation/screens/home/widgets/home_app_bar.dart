import 'package:flutter/material.dart';
import 'package:payung_teduh/common/route/route.dart';
import 'package:payung_teduh/presentation/themes/themes.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Paragraph('Gutten Nacht!'),
              Hero(
                tag: 'profile-name',
                child: H2(
                  'Ayi Hardiyanto',
                  color: Colors.deepPurple,
                ),
              )
            ],
          ),
          const Spacer(),
          Ripplify(
            child: const Icon(
              Icons.notifications_outlined,
              color: Colors.deepPurple,
              size: 30,
            ),
            onTap: () {},
          ),
          const SizedBox(width: 8),
          Hero(
            tag: 'profile-pict',
            child: Ripplify(
              onTap: () {
                Navigator.pushNamed(context, Routes.profile);
              },
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.deepPurple[200]),
              child: Paragraph.bold(
                'A',
                color: Colors.deepPurple[50],
              ),
            ),
          )
        ],
      ),
    );
  }
}
