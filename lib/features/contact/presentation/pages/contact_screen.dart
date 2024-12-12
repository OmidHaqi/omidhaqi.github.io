import 'package:flutter/material.dart';
import 'package:ox0/core/common/utils/responsive.dart';
import 'package:ox0/features/contact/presentation/pages/contact_desktop.dart';
import 'package:ox0/features/contact/presentation/pages/contact_mobile.dart';
import 'package:ox0/features/contact/presentation/pages/contact_tablet.dart';

class ContactScreen extends StatelessWidget {
  static const String routeName = '/contact';
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return const ContactDesktop();
    } else if (Responsive.isTablet(context)) {
      return const ContactTablet();
    } else {
      return const ContactMobile();
    }
  }
}
