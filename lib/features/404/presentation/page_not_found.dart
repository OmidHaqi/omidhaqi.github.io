import 'package:flutter/material.dart';
import 'package:ox0/core/config/responsive.dart';
import 'package:ox0/features/404/presentation/page_not_found_desktop.dart';
import 'package:ox0/features/404/presentation/page_not_found_mobile.dart';
import 'package:ox0/features/404/presentation/page_not_found_tablet.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({
    super.key,
  });

  @override
   Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return const PageNotFoundDesktop();
    } else if (Responsive.isTablet(context)) {
      return const PageNotFoundTablet();
    } else {
      return const PageNotFoundMobile();
    }
  }
}

