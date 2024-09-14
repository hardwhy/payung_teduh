import 'package:flutter/material.dart';
import 'package:payung_teduh/presentation/screens/home/home_screen.dart';
import 'package:payung_teduh/presentation/themes/themes.dart';
import 'package:payung_teduh/presentation/widgets/widgets.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (notification) {
        HomeScreen.of(context)?.sheetExtent.value = notification.extent;
        return true;
      },
      child: DraggableScrollableSheet(
        expand: true,
        snap: true,
        maxChildSize: .6,
        minChildSize: .22,
        initialChildSize: .22,
        builder: (context, scrollController) => Container(
          decoration: BoxDecoration(
            color: Colors.deepPurple[50],
            boxShadow: Shadows.elevation1(color: Colors.black),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            physics: const ClampingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[200],
                    borderRadius: BorderRadius.circular(60),
                  ),
                  width: 60,
                  height: 6,
                ),
                Flexible(
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    childAspectRatio: 1,
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
                        icon: Icons.shopping_cart_outlined,
                        text: 'Cart',
                        onTap: () {},
                      ),
                      MenuIcon(
                        icon: Icons.receipt_long_sharp,
                        text: 'Transactions',
                        onTap: () {},
                      ),
                      MenuIcon(
                        icon: Icons.confirmation_num_outlined,
                        text: 'Voucher',
                        onTap: () {},
                      ),
                      MenuIcon(
                        icon: Icons.location_on_outlined,
                        text: 'Address',
                        onTap: () {},
                      ),
                      MenuIcon(
                        icon: Icons.people_outline,
                        text: 'Connections',
                        onTap: () {},
                      ),
                      MenuIcon(
                        icon: Icons.more_horiz,
                        backgroundColor: Colors.black26,
                        text: 'More',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
