import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/core/common/blocs/desktop_nav_bar_route_cubit/desktop_nav_bar_route_cubit.dart';
import 'package:ox0/features/about/presentation/pages/about_screen.dart';
import 'package:ox0/features/blog/presentation/pages/blog/blog_screen.dart';
import 'package:ox0/features/blog/presentation/pages/blog_detalies/blog_detalis_screen.dart';
import 'package:ox0/features/contact/presentation/pages/contact_screen.dart';
import 'package:ox0/features/home/presentation/pages/home_screen.dart';
import 'package:ox0/features/works/presentation/pages/works/works_screen.dart';
import 'package:ox0/features/404/presentation/page_not_found.dart';
import 'package:ox0/features/works/presentation/pages/works_detailes/works_detailes_screen.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings, BuildContext context) {
  final cubit = context.read<DesktopNavBarRouteCubit>();

  if (cubit.state['currentRoute'] == '') {
    cubit.initializeRoute(settings.name ?? '');
  }

  Widget page;
  switch (settings.name) {
    case HomeScreen.routeName:
      page = const HomeScreen();
      break;
    case AboutScreen.routeName:
      page = const AboutScreen();
      break;
    case WorksScreen.routeName:
      page = const WorksScreen();
      break;
    case ContactScreen.routeName:
      page = const ContactScreen();
      break;
    case BlogScreen.routeName:
      page = const BlogScreen();
      break;

    default:
      if (settings.name?.startsWith('/blogs/') == true) {
        final slug = settings.name!.split('/').last;
        cubit.updateRoute(''); // Add this line
        page = BlogDetailsScreen(slug: slug);
      } else if (settings.name?.startsWith('/works/') == true) {
        final slug = settings.name!.split('/').last;
        cubit.updateRoute(''); // Add this line
        page = WorksDetailesScreen(slug: slug);
      } else {
        cubit.updateRoute('');
        page = const PageNotFound();
      }
  }

  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (_, __, ___) => page,
    transitionsBuilder: (_, animation, __, child) {
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0.0, 0.0),
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: animation,
          curve: Curves.easeOut,
        )),
        child: child,
      );
    },
    transitionDuration: const Duration(milliseconds: 300),
  );
}
