import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nukiveedge/src/shared/theme/ne_colors.dart';

class NEDarkTheme implements NETheme {
  @override
  ThemeData buildData() {
    final darkTheme = ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: NEColors.kBlack,
      textTheme: GoogleFonts.lexendTextTheme(),
      colorSchemeSeed: NEColors.kElectricCyan,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

    return darkTheme;
  }
}

class NELightTheme implements NETheme {
  @override
  ThemeData buildData() {
    final lightTheme = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: NEColors.kBlack,
      textTheme: GoogleFonts.lexendTextTheme(),
      colorSchemeSeed: NEColors.kElectricCyan,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

    return lightTheme;
  }
}

abstract class NETheme {
  ThemeData buildData();
}
