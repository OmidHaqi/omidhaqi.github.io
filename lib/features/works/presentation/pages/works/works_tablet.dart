import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/widgets/app_continer.dart';
import 'package:ox0/core/common/widgets/app_footer.dart';
import 'package:ox0/core/common/widgets/loading_widget.dart';
import 'package:ox0/core/common/widgets/mobile_app_bar.dart';
import 'package:ox0/core/common/widgets/my_drawer.dart';
import 'package:ox0/core/config/app_constants.dart';
import 'package:ox0/features/works/presentation/bloc/works_bloc.dart';

class WorksTablet extends StatelessWidget {
  const WorksTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      drawer: const MyDrawer(
        ctaText: 'Let\'s Talk',
      ),
      appBar: MobileAppBar(size: size),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          BlocBuilder<WorksBloc, WorksState>(
            builder: (context, state) {
              if (state is WorksLoading) {
                return const LoadingWidget();
              }
              if (state is WorksLoaded) {
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                    ), // Adjusted padding
                    child: GridView.builder(
                      itemCount: state.works.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Adjusted crossAxisCount
                        crossAxisSpacing: 10, // Adjusted spacing
                        mainAxisSpacing: 10,
                        mainAxisExtent: 450,
                        // Adjusted spacing
                      ),
                      itemBuilder: (context, index) {
                        final post = state.works[index];

                        return AppContainer(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/works/${post.slug}',
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
                                    width: size.width * 0.50,
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
          const Center(child: AppFooter())
        ],
      ),
    );
  }
}
