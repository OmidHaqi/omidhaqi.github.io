import 'package:flutter/material.dart';
import 'package:ox0/features/about/presentation/pages/about_screen.dart';
import 'package:ox0/features/contact/presentation/pages/contact_screen.dart';
import 'package:ox0/features/home/presentation/pages/home_screen.dart';
import 'package:ox0/features/splash/presentation/pages/splash_screen.dart';
import 'package:ox0/features/works/presentation/pages/works_screen.dart';
import 'package:ox0/features/404/presentation/page_not_found.dart';

Route<dynamic>? onGenerateRoute(settings) {
  Widget page;
  switch (settings.name) {
    case SplashScreen.routeName:
      page = const SplashScreen();
      break;
    case HomeScreen.routeName:
      page = const HomeScreen();
      break;
    case AboutScreen.routeName:
      page = const AboutScreen();
      break;
    case WorksScreen.routeName:
      page = const WorksScreen();
      break;
    case ContactScreen.routeName:
      page = const ContactScreen();
      break;
    // Add other routes here
    default:
      page = const PageNotFound();
  }

  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (_, __, ___) => page,
    transitionsBuilder: (_, animation, __, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0.0, 0.0),
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: animation,
          curve: Curves.easeOut,
        )),
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 300),
  );
}
