import 'package:flutter/material.dart';
import 'package:ox0/core/common/utils/responsive.dart';
import 'package:ox0/features/works/presentation/pages/works_desktop.dart';
import 'package:ox0/features/works/presentation/pages/works_mobile.dart';
import 'package:ox0/features/works/presentation/pages/works_tablet.dart';

class WorksScreen extends StatelessWidget {
  static const String routeName = '/works';
  const WorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return const WorksDesktop();
    } else if (Responsive.isTablet(context)) {
      return const WorksTablet();
    } else {
      return const WorksMobile();
    }
  }
}
