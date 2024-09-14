import 'package:flutter/material.dart';

class HomeNavigation extends StatelessWidget {
  const HomeNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: true,
      snap: true,
      maxChildSize: .5,
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
                color: Colors.deepPurple[50],
                borderRadius: BorderRadius.circular(60),
              ),
              width: 60,
              height: 6,
            ),
            Flexible(
              child: GridView.count(
                physics: const ClampingScrollPhysics(),
                crossAxisCount: 3,
                mainAxisSpacing: 30,
                crossAxisSpacing: 25,
                padding: const EdgeInsets.symmetric(vertical: 20),
                childAspectRatio: 1.5,
                controller: scrollController,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.deepPurple[200]),
                    // padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.home_outlined,
                      size: 30,
                      color: Colors.deepPurple[50],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple[200],
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.deepPurple[50],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.deepPurple[200]),
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.trolley,
                      size: 30,
                      color: Colors.deepPurple[50],
                    ),
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
