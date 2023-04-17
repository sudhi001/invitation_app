import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Color baseColor = Colors.white; // Colors.lime.shade200;
MaterialColor primary = Colors.lime;

class ThemeConfig {
  static init() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemStatusBarContrastEnforced: true,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: baseColor,
        systemNavigationBarColor: baseColor,
        systemNavigationBarDividerColor: baseColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }

  static ThemeData theme() {
    return ThemeData(
      scaffoldBackgroundColor: baseColor,
      // useMaterial3: true,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle(
            systemStatusBarContrastEnforced: true,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: baseColor,
            systemNavigationBarColor: baseColor,
            systemNavigationBarDividerColor: baseColor,
            systemNavigationBarIconBrightness: Brightness.dark,
          )),
      // colorScheme: ColorScheme.fromSwatch(primarySwatch: primary)
    );
  }
}
