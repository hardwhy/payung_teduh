import 'package:flutter/cupertino.dart';
import 'package:payung_teduh/presentation/screens/error/error.dart';
import 'package:payung_teduh/presentation/screens/home/home_screen.dart';
import 'package:payung_teduh/presentation/screens/personal_info/personal_info_screen.dart';
import 'package:payung_teduh/presentation/screens/profile/profile.dart';
import 'package:payung_teduh/presentation/screens/welcome/welcome_screen.dart';

import 'routes.dart';

Route generateRouting(RouteSettings settings) {
  final route = settings.name;
  switch (route) {
    case Routes.welcome:
      return CupertinoPageRoute(builder: (context) => const WelcomeScreen());
    case Routes.home:
      return CupertinoPageRoute(builder: (context) => const HomeScreen());
    case Routes.profile:
      return CupertinoPageRoute(builder: (context) => const ProfileScreen());
    case Routes.personalInfo:
      return CupertinoPageRoute(
        builder: (context) => const PersonalInfoScreen(),
      );
    default:
      return CupertinoPageRoute(builder: (context) => const ErrorScreen());
  }
}
