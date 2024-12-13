import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/utils/responsive.dart';
import 'package:ox0/core/common/widgets/loading_widget.dart';
import 'package:ox0/features/blog/data/datasources/blog_api_provider.dart';
import 'package:ox0/features/blog/presentation/blocs/bloc/blog_bloc.dart';
import 'package:ox0/features/blog/presentation/blocs/bloc/blog_event.dart';
import 'package:ox0/features/blog/presentation/blocs/bloc/blog_state.dart';
import 'package:ox0/features/blog/presentation/pages/blog_detalies/blog_detalis_desktop.dart';
import 'package:ox0/features/blog/presentation/pages/blog_detalies/blog_detalis_mobile.dart';
import 'package:ox0/features/blog/presentation/pages/blog_detalies/blog_detalis_tablet.dart';

class BlogDetailsScreen extends StatelessWidget {
  final String slug;
  static const routeName = '/blogs/';
  const BlogDetailsScreen({super.key, required this.slug});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          BlogBloc(BlogApiProvider())..add(FetchSingleBlogPost(slug),),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return BlocBuilder<BlogBloc, BlogState>(
            builder: (context, state) {
              if (state is BlogPostLoaded) {
                if (Responsive.isDesktop(context)) {
                  return BlogDetalisDesktop(postDetails: state.post);
                } else if (Responsive.isTablet(context)) {
                  return BlogDetalisTablet(postDetails: state.post);
                } else {
                  return BlogDetalisMobile(postDetails: state.post);
                }
              }
              return const LoadingWidget();
            },
          );
        },
      ),
    );
  }
}
