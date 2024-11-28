import 'package:flutter/material.dart';
import 'package:ox0/features/home/presentation/pages/home_wrapper.dart';
import 'package:ox0/features/splash/presentation/pages/splash_screen.dart';
import 'package:ox0/test_screen.dart';

Map<String, WidgetBuilder> get routes {
  return {
    "/": (context) => const SplashScreen(),
    "/test-screen": (context) => const TestScreen(),
    "/home": (context) => const HomeWrapper(),
  };
}
