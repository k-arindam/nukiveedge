import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nukiveedge/src/shared/theme/ne_theme.dart';

class NEThemeController extends GetxController {
  final Rx<NETheme> _currentTheme = NEDarkTheme().obs;

  ThemeData data() => _currentTheme.value.buildData();

  NETheme get currentTheme => _currentTheme.value;
  set changeTheme(NETheme theme) => _currentTheme.value = theme;
}
