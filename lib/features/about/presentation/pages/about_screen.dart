import 'package:flutter/material.dart';
import 'package:ox0/core/common/utils/responsive.dart';
import 'package:ox0/features/about/presentation/pages/about_desktop.dart';
import 'package:ox0/features/about/presentation/pages/about_mobile.dart';
import 'package:ox0/features/about/presentation/pages/about_tablet.dart';

class AboutScreen extends StatelessWidget {
  static const String routeName = '/about';
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return const AboutDesktop();
    } else if (Responsive.isTablet(context)) {
      return const AboutTablet();
    } else {
      return const AboutMobile();
    }
  }
}
