import 'package:flutter/material.dart';
import 'package:ox0/core/config/responsive.dart';
import 'package:ox0/features/home/presentation/pages/home_desktop.dart';
import 'package:ox0/features/home/presentation/pages/home_mobile.dart';
import 'package:ox0/features/home/presentation/pages/home_tablet.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return const HomeDesktop();
    } else if (Responsive.isTablet(context)) {
      return const HomeTablet();
    } else {
      return const HomeMobile();
    }
  }
}
