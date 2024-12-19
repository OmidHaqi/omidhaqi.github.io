import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/utils/responsive.dart';
import 'package:ox0/features/works/data/datasources/works_api_provider.dart';
import 'package:ox0/features/works/presentation/bloc/works_bloc.dart';
import 'package:ox0/features/works/presentation/pages/works/works_desktop.dart';
import 'package:ox0/features/works/presentation/pages/works/works_mobile.dart';
import 'package:ox0/features/works/presentation/pages/works/works_tablet.dart';

class WorksScreen extends StatelessWidget {
  static const String routeName = '/works';
  const WorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WorksBloc(
        WorksApiProvider(),
      )..add(
          FetchWorksPosts(),
        ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (Responsive.isDesktop(context)) {
            return const WorksDesktop();
          } else if (Responsive.isTablet(context)) {
            return const WorksTablet();
          } else {
            return const WorksMobile();
          }
        },
      ),
    );
  }
}
