import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nukiveedge/firebase_options.dart';
import 'package:nukiveedge/src/ne_mobile/nem_app.dart';
import 'package:nukiveedge/src/ne_desktop/ned_app.dart';
import 'package:nukiveedge/src/unsupported_platform_entrypoint.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final crashlytics = FirebaseCrashlytics.instance;

  FlutterError.onError = crashlytics.recordFlutterFatalError;

  PlatformDispatcher.instance.onError = (error, stack) {
    crashlytics.recordError(error, stack, fatal: true);
    return true;
  };

  final orientations = [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown];

  SystemChrome.setPreferredOrientations(orientations).then(
    (_) => runApp(platformApp()),
  );
}

Widget platformApp() {
  if (kIsWeb) return const NEUnsupported();

  if (Platform.isIOS || Platform.isAndroid) return NEMobileApp();

  if (Platform.isMacOS) return NEDesktopApp();

  return const NEUnsupported();
}
