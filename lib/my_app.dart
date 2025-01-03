import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ox0/core/config/app_constants.dart';
import 'package:ox0/core/config/app_theme.dart';
import 'package:ox0/features/home/presentation/pages/home_screen.dart';
import 'package:ox0/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('fa'), // Pesrian
      ],
      locale: const Locale('en'),
      title: AppConstants.appName,
      theme: AppTheme.darkTheme,
      initialRoute: HomeScreen.routeName,
      onGenerateRoute: (settings) => onGenerateRoute(settings, context),
    );
  }
}
