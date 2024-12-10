import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/config/responsive.dart';
import 'package:ox0/features/blog/data/datasources/api_provider.dart';
import 'package:ox0/features/blog/data/models/blog_model.dart';
import 'package:ox0/features/blog/presentation/blocs/bloc/blog_bloc.dart';
import 'package:ox0/features/blog/presentation/blocs/bloc/blog_event.dart';
import 'package:ox0/features/blog_detalies/presentation/pages/blog_detalis_desktop.dart';
import 'package:ox0/features/blog_detalies/presentation/pages/blog_detalis_mobile.dart';
import 'package:ox0/features/blog_detalies/presentation/pages/blog_detalis_tablet.dart';

class BlogDetailsScreen extends StatelessWidget {
  final String? slug;
  static const routeName = '/blog/';
  const BlogDetailsScreen({super.key, this.slug});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as BlogModel;
    return BlocProvider(
      create: (context) => BlogBloc(ApiProvider())
        ..add(
          FetchBlogPosts(),
        ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (Responsive.isDesktop(context)) {
            return BlogDetalisDesktop(
              postDetails: args,
            );
          } else if (Responsive.isTablet(context)) {
            return const BlogDetalisTablet();
          } else {
            return const BlogDetalisMobile();
          }
        },
      ),
    );
  }
}
