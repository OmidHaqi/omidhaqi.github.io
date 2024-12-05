import 'package:flutter/material.dart';
import 'package:ox0/core/config/responsive.dart';
import 'package:ox0/features/blog/data/models/blog_model.dart';
import 'package:ox0/features/blog_detalies/presentation/pages/blog_detalis_desktop.dart';
import 'package:ox0/features/blog_detalies/presentation/pages/blog_detalis_mobile.dart';
import 'package:ox0/features/blog_detalies/presentation/pages/blog_detalis_tablet.dart';

class BlogDetailsScreen extends StatelessWidget {
  static String routeName(String slug) => slug;
  const BlogDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as BlogModel;
    if (Responsive.isDesktop(context)) {
      return BlogDetalisDesktop(
        postDetails: args,
      );
    } else if (Responsive.isTablet(context)) {
      return const BlogDetalisTablet();
    } else {
      return const BlogDetalisMobile();
    }
  }
}
