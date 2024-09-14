import 'package:flutter/widgets.dart';
import 'package:payung_teduh/presentation/themes/src/typography.dart';
import 'package:payung_teduh/presentation/widgets/src/menu_icon.dart';

class HomeContentSection extends StatelessWidget {
  final String title;
  final List<MenuIcon> menus;
  const HomeContentSection({
    super.key,
    required this.title,
    this.menus = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H3(title),
          const SizedBox(height: 24),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [...menus],
          )
        ],
      ),
    );
  }
}
