import 'package:flutter/material.dart';

class AppTheme {
  // Colors
  static const primaryColor = Color(0xFF323232);
  static const secondaryColor = Color(0xFF4A4A4A);
  static const accentColor = Color(0xFF64FFDA);
  static const backgroundColor = Color(0xFF0F0F0F);
  static const surfaceColor = Color(0xFF1E1E1E);
  static const errorColor = Color(0xFFCF6679);
  static const activeTextColor = Colors.white;
  static const inactiveTextColor = Color(0xFF808080);

  // Text Styles
  static const displayLarge = TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.bold,
    color: activeTextColor,
  );

  static const displayMedium = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.bold,
    color: activeTextColor,
  );

  static const titleLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: activeTextColor,
  );

  static const bodyLarge = TextStyle(
    fontSize: 16,
    color: activeTextColor,
  );

  static const navButtonActive = TextStyle(
    color: activeTextColor,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const navButtonInactive = TextStyle(
    color: inactiveTextColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final darkTheme = ThemeData(
    
    fontFamily: 'Ubuntu',
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: surfaceColor,
      error: errorColor,
    ),
    textTheme: const TextTheme(
      displayLarge: displayLarge,
      displayMedium: displayMedium,
      titleLarge: titleLarge,
      bodyLarge: bodyLarge,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: activeTextColor,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    iconTheme: const IconThemeData(
      color: activeTextColor,
      size: 24,
    ),
    cardTheme: CardTheme(
      color: surfaceColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
      elevation: 0,
    ),
    dividerTheme: const DividerThemeData(
      color: inactiveTextColor,
      thickness: 1,
    ),
  );
}
