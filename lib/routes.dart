import 'package:flutter/material.dart';
import 'package:ox0/features/splash/presentation/pages/splash_screen.dart';
import 'package:ox0/test_screen.dart';

Map<String, WidgetBuilder> get routes {
  return {
    "/": (context) => const SplashScreen(),
    "/test-screen": (context) => const TestScreen(),
  };
}
