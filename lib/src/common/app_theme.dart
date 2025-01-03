import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme(
        primary: const Color(0xFF0ABAB5), // Tiffany Blue
        onPrimary: Colors.white, // Text/icons on primary color
        secondary: const Color(0xFFFF9E80), // Coral for accents
        onSecondary: Colors.white, // Text/icons on background
        surface: const Color(0xFFFFFFFF), // Cards, dialogs, etc.
        onSurface: const Color(0xFF212121), // Text/icons on surface
        error: const Color(0xFFB00020), // Standard error color
        onError: Colors.white, // Text/icons on error color
        brightness: Brightness.light, // Brightness of the theme
      ),
      scaffoldBackgroundColor:
          const Color(0xFFF8F9FA), // Matches the background color
      appBarTheme: AppBarTheme(
        backgroundColor: const Color(0xFF0ABAB5), // Use primary color
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      // Text styling
      textTheme: TextTheme(
        headlineMedium: const TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF212121),
        ),
        bodyLarge: const TextStyle(
          fontSize: 16.0,
          color: Color(0xFF212121), // Dark text for readability
        ),
        bodyMedium: const TextStyle(
          fontSize: 14.0,
          color: Color(0xFF757575), // Subtle text
        ),
        bodySmall: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
          color: Colors.white, // Ensure contrast for buttons
        ),
      ),

      // Elevated Button styling
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          foregroundColor: const Color(0xFF0ABAB5), // Tiffany Blue
          backgroundColor: Colors.white,
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // Floating Action Button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF0ABAB5), // Tiffany Blue
      ),

      // Input Decoration
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFFF8F9FA),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Color(0xFF0ABAB5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Color(0xFF0ABAB5)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Color(0xFFE5E5E5)),
        ),
      ),
    );
  }
}
