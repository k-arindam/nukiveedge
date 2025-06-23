import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nukiveedge/src/ne_desktop/core/ned_bindings.dart';
import 'package:nukiveedge/src/ne_desktop/routes/ned_routes.dart';
import 'package:nukiveedge/src/shared/constants/ne_shared_constants.dart';
import 'package:nukiveedge/src/shared/controllers/ne_theme_controller.dart';

class NEDesktopApp extends StatelessWidget {
  NEDesktopApp({super.key});

  final _themeController = Get.put(NEThemeController(), permanent: true, tag: NESharedConstants.kThemeControllerKey);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: _themeController.data(),
          initialBinding: NEDBindings(),
          onGenerateRoute: NEDRoutes.generateRoute,
          initialRoute: NEDRoutes.home,
        );
      },
    );
  }
}
