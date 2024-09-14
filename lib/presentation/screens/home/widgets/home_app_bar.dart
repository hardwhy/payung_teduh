import 'package:flutter/material.dart';
import 'package:payung_teduh/presentation/themes/themes.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Paragraph('Gutten Nacht!'),
            H3(
              'Ayi Hardiyanto',
              color: Colors.deepPurple,
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
        Ripplify(
          onTap: () {},
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.deepPurple[200]),
          child: Paragraph.bold(
            'A',
            color: Colors.deepPurple[50],
          ),
        )
      ],
    );
  }
}
