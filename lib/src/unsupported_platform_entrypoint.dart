import 'package:flutter/material.dart';
import 'package:nukiveedge/src/shared/theme/ne_theme.dart';

class NEUnsupported extends StatelessWidget {
  const NEUnsupported({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nukive Edge Unsupported',
      theme: NEDarkTheme().buildData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Unsupported Platform'),
        ),
        body: const Center(
          child: Text(
            'This platform is not supported by Nukive Edge AI yet!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
