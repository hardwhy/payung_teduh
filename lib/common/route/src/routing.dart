import 'package:flutter/cupertino.dart';
import 'package:payung_teduh/presentation/screens/home/home_screen.dart';
import 'package:payung_teduh/presentation/screens/welcome/welcome_screen.dart';

import 'routes.dart';

Route generateRouting(RouteSettings settings) {
  final route = settings.name;
  switch (route) {
    case Routes.welcome:
      return CupertinoPageRoute(builder: (context) => const WelcomeScreen());
    case Routes.home:
      return CupertinoPageRoute(builder: (context) => const HomeScreen());

    default:
      return CupertinoPageRoute(builder: (context) => const Text('Error'));
  }
}
