import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/core/common/widgets/app_footer.dart';
import 'package:ox0/core/common/widgets/desktop_app_bar.dart';
import 'package:ox0/core/common/widgets/loading_widget.dart';
import 'package:ox0/core/common/widgets/title_text.dart';
import 'package:ox0/core/config/app_constants.dart';
import 'package:ox0/features/works/presentation/bloc/works_bloc.dart';

class WorksDesktop extends StatelessWidget {
  const WorksDesktop({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: DesktopAppBar(size: size),
      body: BlocBuilder<WorksBloc, WorksState>(
        builder: (context, state) {
          if (state is WorksLoading) {
            return const LoadingWidget();
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<WorksBloc, WorksState>(
                builder: (context, state) {
                  if (state is WorksLoaded) {
                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.10,
                          vertical: size.height * 0.02,
                        ),
                        child: MasonryGridView.builder(
                          itemCount:
                              state.works.length + 1, // Added 1 for the title
                          gridDelegate:
                              const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          itemBuilder: (context, index) {
                            if (index == 0) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: size.height * 0.02,
                                ),
                                child: TitleText(
                                  title: 'Works',
                                  size: size,
                                  titleFontSize: 46,
                                ),
                              );
                            }
                            final post = state.works[index - 1];
                            return AppContainer(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  '/works/${post.slug}',
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.network(
                                      '${AppConstants.baseUrl}/api/files/${post.collectionName}/${post.id}/${post.image}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          post.title,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Text(
                                          post.description,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        const SizedBox(height: 16),
                                      
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
                  if (state is WorksError) {
                    return Center(child: Text('Error: ${state.errorMessage}'));
                  }

                  return const Center(child: Text('No Posts Available'));
                },
              ),
              const Center(child: AppFooter()) // Wrapped AppFooter with Center
            ],
          );
        },
      ),
    );
  }
}
