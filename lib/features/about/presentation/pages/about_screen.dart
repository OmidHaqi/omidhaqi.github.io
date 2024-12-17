import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/utils/responsive.dart';
import 'package:ox0/features/about/data/datasources/about_api_provider.dart';
import 'package:ox0/features/about/presentation/bloc/about_bloc.dart';
import 'package:ox0/features/about/presentation/pages/about_desktop.dart';
import 'package:ox0/features/about/presentation/pages/about_mobile.dart';
import 'package:ox0/features/about/presentation/pages/about_tablet.dart';

class AboutScreen extends StatelessWidget {
  static const String routeName = '/about';
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AboutBloc(AboutApiProvider())
        ..add(
          FetchAboutItem(),
        ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (Responsive.isDesktop(context)) {
            return const AboutDesktop();
          } else if (Responsive.isTablet(context)) {
            return const AboutTablet();
          } else {
            return const AboutMobile();
          }
        },
      ),
    );
  }
}
