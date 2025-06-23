import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nukiveedge/src/ne_mobile/core/nem_bindings.dart';
import 'package:nukiveedge/src/ne_mobile/routes/nem_routes.dart';
import 'package:nukiveedge/src/shared/constants/ne_shared_constants.dart';
import 'package:nukiveedge/src/shared/controllers/ne_theme_controller.dart';

class NEMobileApp extends StatelessWidget {
  NEMobileApp({super.key});

  final _themeController = Get.put(NEThemeController(), permanent: true, tag: NESharedConstants.kThemeControllerKey);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: _themeController.data(),
          initialBinding: NEMBindings(),
          onGenerateRoute: NEMRoutes.generateRoute,
          initialRoute: NEMRoutes.home,
        );
      },
    );
  }
}
