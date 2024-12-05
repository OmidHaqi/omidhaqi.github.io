import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/config/responsive.dart';
import 'package:ox0/features/blog/data/datasources/api_provider.dart';
import 'package:ox0/features/blog/presentation/blocs/bloc/blog_bloc.dart';
import 'package:ox0/features/blog/presentation/blocs/bloc/blog_event.dart';
import 'package:ox0/features/blog/presentation/pages/blog_desktop.dart';
import 'package:ox0/features/blog/presentation/pages/blog_mobile.dart';
import 'package:ox0/features/blog/presentation/pages/blog_tablet.dart';

class BlogScreen extends StatefulWidget {
  static const String routeName = '/blogs';
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  @override
  void initState() {
    super.initState();
    ApiProvider().getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlogBloc(ApiProvider())
        ..add(
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
