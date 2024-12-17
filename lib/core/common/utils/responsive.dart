import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    this.desktop,
  });

  /// This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 768;  // Updated breakpoint

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 1200 &&
      MediaQuery.sizeOf(context).width >= 768;  // Updated breakpoint

  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 1200;  // Updated breakpoint

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    /// If our width is more than 1200 then we consider it a desktop
    if (size.width >= 1200 && desktop != null) {  // Updated breakpoint
      return desktop!;
    }

    /// If width it less then 1200 and more then 768 we consider it as tablet
    else if (size.width >= 768 && tablet != null) {  // Updated breakpoint
      return tablet!;
    }

    /// Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
