import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/utils/responsive.dart';
import 'package:ox0/features/blog/data/datasources/blog_api_provider.dart';
import 'package:ox0/features/blog/presentation/bloc/blog_bloc.dart';
import 'package:ox0/features/blog/presentation/pages/blog/blog_desktop.dart';
import 'package:ox0/features/blog/presentation/pages/blog/blog_mobile.dart';
import 'package:ox0/features/blog/presentation/pages/blog/blog_tablet.dart';

class BlogScreen extends StatelessWidget {
  static const String routeName = '/blogs';
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlogBloc(
        BlogApiProvider(),
      )..add(
          FetchBlogPosts(),
        ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (Responsive.isDesktop(context)) {
            return const BlogDesktop();
          } else if (Responsive.isTablet(context)) {
            return const BlogTablet();
          } else {
            return const BlogMobile();
          }
        },
      ),
    );
  }
}
