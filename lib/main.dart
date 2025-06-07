import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nukiveedge/firebase_options.dart';
import 'package:nukiveedge/src/nukive_edge_lite/app.dart';
import 'package:nukiveedge/src/nukive_edge_pro/app.dart';
import 'package:nukiveedge/src/unsupported_platform_entrypoint.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final orientations = [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown];

  SystemChrome.setPreferredOrientations(orientations).then(
    (_) => runApp(platformApp()),
  );
}

Widget platformApp() {
  if (kIsWeb) return const NukiveUnsupported();

  if (Platform.isIOS || Platform.isAndroid) return const NukiveEdgeLite();

  if (Platform.isMacOS) return const NukiveEdgePro();

  return const NukiveUnsupported();
}
