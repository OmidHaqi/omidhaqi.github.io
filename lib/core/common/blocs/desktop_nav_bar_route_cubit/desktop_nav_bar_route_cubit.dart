import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ox0/features/about/presentation/pages/about_screen.dart';
import 'package:ox0/features/blog/presentation/pages/blog/blog_screen.dart';
import 'package:ox0/features/contact/presentation/pages/contact_screen.dart';
import 'package:ox0/features/home/presentation/pages/home_screen.dart';
import 'package:ox0/features/works/presentation/pages/works/works_screen.dart';

class DesktopNavBarRouteCubit extends Cubit<Map<String, String>> {
  DesktopNavBarRouteCubit()
      : super({
          'currentRoute': '',
          'hoveredButton': '',
        });

  // لیست مسیرهای معتبر
  final List<String> validRoutes = [
    HomeScreen.routeName,
    AboutScreen.routeName,
    WorksScreen.routeName,
    ContactScreen.routeName,
    BlogScreen.routeName,
  ];

  // به‌روزرسانی مسیر جاری
  void updateRoute(String route) {
    emit({
      ...state,
      'currentRoute': validRoutes.contains(route) ? route : '',
    });
  }

  // به‌روزرسانی دکمه Hover
  void updateHoveredButton(String route) {
    emit({
      ...state,
      'hoveredButton': validRoutes.contains(route) ? route : '',
    });
  }

  // تنظیم مقدار اولیه
  void initializeRoute(String initialRoute) {
    // Check if the route is a detail page
    if (initialRoute.startsWith('/blogs/') || initialRoute.startsWith('/works/')) {
      emit({
        ...state,
        'currentRoute': '',
      });
    } else {
      emit({
        ...state,
        'currentRoute': validRoutes.contains(initialRoute) ? initialRoute : '',
      });
    }
  }
}
