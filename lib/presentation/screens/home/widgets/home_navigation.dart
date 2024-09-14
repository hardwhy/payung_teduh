import 'package:flutter/material.dart';
import 'package:payung_teduh/presentation/themes/themes.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: true,
      snap: true,
      maxChildSize: .6,
      minChildSize: .2,
      initialChildSize: .2,
      builder: (context, scrollController) => Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                color: Colors.deepPurple[200],
                borderRadius: BorderRadius.circular(60),
              ),
              width: 60,
              height: 6,
            ),
            Flexible(
              child: GridView.count(
                physics: const ClampingScrollPhysics(),
                crossAxisCount: 3,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                padding: const EdgeInsets.symmetric(vertical: 20),
                childAspectRatio: 1,
                controller: scrollController,
                children: [
                  MenuIcon(
                    icon: Icons.home_outlined,
                    text: 'Home',
                    onTap: () {},
                  ),
                  MenuIcon(
                    icon: Icons.search,
                    text: 'Search',
                    onTap: () {},
                  ),
                  MenuIcon(
                    icon: Icons.trolley,
                    text: 'Cart',
                    onTap: () {},
                  ),
                  MenuIcon(
                    icon: Icons.home_outlined,
                    text: 'Home',
                    onTap: () {},
                  ),
                  MenuIcon(
                    icon: Icons.search,
                    text: 'Search',
                    onTap: () {},
                  ),
                  MenuIcon(
                    icon: Icons.trolley,
                    text: 'Cart',
                    onTap: () {},
                  ),
                  MenuIcon(
                    icon: Icons.home_outlined,
                    text: 'Home',
                    onTap: () {},
                  ),
                  MenuIcon(
                    icon: Icons.search,
                    text: 'Search',
                    onTap: () {},
                  ),
                  MenuIcon(
                    icon: Icons.trolley,
                    text: 'Cart',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
