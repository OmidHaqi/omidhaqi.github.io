import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/utils/responsive.dart';
import 'package:ox0/core/common/widgets/loading_widget.dart';
import 'package:ox0/features/works/data/datasources/works_api_provider.dart';
import 'package:ox0/features/works/presentation/bloc/works_bloc.dart';
import 'package:ox0/features/works/presentation/pages/works_detalies/works_detailes_desktop.dart';
import 'package:ox0/features/works/presentation/pages/works_detalies/works_detailes_mobile.dart';
import 'package:ox0/features/works/presentation/pages/works_detalies/works_detailes_tablet.dart';

class WorksDetailesScreen extends StatelessWidget {
  const WorksDetailesScreen({super.key, required this.slug});

  final String slug;
  static const routeName = '/works/';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WorksBloc(
        WorksApiProvider(),
      )..add(
          FetchSingleWorkPost(slug),
        ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return BlocBuilder<WorksBloc, WorksState>(
            builder: (context, state) {
              if (state is WorksPostLoaded) {
                if (Responsive.isDesktop(context)) {
                  return WorksDetalisDesktop(postDetails: state.work);
                } else if (Responsive.isTablet(context)) {
                  return WorksDetalisTablet(postDetails: state.work);
                } else {
                  return WorksDetalisMobile(postDetails: state.work);
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
