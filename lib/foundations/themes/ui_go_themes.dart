import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_go/tokens/colors.dart';

ThemeData getTheme(bool darkMode) {
  if (darkMode) {
    final darkTheme = ThemeData.dark();
    final textTheme = darkTheme.textTheme;
    const boldStyle = TextStyle(fontWeight: FontWeight.bold);
    const whiteStyle = TextStyle(color: Colors.black);
    return darkTheme.copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: UiGoColors.navy,
        elevation: 0,
      ),
      textTheme: GoogleFonts.nunitoSansTextTheme(
        textTheme.copyWith(
          titleSmall: textTheme.titleSmall?.merge(boldStyle),
          titleMedium: textTheme.titleMedium?.merge(boldStyle),
          titleLarge: textTheme.titleLarge?.merge(boldStyle),
          bodySmall: textTheme.bodySmall?.merge(whiteStyle),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: UiGoColors.blue,
        foregroundColor: Colors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: UiGoColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: UiGoColors.bGBlack,
      canvasColor: UiGoColors.bGBlack,
      switchTheme: SwitchThemeData(
        trackColor: WidgetStateProperty.all(
          Colors.lightBlue.withValues(alpha: 0.5),
        ),
        thumbColor: WidgetStateProperty.all(
          Colors.blue,
        ),
      ),
    );
  }

  final lightTheme = ThemeData.light();
  final textTheme = lightTheme.textTheme;
  const boldStyle = TextStyle(
    fontWeight: FontWeight.bold,
    color: UiGoColors.bGBlack,
  );
  const darkStyle = TextStyle(
    color: UiGoColors.bGBlack,
  );

  return lightTheme.copyWith(
    textTheme: GoogleFonts.nunitoSansTextTheme(
      textTheme.copyWith(
        titleSmall: textTheme.titleSmall?.merge(boldStyle),
        titleMedium: textTheme.titleMedium?.merge(boldStyle),
        titleLarge: textTheme.titleLarge?.merge(boldStyle),
        bodySmall: textTheme.bodySmall?.merge(darkStyle),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: UiGoColors.lightPurple,
      elevation: 0,
      iconTheme: IconThemeData(
        color: UiGoColors.bGBlack,
      ),
      titleTextStyle: TextStyle(
        color: UiGoColors.bGBlack,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: UiGoColors.blue,
      foregroundColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: UiGoColors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    tabBarTheme: const TabBarTheme(
      labelColor: UiGoColors.bGBlack,
    ),
  );
}
