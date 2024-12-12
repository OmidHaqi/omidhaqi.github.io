import 'package:blurbox/blurbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/utils/extension.dart';
import 'package:ox0/core/common/widgets/app_button.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/core/common/widgets/logo.dart';
import 'package:ox0/core/config/app_constants.dart';
import 'package:ox0/features/blog/presentation/blocs/bloc/blog_bloc.dart';
import 'package:ox0/features/blog/presentation/blocs/bloc/blog_state.dart';

class BlogMobile extends StatelessWidget {
  const BlogMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return BlocBuilder<BlogBloc, BlogState>(
      builder: (context, state) {
        if (state is BlogLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        return Scaffold(
          drawer: BlurBox(
            width: size.width * 0.6,
            height: double.infinity,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            blur: 20,
            child: const SizedBox.shrink(),
          ),
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox.shrink(),
                const Logo(),
                AppButton(
                  //TODO: Implement onPressed
                  onPressed: () {},
                  text: 'Let\'s Talk',
                ),
              ],
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 30,
                ), // Adjusted padding
                child: Text(
                  'Blogs',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
              BlocBuilder<BlogBloc, BlogState>(
                builder: (context, state) {
                  if (state is BlogLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is BlogLoaded) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50,
                        ), // Adjusted padding
                        child: ListView.builder(
                          itemCount: state.posts.length,
                          itemBuilder: (context, index) {
                            final post = state.posts[index];

                            return AppContiner(
                              width: size.width * 0.05,
                              height: size.height * 0.50,
                              margin: EdgeInsets.all(8),
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  '/blogs/${post.slug}',
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Image.network(
                                        '${AppConstants.baseUrl}/api/files/${post.collectionName}/${post.id}/${post.image}',
                                        fit: BoxFit.cover,
                                        width: size.width * 0.7,
                                        height: size.height * 0.25,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ListTile(
                                          title: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              post.title,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          subtitle: Text(
                                            post.description,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 3,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(post.author),
                                                  ),
                                                  const Icon(Icons.edit),
                                                ],
                                              ),
                                              const SizedBox(width: 20),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(post.created
                                                        .formatted()),
                                                  ),
                                                  const Icon(
                                                      Icons.calendar_today),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
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
