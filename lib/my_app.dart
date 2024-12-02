import 'package:flutter/material.dart';
import 'package:ox0/core/config/app_constants.dart';
import 'package:ox0/core/config/app_theme.dart';
import 'package:ox0/features/splash/presentation/pages/splash_screen.dart';
import 'package:ox0/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConstants.appName,
      theme: AppTheme.darkTheme,
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
