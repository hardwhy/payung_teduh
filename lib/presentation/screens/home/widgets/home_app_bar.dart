import 'package:flutter/material.dart';
import 'package:payung_teduh/presentation/themes/themes.dart';

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
            Body1.bold(
              'Ayi Hardiyanto',
              color: Colors.deepPurple,
            )
          ],
        ),
        const Spacer(),
        const Icon(Icons.notifications_outlined,
            color: Colors.deepPurple),
        const SizedBox(width: 8),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.deepPurple[200]),
          child: Body1.bold(
            'A',
            color: Colors.deepPurple[50],
          ),
        )
      ],
    );
  }
}
