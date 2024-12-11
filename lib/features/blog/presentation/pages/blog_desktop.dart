import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/core/common/widgets/desktop_app_bar.dart';
import 'package:ox0/core/config/app_constants.dart';
import 'package:ox0/features/blog/presentation/blocs/bloc/blog_bloc.dart';
import 'package:ox0/features/blog/presentation/blocs/bloc/blog_state.dart';
import 'package:ox0/features/blog_detalies/presentation/pages/blog_detalis_screen.dart';

class BlogDesktop extends StatelessWidget {
  const BlogDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlogBloc, BlogState>(
      builder: (context, state) {
        if (state is BlogLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DesktopAppBar(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 200, vertical: 30),
                child: Text(
                  'Blogs',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              BlocBuilder<BlogBloc, BlogState>(
                builder: (context, state) {
                  if (state is BlogLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is BlogLoaded) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 200),
                        child: GridView.builder(
                          itemCount: state.posts.length,
                          itemBuilder: (context, index) {
                            final post = state.posts[index];

                            return AppContiner(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  '/blogs/${post.slug}', // Corrected route name
                                  arguments: post,
                                );
                                log(BlogDetailsScreen.routeName.toString());
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          '${AppConstants.baseUrl}/api/files/${post.collectionName}/${post.id}/${post.image}',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        post.title,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    subtitle: Text(
                                      post.description,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                        ),
                      ),
                    );
                  }
                  if (state is BlogError) {
                    return Center(child: Text('Error: ${state.errorMessage}'));
                  }

                  return const Center(child: Text('No Posts Available'));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
