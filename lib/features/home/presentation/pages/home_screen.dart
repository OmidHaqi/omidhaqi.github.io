import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/utils/responsive.dart';
import 'package:ox0/features/home/data/datasources/home_api_provider.dart';
import 'package:ox0/features/home/presentation/bloc/home_bloc.dart';
import 'package:ox0/features/home/presentation/pages/home_desktop.dart';
import 'package:ox0/features/home/presentation/pages/home_mobile.dart';
import 'package:ox0/features/home/presentation/pages/home_tablet.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        HomeApiProvider(),
      )..add(
          FetchHomeItem(),
        ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (Responsive.isDesktop(context)) {
            return const HomeDesktop();
          } else if (Responsive.isTablet(context)) {
            return const HomeTablet();
          } else {
            return const HomeMobile();
          }
        },
      ),
    );
  }
}
